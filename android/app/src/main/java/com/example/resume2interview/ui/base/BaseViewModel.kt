package com.example.resume2interview.ui.base

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.resume2interview.utils.UiState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

abstract class BaseViewModel<T> : ViewModel() {

    private val _uiState = MutableStateFlow<UiState<T>>(UiState.Loading)
    val uiState: StateFlow<UiState<T>> = _uiState.asStateFlow()

    /** True once the first successful data load has completed. */
    private var hasData = false

    protected fun setState(state: UiState<T>) {
        if (state is UiState.Success) hasData = true
        _uiState.value = state
    }

    protected fun updateState(update: (T) -> T) {
        val currentState = uiState.value
        if (currentState is UiState.Success) {
            setState(UiState.Success(update(currentState.data)))
        }
    }

    /**
     * Runs [block] to load data.
     * Only emits Loading on the very first call; subsequent calls keep showing
     * the current data while refreshing silently (no empty-state flash).
     */
    protected fun launchDataLoad(block: suspend () -> T) {
        viewModelScope.launch {
            if (!hasData) setState(UiState.Loading)
            try {
                val result = block()
                setState(UiState.Success(result))
            } catch (e: Exception) {
                setState(UiState.Error(e.message ?: "Unknown Error"))
            }
        }
    }
}
