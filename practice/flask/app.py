from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    #return render_template("base.html", title="Jinja and Flask")
    return render_template("tb.html", title="Welcome to TwitterBootstrap")

# def hello_world():
    # return "<p>Hello, World!</p>"

if __name__ == "__main__":
    app.run(debug=True)
