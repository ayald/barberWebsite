from flask import Blueprint, render_template, request, redirect
from utilities.interactdb.forms import forms
from utilities.interactdb.Emails import emails
# openstudio blueprint definition
openstudio = Blueprint('openstudio', __name__, static_folder='static', static_url_path='/openstudio', template_folder='templates')


# Routes
@openstudio.route('/openstudio')
def index():
    return render_template('openstudio.html')


@openstudio.route('/newlead', methods =['GET','POST'])
def createnewLead():
    if request.method == 'GET':
        name = request.args['fullname']
        phone = request.args['phone']
        email = request.args['email']
        forms.newLead(name, phone, email)
        emails.sendMail(name, phone, email)
        emails.sendUserMail(name, email)
        success= 'פנייתך התקבלה בהצלחה!'
        return render_template('openstudio.html', success=success)
    return redirect('/openstudio')