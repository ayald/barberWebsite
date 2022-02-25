from flask import Blueprint, render_template, request, redirect, session, url_for
from utilities.interactdb.forms import forms
from utilities.interactdb.interact_db import interactDb
from utilities.interactdb.Emails import emails

# login blueprint definition
login = Blueprint('login', __name__, static_folder='static', static_url_path='/login', template_folder='templates')
login.secret_key = "123436"

# Routes
@login.route('/login', methods=['GET','POST'])
def index():
    session['login'] = False
    if request.method == 'POST':
        email = request.form['email']
        passwd = request.form['pass']
        if not forms.checkUser(email,passwd):
            massage = 'אחד מהפרטים שהכנסת שגוי'
            return render_template('login.html', massage=massage)
        userName = forms.getUserNameByEmail(email)
        print(userName)
        session['login'] = True
        session['name'] = userName
        print(session.get('name'))
        session['email'] = email
        return redirect('/')
    return render_template('login.html')

@login.route('/newuser', methods=['GET','POST'])
def newuser():
    if request.method == 'POST':
        username = request.form['user']
        passwd = request.form['pass']
        passwd1 = request.form['pass1']
        email = request.form['email']
        if forms.createUser(username, passwd, passwd1, email) == 1:
            emails.ThanksSignUp(username, email)
            massage = 'הרשמה בוצעה בהצלחה!'
            return render_template('/login.html', massage=massage)
        success=False
    return render_template('/login.html', success=success)





