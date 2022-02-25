from utilities.db.db_manager import dbManager

# New Forms Class for interact with DB
class Forms:
    def __init__(self):
      pass

    # Login Page - Set - Registration New User
    def createUser(self, username, passwd, passwd1, email):
        if passwd == passwd1:
            query = "INSERT INTO users (fullname, password, email) VALUES ('%s','%s', '%s')" % (username, passwd, email)
            dbManager.commit(query)
            return True
        return False

    # Login Page - Check User in DB
    def checkUser (self, email, passwd):
        return dbManager.fetch(f"Select * From users WHERE email='{email}' AND password='{passwd}'")

    # Get - User Name By Email
    def getUserNameByEmail(self, mail):
        result = dbManager.fetch(f"Select fullname From users WHERE email= '{mail}'")
        username = [row[0] for row in result]
        return username[0]
        # Check Password in DB for specific user

    def checkPass(self, email, passwd, newpasswd, newpasswd1):
        if not self.checkUser(email, passwd):
            return False
        elif newpasswd == newpasswd1:
            return True

    # Set - Update new password for user
    def changePass(self, email, newpasswd):
        query = "UPDATE users SET password = '%s' WHERE email='%s'" % (newpasswd, email)
        dbManager.commit(query)
        return True

    # Delete user from DB
    def deleteUser(self, email):
        query = "DELETE FROM users WHERE email='%s'" % email
        dbManager.commit(query)
        return True

    # Set -Contact Form
    def createContact(self, firstname, lastname, phonenumber, email, msg):
        query = "INSERT INTO contact_us_submissions (firstname,lastname, phonenumber, email, massage) VALUES ('%s','%s', '%s','%s','%s')" % (
        firstname, lastname, phonenumber, email, msg)
        dbManager.commit(query)
        return True

    # Set - Open Studio Form
    def newLead (self, name, phone, email):
        query = "INSERT INTO open_studio_submissions (fullname, phone, email) VALUES ('%s','%s', '%s')" % (name, phone, email)
        dbManager.commit(query)
        return True

# Creates an instance for the forms class for export.
forms = Forms()








