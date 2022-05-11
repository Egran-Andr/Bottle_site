import unittest, userRegistration

class Test_test_registration_T(unittest.TestCase):

    def testTrue(self):
        listLogins = ["Mielte", "Gavrilov", "BallsMaster",
                      "Andreev", "Gryphon", "Magankov"]

        listMails = ["myMail@yahoo.com", "google@mail.com", "street2022@mail.com",
                     "HardMan@gmail.com", "linux@mail.ru", "admin@rambler.ru"]

        for x in listLogins:
            self.assertTrue(userRegistration.checkInputField(x, r'[a-zA-Z0-9.-_]+'))

        for x in listMails:
            self.assertTrue(userRegistration.checkInputField(x, r'\w+\@\w+\.[a-z]+'))

if __name__ == '__main__':
    unittest.main()

