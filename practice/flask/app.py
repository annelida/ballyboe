from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    #return render_template("base.html", title="Jinja and Flask")
    return render_template('index.html', title='Welcome to TwitterBootstrap')

@app.route('/scaffolding')
def scaffolding():
    return render_template('scaffolding.html', title='Scaffolding')

@app.route('/base-css')
def base():
    return render_template('base-css.html', title='Base-Twitter Bootstrap')

@app.route('/components')
def components():
    return render_template('components.html', title='Components')

@app.route('/javascript')
def javascript():
    return render_template('javascript.html', title='Javascript-Twitter Bootstrap')
if __name__ == "__main__":
    app.run(debug=True)
