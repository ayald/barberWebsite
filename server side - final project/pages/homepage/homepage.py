from flask import Blueprint, render_template, redirect, url_for, session
from utilities.interactdb.interact_db import interactDB

# homepage blueprint definition
homepage = Blueprint('homepage', __name__, static_folder='static', static_url_path='/homepage', template_folder='templates')

# Routes
@homepage.route('/')
def index():
    recommends = interactDB.getRecommends()
    return render_template('homepage.html', recommends=recommends)

@homepage.route('/homepage')
@homepage.route('/home')
def redirect_homepage():
    return redirect(url_for('homepage.index'))

@homepage.route('/exit')
def out():
    session['login'] = False
    return redirect('/')
