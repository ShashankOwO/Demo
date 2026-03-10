package com.example.resume2interview.ui.widget

import android.animation.ValueAnimator
import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.view.HapticFeedbackConstants
import android.view.MotionEvent
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.core.content.ContextCompat
import com.example.resume2interview.R
import kotlin.math.*

/**
 * PremiumBottomNavView — Dribbble-quality bottom navigation bar.
 *
 * Draws everything on Canvas with:
 *  - Spring-physics floating bubble that glides horizontally
 *  - Liquid notch morph under the bubble
 *  - Per-icon scale bounce
 *  - Soft glow behind active bubble
 *  - Ripple pulse on tap
 */
class PremiumBottomNavView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    // ── Public API ────────────────────────────────────────────────────────────
    data class NavItem(val iconRes: Int, val label: String)

    var items: List<NavItem> = emptyList()
        set(value) { field = value; invalidate() }

    var selectedIndex: Int = 0
        private set

    var onTabSelected: ((index: Int) -> Unit)? = null

    fun selectTab(index: Int, animate: Boolean = true) {
        if (index == selectedIndex && resting) return
        selectedIndex = index
        if (animate) springBubbleTo(index) else bubbleX = tabCenterX(index)
        invalidate()
    }

    // ── Drawing state ─────────────────────────────────────────────────────────
    private val barPaint    = Paint(Paint.ANTI_ALIAS_FLAG)
    private val bubblePaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val glowPaint   = Paint(Paint.ANTI_ALIAS_FLAG)
    private val ripplePaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val iconPaint   = Paint(Paint.ANTI_ALIAS_FLAG)
    private val labelPaint  = Paint(Paint.ANTI_ALIAS_FLAG)
    private val barPath     = Path()

    // Accent colour — vibrant indigo
    private val accentColor  = Color.parseColor("#5B5FEE")
    private val barColor     = Color.parseColor("#FFFFFF")
    private val inactiveColor= Color.parseColor("#9CA3AF")
    private val cornerRadius = dp(18f)
    private val bubbleRadius = dp(26f)

    // ── Physics / animation ────────────────────────────────────────────────────
    private var bubbleX     = 0f   // current bubble X centre
    private var bubbleY     = 0f   // constant Y
    private var targetX     = 0f
    private var velocity    = 0f   // pseudo-spring velocity
    private var resting     = true

    private val iconScales  = FloatArray(8) { 1f }
    private var rippleX     = 0f
    private var rippleY     = 0f
    private var rippleRadius= 0f
    private var rippleAlpha = 0f

    private val springK     = 280f  // spring stiffness
    private val springDamp  = 18f   // damping
    private var lastFrameMs = 0L
    private val choreographer = android.view.Choreographer.getInstance()
    private val frameCallback = object : android.view.Choreographer.FrameCallback {
        override fun doFrame(frameTimeNanos: Long) {
            val now = frameTimeNanos / 1_000_000L
            val dt  = ((now - lastFrameMs).coerceIn(1, 64)) / 1000f
            lastFrameMs = now
            stepSpring(dt)
            invalidate()
            if (!resting || rippleAlpha > 0f) {
                choreographer.postFrameCallback(this)
            }
        }
    }

    // ── Cached drawables ───────────────────────────────────────────────────────
    private val drawnBitmaps = mutableMapOf<Int, Bitmap>()

    init {
        elevation = dp(8f)
        setLayerType(LAYER_TYPE_HARDWARE, null)
    }

    // ── Layout ────────────────────────────────────────────────────────────────
    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        bubbleY = dp(6f)   // bubble sits 6dp above top of bar
        if (items.isNotEmpty()) {
            bubbleX = tabCenterX(selectedIndex)
            targetX = bubbleX
        }
    }

    private fun tabCenterX(idx: Int): Float {
        if (items.isEmpty()) return width / 2f
        val tabW = width.toFloat() / items.size
        return tabW * idx + tabW / 2f
    }

    // ── Spring physics ────────────────────────────────────────────────────────
    private fun springBubbleTo(idx: Int) {
        targetX = tabCenterX(idx)
        resting = false
        lastFrameMs = System.currentTimeMillis()
        choreographer.postFrameCallback(frameCallback)
        // Bounce the target icon scale
        animateIconScale(idx)
    }

    private fun stepSpring(dt: Float) {
        val dx     = targetX - bubbleX
        val accel  = springK * dx - springDamp * velocity
        velocity  += accel * dt
        bubbleX   += velocity * dt

        // Ripple decay
        if (rippleAlpha > 0f) {
            rippleAlpha -= dt * 2.4f
            rippleRadius += dt * dp(60f)
            if (rippleAlpha < 0f) rippleAlpha = 0f
        }

        resting = abs(dx) < 0.4f && abs(velocity) < 0.4f
        if (resting) { bubbleX = targetX; velocity = 0f }
    }

    private fun animateIconScale(idx: Int) {
        ValueAnimator.ofFloat(1f, 0.75f, 1.18f, 1f).apply {
            duration = 360
            interpolator = DecelerateInterpolator(1.5f)
            addUpdateListener {
                iconScales[idx] = it.animatedValue as Float
                invalidate()
            }
        }.start()
    }

    private fun startRipple(x: Float, y: Float) {
        rippleX = x; rippleY = y
        rippleRadius = dp(4f)
        rippleAlpha  = 0.35f
        choreographer.postFrameCallback(frameCallback)
    }

    // ── Draw ──────────────────────────────────────────────────────────────────
    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val w = width.toFloat(); val h = height.toFloat()
        val topY = bubbleRadius           // bar starts below bubble apex

        // 1. Bar background with liquid notch
        drawBarWithNotch(canvas, w, h, topY)

        // 2. Glow behind bubble
        glowPaint.shader = RadialGradient(
            bubbleX, topY + bubbleRadius / 2,
            bubbleRadius * 1.5f,
            intArrayOf(Color.argb(90, 91, 95, 238), Color.TRANSPARENT),
            null, Shader.TileMode.CLAMP
        )
        canvas.drawCircle(bubbleX, topY, bubbleRadius * 1.5f, glowPaint)

        // 3. Bubble
        bubblePaint.color = accentColor
        bubblePaint.setShadowLayer(dp(6f), 0f, dp(3f), Color.argb(60, 91, 95, 238))
        canvas.drawCircle(bubbleX, topY, bubbleRadius, bubblePaint)

        // 4. Ripple
        if (rippleAlpha > 0f) {
            ripplePaint.color = Color.argb((rippleAlpha * 255).toInt(), 91, 95, 238)
            canvas.drawCircle(rippleX, rippleY, rippleRadius, ripplePaint)
        }

        // 5. Icons + labels
        if (items.isEmpty()) return
        val tabW = w / items.size
        items.forEachIndexed { idx, item ->
            val cx   = tabCenterX(idx)
            val isActive = idx == selectedIndex
            val scale = if (isActive) iconScales[idx] else 1f

            // Is this icon inside the bubble?
            val insideBubble = abs(cx - bubbleX) < bubbleRadius * 0.8f

            canvas.save()
            canvas.scale(scale, scale, cx, topY)

            // Icon
            val bmp = getIconBitmap(item.iconRes, dp(22f).toInt(),
                if (insideBubble) Color.WHITE else inactiveColor)
            canvas.drawBitmap(bmp, cx - bmp.width / 2f, topY - bmp.height / 2f, iconPaint)
            canvas.restore()

            // Label (only for inactive tabs)
            if (!isActive || !insideBubble) {
                labelPaint.color    = inactiveColor
                labelPaint.textSize = dp(10f)
                labelPaint.typeface = Typeface.DEFAULT_BOLD
                labelPaint.textAlign= Paint.Align.CENTER
                canvas.drawText(item.label, cx, h - dp(6f), labelPaint)
            }
        }
    }

    private fun drawBarWithNotch(canvas: Canvas, w: Float, h: Float, topY: Float) {
        barPath.reset()
        val left = 0f; val right = w; val bottom = h

        val notchW  = bubbleRadius * 1.6f
        val notchD  = bubbleRadius * 0.5f   // depth of the notch dip
        val bx      = bubbleX

        barPaint.color = barColor
        barPaint.setShadowLayer(dp(10f), 0f, -dp(2f), Color.argb(30, 0, 0, 0))

        barPath.moveTo(left, topY + cornerRadius)
        barPath.quadTo(left, topY, left + cornerRadius, topY)
        barPath.lineTo(bx - notchW, topY)
        // Smooth dip into the notch using cubics
        barPath.cubicTo(
            bx - notchW * 0.6f, topY,
            bx - notchW * 0.3f, topY + notchD,
            bx, topY + notchD
        )
        barPath.cubicTo(
            bx + notchW * 0.3f, topY + notchD,
            bx + notchW * 0.6f, topY,
            bx + notchW, topY
        )
        barPath.lineTo(right - cornerRadius, topY)
        barPath.quadTo(right, topY, right, topY + cornerRadius)
        barPath.lineTo(right, bottom)
        barPath.lineTo(left, bottom)
        barPath.close()

        canvas.drawPath(barPath, barPaint)
    }

    // ── Touch ─────────────────────────────────────────────────────────────────
    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (event.action == MotionEvent.ACTION_UP) {
            val idx = ((event.x / width) * items.size).toInt().coerceIn(0, items.size - 1)
            performHapticFeedback(HapticFeedbackConstants.VIRTUAL_KEY)
            startRipple(tabCenterX(idx), bubbleY)
            if (idx != selectedIndex) {
                selectedIndex = idx
                springBubbleTo(idx)
                onTabSelected?.invoke(idx)
            }
        }
        return true
    }

    // ── Helpers ───────────────────────────────────────────────────────────────
    private fun dp(dpVal: Float) = dpVal * resources.displayMetrics.density

    private fun getIconBitmap(resId: Int, sizePx: Int, tintColor: Int): Bitmap {
        val key = resId * 31 + tintColor
        return drawnBitmaps.getOrPut(key) {
            val drawable = ContextCompat.getDrawable(context, resId)!!.mutate()
            drawable.setTint(tintColor)
            val bmp = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888)
            val c = Canvas(bmp)
            drawable.setBounds(0, 0, sizePx, sizePx)
            drawable.draw(c)
            bmp
        }
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        val h = (dp(72f) + bubbleRadius).toInt()
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(h, MeasureSpec.EXACTLY))
    }
}
