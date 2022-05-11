import unittest
import readNews

class Test_test_length(unittest.TestCase):
    def test_A(self):
        #Список наборов [Заголовок, текст] данных для проверки на длину 
        list_data = [["TitleTitleTitleTitle", "Some text"],
                    ["TitleTitleTitle", "fffSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeText"]]
        #Проверка элементов каждого набора на длину
        for x in list_data:
            print(x[0] + " " + x[1] + "\n")
            self.assertFalse(readNews.checkLength(x[0], x[1]))

if __name__ == '__main__':
    unittest.main()
