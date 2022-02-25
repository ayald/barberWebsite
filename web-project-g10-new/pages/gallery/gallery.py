from flask import Blueprint, render_template
from utilities.db import db_manager
# gallery blueprint definition
gallery = Blueprint('gallery', __name__, static_folder='static', static_url_path='/gallery', template_folder='templates')


# Routes
@gallery.route('/gallery')
def index():
    print('debug')
    return render_template('gallery.html')
