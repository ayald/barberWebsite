from flask import Blueprint, render_template,request, redirect
from utilities.interactdb.forms import forms
from utilities.interactdb.Emails import emails
# contact blueprint definition
contact = Blueprint('contact', __name__, static_folder='static', static_url_path='/contact', template_folder='templates')



# Routes
@contact.route('/contact')
def index():
    return render_template('contact.html')


@contact.route('/send_message', methods=['GET','POST'])
def send_message():
    if request.method == 'POST':
        firstname = request.form['firstname']
        lastname = request.form['lastname']
        phone = request.form['phonenumber']
        email = request.form['email']
        msg = request.form['msg']
        forms.createContact(firstname, lastname, phone, email, msg)
        emails.sendUserMail1(firstname, email, msg)
        emails.sendMail1(firstname,lastname, phone, msg)
        success ='פנייתך התקבלה בהצלחה!'
        return render_template("contact.html", success=success)
    return redirect('/contact')



