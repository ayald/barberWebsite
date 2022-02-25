from flask import Blueprint, render_template

# main_menu blueprint definition
header_slider = Blueprint('header_slider', __name__, static_folder='static', static_url_path='/header_slider', template_folder='templates')
