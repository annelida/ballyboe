from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    #return render_template("base.html", title="Jinja and Flask")
    return render_template('index.html', title='Welcome to TwitterBootstrap', active_page='home')

@app.route('/scaffolding')
def scaffolding():
    return render_template('scaffolding.html', title='Scaffolding', active_page='scaffolding')

@app.route('/base-css')
def base():
    return render_template('base-css.html', title='Base-Twitter Bootstrap', active_page='base')

@app.route('/components')
def components():
    return render_template('components.html', title='Components', active_page='components')

@app.route('/javascript')
def javascript():
    return render_template('javascript.html', title='Javascript-Twitter Bootstrap', active_page='javascript')

@app.route('/less')
def less():
    return render_template('less.html', title='Less-Twitter Bootstrap', active_page='less')

@app.route('/download')
def download():
    return render_template('download.html', title='Download-Twitter Bootstrap', active_page='download')

@app.route('/examples')
def examples():
    return render_template('examples.html', title='Examples-Twitter Bootstrap', active_page='examples')

if __name__ == "__main__":
    app.run(debug=True)
