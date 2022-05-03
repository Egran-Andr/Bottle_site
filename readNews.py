from bottle import post, request
import re
import pdb
import json

@post('/button')
def checkLength(author, header):
    if len(author) <= 18 and len(header) <=137:
        return True
    else:
        return False
def my_form():
    out:list=[]
    header=request.params.HEADER
    author = request.params.AUTHOR
    date = request.params.DATE
    image = request.params.IMAGE
    link = request.params.LINK
    news = [header, author, date, link, image]
    try:
        with open ('news.json', "r", encoding='utf-8') as file:
            out=json.load(file)
    except:
        print("clown")
    out.append(news)
        
    with open('news.json', "w") as file:
        json.dump(out,file,indent=4)
    return "Новость была добавлена"