from flask import Flask


###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

###### Pages
## Homepage
from pages.homepage.homepage import homepage
app.register_blueprint(homepage)

## About
from pages.about.about import about
app.register_blueprint(about)

## Application
from pages.Application.Application import Application
app.register_blueprint(Application)

## Gallery
from pages.gallery.gallery import gallery
app.register_blueprint(gallery)

## Contact
from pages.contact.contact import contact
app.register_blueprint(contact)

## Login and Regisation
from  pages.login.login import login
app.register_blueprint(login)

## Open Studio
from  pages.openstudio.openstudio import openstudio
app.register_blueprint(openstudio)

## Products
from  pages.products.products import products
app.register_blueprint(products)




###### Components
## Main menu
from components.main_menu.main_menu import main_menu
app.register_blueprint(main_menu)

## Header Slider
from components.header_slider.header_slider import header_slider
app.register_blueprint(header_slider)

## Footer
from components.footer.footer import footer
app.register_blueprint(footer)
