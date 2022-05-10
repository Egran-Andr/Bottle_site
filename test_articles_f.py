import unittest
import articlesmod

#Тестирование дат
class CalcTest(unittest.TestCase):
    def testTrue(self):
        list_mail=["32-01-1700","","35-01-2000","01-15-2000","13-04232","01-01-3002"]

        for x in list_mail:
            self.assertFalse(articlesmod.correctdate(x))
        
if __name__ == '__main__':
    unittest.main()
