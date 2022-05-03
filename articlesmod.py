from bottle import post, request
import re
import pdb
import json

def сorrectdate(date:str):
    regex = re.compile(r"^(?<!\d)(?:0?[1-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[012][0-9])(?!\d)")
    datecor=date
    if re.fullmatch(regex, datecor):
        return True
    else:
        return False

@post('/button')
def my_form():
    out:list=[]
    #header = request.forms.get('Header')
    header=request.params.Header
    #author = request.forms.get('Author')
    author=request.params.Author
    date = request.forms.get('Date')
    #image = request.forms.get('ImageLink')
    image = request.params.ImageLink
    #link = request.forms.get('Link')
    link = request.params.Link

    articles:list =[header,author,date,image,link]
    
    try:
        with open('articles.json', "r") as file:
            out=json.load(file)
    except:
            print("file not found")

    out.append(articles)
    with open('articles.json', "w") as file:
        json.dump(out,file,ensure_ascii=False,indent=4)
    return "Статья была добавлена на сайт!"


