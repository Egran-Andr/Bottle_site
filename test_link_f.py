import unittest
import readNews

class Test_test_link_t(unittest.TestCase):
    def testTrue(self):
        #Список ссылок
        list_url = ["htttps://dev-gang.ru/article/kak-poluczit-tekusczuu-datu-i-vremja-v-python-xaproxg292/", "https:avatars.mds.yandex.net/get-direct/2112407/1CWuLSNpCmfZfp1oyOWGkg/x90",
                "https:/www.nordstar.ru/local/templates/nordstar2020/img/Header/logo.svg", "http//localhost:59783/newsAdd", "htts://www.nordstar.ru/about/news/2051/",
                "://avatars.mds.yandex.net/i?id=720618eb13e2ff14c841794268c1fdf3-5576459-images-thumbs&n=13", "htps://arcreview.esri-cis.ru/wp-content/uploads/2006/03/file-1-Pic8.jpg"]
        #Проверка каждой ссылки в списке
        for x in list_url:
            print(x);
            self.assertFalse(readNews.checkURL(x))

if __name__ == '__main__':
    unittest.main()