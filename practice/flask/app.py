from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    #return render_template("base.html", title="Jinja and Flask")
    return render_template("index.html", title="Welcome to TwitterBootstrap")


@app.route("/scaffolding/")
def scaffolding():
    return render_template("scaffolding.html", title="Scaffolding")

if __name__ == "__main__":
    app.run(debug=True)
