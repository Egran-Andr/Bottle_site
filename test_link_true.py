import unittest
import articlesmod

class Test_test_link_true(unittest.TestCase):
    def testTrue(self):
        list_url = ["https://dev-gang.ru/article/kak-poluczit-tekusczuu-datu-i-vremja-v-python-xaproxg292/", "https://avatars.mds.yandex.net/get-direct/2112407/1CWuLSNpCmfZfp1oyOWGkg/x90",
                "https://www.nordstar.ru/local/templates/nordstar2020/img/Header/logo.svg", "http://localhost:59783/newsAdd", "https://www.nordstar.ru/about/news/2051/",
                "https://avatars.mds.yandex.net/i?id=720618eb13e2ff14c841794268c1fdf3-5576459-images-thumbs&n=13", "https://arcreview.esri-cis.ru/wp-content/uploads/2006/03/file-1-Pic8.jpg"]
        for x in list_url:
            self.assertTrue(articlesmod.checklink(x))

if __name__ == '__main__':
    unittest.main()
