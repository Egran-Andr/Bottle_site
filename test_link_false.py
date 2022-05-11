import unittest
import articlesmod

class Test_test_link_false(unittest.TestCase):
     def testfalse(self):
        list_url = ["web://dev-gang.ru/article/kak-poluczit-tekusczuu-datu-i-vremja-v-python-xaproxg292/", "",
                "http2s:/www.nordstar.ru/local/templates/nordstar2020/img/Header/logo.svg", "htt2p://localhost:59783<>Mem", "vk.ru",
                "1234123", "Hyperlink"]
        for x in list_url:
            self.assertFalse(articlesmod.checklink(x))

if __name__ == '__main__':
    unittest.main()
