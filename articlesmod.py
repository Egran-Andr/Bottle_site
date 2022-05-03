from bottle import post, request
import re
import pdb
import json

@post('/button')
def my_form():
    out:list=[]
    header=request.forms.get('Header')
    author = request.forms.get('Author')
    date = request.forms.get('Date')
    image = request.forms.get('ImageLink')
    link = request.forms.get('Link')

    articles:list =[header,author,date,image,link]
    
    try:
        with open('articles.json', "r",encoding="utf-8") as file:
            out=json.load(file)
    except:
            print("file not found")

    out.append(articles)
    with open('articles.json', "w",encoding="utf-8") as file:
        json.dump(out,file,indent=4,ensure_ascii=False)
    return "Статья была добавлена на сайт!"


