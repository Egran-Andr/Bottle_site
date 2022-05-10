import unittest
import readNews

class Test_test_link_t(unittest.TestCase):
    def testTrue(self):
        list_url = ["https://dev-gang.ru/article/kak-poluczit-tekusczuu-datu-i-vremja-v-python-xaproxg292/", "https://avatars.mds.yandex.net/get-direct/2112407/1CWuLSNpCmfZfp1oyOWGkg/x90",
                "https://www.nordstar.ru/local/templates/nordstar2020/img/Header/logo.svg"]
        for x in list_url:
            print(x);
            self.assertTrue(readNews.checkURL(x))

if __name__ == '__main__':
    unittest.main()