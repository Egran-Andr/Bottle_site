import unittest
import articlesmod

class CalcTest(unittest.TestCase):

    def testTrue(self):
        list_mail=["11-06-2005","11-06-2003","05-05-1999","06-03-2020"]

        for x in list_mail:
            self.assertTrue(articlesmod.сorrectdate(x))
        
        
if __name__ == '__main__':
    unittest.main()