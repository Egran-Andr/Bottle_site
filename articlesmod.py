from bottle import route,post, request,redirect
import re
import pdb
import json

def checklink(text):#проверка правельности ссылок

    regul = re.compile(r"^http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+")


    if re.fullmatch(regul, text):
        return True
    else:
        return False



def correctdate(date:str): #проверка правильности даты
    regex = re.compile(r"^(?<!\d)(?:0?[1-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[012][0-9])(?!\d)")
    datecor=date
    if re.fullmatch(regex, datecor):
        return True
    else:
        return False

@post('/button1')
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
    if (checklink(link)==False): return "Ошибчный ввод полей!" #Проверка правильности ввода

    articles:list =[header,author,date,image,link]#получение значений с формы
    
    try:#если файл существует
        with open('articles.json', "r") as file:
            out=json.load(file)
    except:
            print("file not found")

    out.append(articles)#добавление в файл
    with open('articles.json', "w") as file:#добавление новой статьи в файл articles.json
        json.dump(out,file,ensure_ascii=False,indent=4)
    redirect('/articlesList')#переход на страницу со статьями(запускать без отладки)