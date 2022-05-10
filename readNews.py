from bottle import post, request
from bottle import redirect
import re
import pdb
import json

#Функция проверки длины для полей автора и заголовка
def checkLength(author, header):
    if len(author) <= 18 and len(header) <=137:
        return True
    else:
        return False
#Функция проверки ссылки
def checkURL(url):
    regex = r'http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+'
    if re.fullmatch(regex, url):
        return True
    else:
        return False

@post('/buttonNews')

def my_form():
    out:list=[]

    header=request.params.HEADER
    author = request.params.AUTHOR
    date = request.params.DATE
    image = request.params.IMAGE
    link = request.params.LINK
    news = [header, author, date, link, image]

    if (checkURL(link) != False or checkURL(image) != False):
        try:
            with open ('news.json', "r") as file:
                out=json.load(file)
        except:
            print("Error")
        out.append(news)
        
        with open('news.json', "w") as file:
            json.dump(out,file,indent=4, ensure_ascii=False)
    return redirect("/news")