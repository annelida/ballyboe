from flask import Flask, request, render_template
import logging

app = Flask(__name__)

# Configure logging
logging.basicConfig(
    filename='app.log',
    level=logging.DEBUG,
    format='%(asctime)s %(levelname)s: %(message)s [in %(pathname)s:%(lineno)d]'
)

@app.route('/')
def home():
    app.logger.debug('Debug message: Home page accessed')
    app.logger.info('Info message: Home page accessed')
    return render_template('index.html')

@app.route('/greet', methods=['POST'])
def greet():
    name = request.form.get('name')
    app.logger.debug(f'Debug message: Greeting {name}')
    app.logger.info(f'Info message: Greeting {name}')
    return f"Hello, {name}!"

if __name__ == '__main__':
     app.run(debug=True)
