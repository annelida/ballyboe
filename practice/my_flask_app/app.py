import sqlite3
from flask import Flask, render_template

app = Flask(__name__)

def get_db_connection():
    conn = sqlite3.connect("/home/vikky/Downloads/scraped.db")
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def home():
    conn = get_db_connection()
    items = conn.execute('SELECT name, sku, manufacturer FROM products LIMIT 10').fetchall()
    conn.close()
    return render_template('index.html', title='My Flask App', items=items)


if __name__ == '__main__':
    app.run(debug=True)
