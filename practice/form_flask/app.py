from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/')
def home():
     return render_template('index.html')

@app.route('/greet', methods=['POST'])
def greet():
    name = request.form.get('name')
    return f"Hello, {name}!"

if __name__ == '__main__':
     app.run(debug=True)
