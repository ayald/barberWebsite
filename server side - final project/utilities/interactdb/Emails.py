from app import mail
from flask_mail import Mail, Message

# New Class for interact with DB
class Emails:
    def __init__(self):
      pass

    # New Lead from contact us page
    def sendMail1(self, firstname, lastname, phonenumber, msg):
        subject = 'ירין ששון - פנייה חדשה התקבלה מהאתר'
        message = Message(subject, sender="yarinsasson90@gmail.com", recipients=['yarinsasson90@gmail.com'])
        message.body = "שם מלא: " + firstname + " " + lastname + " | " + "טלפון: " + phonenumber + " | " + "הודעה: " + msg
        mail.send(message)

    def sendUserMail1(self,name, email, msg):
        subject = 'ירין ששון - פנייתך התקבלה בהצלחה!' + name
        message = Message(subject, sender="yarinsasson90@gmail.com", recipients=[email])
        message.body = msg
        mail.send(message)

    # New Lead from open studio page
    def sendMail(self, firstname, phonenumber, email):
        subject = 'השתלמויות - מתעניין חדש!'
        message = Message(subject, sender="yarinsasson90@gmail.com", recipients=['yarinsasson90@gmail.com'])
        message.body = "שם: " + firstname + " | " + "טלפון: " + phonenumber + " | " + "מייל: " + email
        mail.send(message)

    def sendUserMail(self,name, email):
        subject = 'ירין ששון - היי הרשמה ראשונית להשתלמויות!'
        message = Message(subject, sender="yarinsasson90@gmail.com", recipients=[email])
        message.body ='היי ' + name + ' ' + 'תודה על הרשמתך! נחזור אליך בהקדם, להמשך התהליך'
        mail.send(message)

    # Send Mail after new registration
    def ThanksSignUp(self, username, email):
        subject = 'ירין ששון - ברוך הבא!'
        message = Message(subject, sender="yarinsasson90@gmail.com", recipients=[email])
        message.body = 'היי ' + username + ' ' + 'תודה על הרשמתך וברוך הבא לאתר!'
        mail.send(message)



# Creates an instance for the Emails class for export.
emails = Emails()