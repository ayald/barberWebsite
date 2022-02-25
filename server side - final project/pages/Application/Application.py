from flask import Blueprint, render_template

# Application blueprint definition
Application = Blueprint('Application', __name__, static_folder='static', static_url_path='/Application', template_folder='templates')


# Routes
@Application.route('/Application')
def index():
    return render_template('Application.html')
