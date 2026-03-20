import sqlalchemy

urls = [
    "mysql+mysqldb://root:@127.0.0.1:3306/resume2interview",
    "mysql+pymysql://root:@127.0.0.1:3306/resume2interview",
    "mysql+mysqldb://root:@127.0.0.1:3307/resume2interview",
    "mysql+pymysql://root:@127.0.0.1:3307/resume2interview"
]

for url in urls:
    try:
        engine = sqlalchemy.create_engine(url, connect_args={'connect_timeout': 3})
        with engine.connect() as conn:
            print(f"SUCCESS: {url}")
            break
    except Exception as e:
        print(f"FAILED: {url} - {str(e)[:100]}...")
