from flask import Blueprint, render_template

# Products blueprint definition
products = Blueprint('products', __name__, static_folder='static', static_url_path='/products', template_folder='templates')


# Routes
@products.route('/products')
def index():
    return render_template('products.html')
