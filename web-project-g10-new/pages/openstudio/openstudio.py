from flask import Blueprint, render_template

# openstudio blueprint definition
openstudio = Blueprint('openstudio', __name__, static_folder='static', static_url_path='/openstudio', template_folder='templates')


# Routes
@openstudio.route('/openstudio')
def index():
    return render_template('openstudio.html')
