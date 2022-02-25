from flask import Blueprint, render_template, request
from utilities.db.db_manager import dbManager
# login blueprint definition
login = Blueprint('login', __name__, static_folder='static', static_url_path='/login', template_folder='templates')


# Routes
@login.route('/login')
def index():
    return render_template('login.html')

@login.route('/newuser')
def newuser():
    username = request.form['user']
    passwd = request.form['pass']
    passwd1 = request.form['pass1']
    email = request.form['email']
    if passwd == passwd1:
        dbManager.commit("INSERT INTO USERS (fullname, password, email) VALUES ('%s','%s', '%s')" % (username, passwd, email))
        return render_template('/login.html')
    return render_template('/login.html' )




