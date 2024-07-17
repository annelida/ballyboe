from flask import Flask, session, redirect, url_for, request

app = Flask(__name__)
app.secret_key = 'supersecretkey'  # Secret key used to sign session cookies

@app.route('/')
def index():
    if 'username' in session:
        username = session['username']
        return f'Logged in as {username} <br><a href="/logout">Logout</a>'
    return 'You are not logged in <br><a href="/login">Login</a>'

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        session['username'] = request.form['username']
        return redirect(url_for('index'))
    return '''
        <form method="post">
            <p><input type=text name=username>
            <p><button type=submit>Login</button>
        </form>
    '''

@app.route('/logout')
def logout():
    session.pop('username', None)
    return redirect(url_for('index'))

if __name__ == '__main__':
      app.run(debug=True)
    
  
