from utilities.db.db_manager import dbManager

# New Class for interact with DB
class interactDB:
    def __init__(self):
      pass

    # Get - Gallery images src
    def getImges(self):
        query = "Select * From gallery"
        return dbManager.fetch(query)

    # Get - All recommends
    @staticmethod
    def getRecommends():
        query = "Select * From recommends"
        return dbManager.fetch(query)

    # Get - All products details
    def getProducts(self):
        products_query = "Select * From product"
        return dbManager.fetch(products_query)

# Creates an instance for the interactDB class for export.
interactDb = interactDB()