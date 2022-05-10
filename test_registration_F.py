import unittest, userRegistration

class Test_test_registration_F(unittest.TestCase):

    def testFalse(self):
        listLogins = ["$ledge", "777%NEXT", "My@the№Best",
                      "%Manife$t%", "_$TALKER_","KIT*_*KIT"]

        listMails = ["&...%testMail@mail.co.m", "not@......", "MyMail$$$@mail@com",
                     "*****@*****.*", "5+5=10@yahoo.com", "StarCraftTop@rambler"]

        for x in listLogins:
            self.assertFalse(userRegistration.checkInputField(x, r'[a-zA-Z0-9.-_]+'))

        for x in listMails:
            self.assertFalse(userRegistration.checkInputField(x, r'\w+\@\w+\.[a-z]+'))

if __name__ == '__main__':
    unittest.main()

