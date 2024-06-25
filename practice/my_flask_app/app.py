from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

@app.route('/')
def display_items():
    conn = sqlite3.connect('/home/vikky/Downloads/scraped.db')
    cursor = conn.cursor()

    cursor.execute("SELECT name, sku, manufacturer FROM products LIMIT 12")
    results = cursor.fetchall()

    conn.close()

    return render_template('index.html', title='My Flask app', items=results)

if __name__ == '__main__':
    app.run(debug=True)


