import unittest
import readNews

class Test_test_length(unittest.TestCase):
    def test_A(self):
        list_data = [["Author1", "Some text"], ["AuthorAuthorAuthor", "Some text"], ["Author","SomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeText"],
                    ["AuthorAuthorAuthor", "SomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeTextSomeText"]]
        for x in list_data:
            print(x[0] + " " + x[1] + "\n")
            self.assertTrue(readNews.checkLength(x[0], x[1]))

if __name__ == '__main__':
    unittest.main()
