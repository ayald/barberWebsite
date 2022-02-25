from flask import Blueprint, render_template, redirect,request, session
from utilities.interactdb.forms import forms

# Private Area blueprint definition
privateArea = Blueprint('privateArea', __name__, static_folder='static', static_url_path='/privateArea', template_folder='templates')


# Routes
@privateArea.route('/privateArea', methods=['GET','POST'])
def index():
    userEmail = session.get('email')
    userName = session.get('name')

    # Change Password for connect user
    if request.method == 'POST':
        passwd = request.form['pass']
        newpasswd = request.form['new-pass']
        newpasswd1 = request.form['new-pass1']
        if forms.checkPass(userEmail,passwd,newpasswd,newpasswd1):
            forms.changePass(userEmail,newpasswd)
            massage = 'הסיסמא עודכנה במערכת בהצלחה!'
            return render_template('privateArea.html', userName=userName, userEmail=userEmail, massage=massage)
        else:
            massage = 'אחד מהפרטים שהכנסת שגוי'
            return render_template('privateArea.html', userName=userName, userEmail=userEmail, massage=massage)

    # return for get request
    return render_template('privateArea.html',userName=userName, userEmail=userEmail)

@privateArea.route('/delete-user', methods=['GET','POST'])
def deleteuser():
    userEmail = session.get('email')
    if request.form['delete-text'] == userEmail:
        forms.deleteUser(userEmail)
        session['login'] = False
        massage = 'המשתמש שלך נמחק מהמערכת!'
        return render_template('login.html', massage=massage)
    massage = 'המייל לא תואם'
    return render_template('privateArea.html', massage=massage)





