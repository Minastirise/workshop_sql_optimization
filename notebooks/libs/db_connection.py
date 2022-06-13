import psycopg2
from psycopg2 import extras

def select_data_dict_with_commit(sql, data: dict):
    """
    Запрос данных из БД
    """
    cur = None
    conn = None
    try:
        conn = psycopg2.connect(host='db',
                                port=5432,
                                database='test',
                                user='postgres',
                                password='password',
                                options=f'-csearch_path=public',
                                cursor_factory=extras.RealDictCursor)

        cur = conn.cursor()

        cur.execute(sql, data)
        conn.commit()
        return cur.fetchall()

    except Exception as exc:
        raise exc

    finally:
        if cur:
            cur.close()

        if conn:
            conn.close()

def execute(sql):
    """
    Выполнение запроса без возврата данных
    """
    cur = None
    conn = None
    try:
        conn = psycopg2.connect(host='db',
                                port=5432,
                                database='test',
                                user='postgres',
                                password='password',
                                options=f'-csearch_path=public',
                                cursor_factory=extras.RealDictCursor)

        cur = conn.cursor()

        cur.execute(sql)
        conn.commit()

    except Exception as exc:
        raise exc

    finally:
        if cur:
            cur.close()

        if conn:
            conn.close()