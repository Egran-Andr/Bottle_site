"""
Routes and views for the bottle application.
"""

from bottle import route, view, template, static_file
from datetime import datetime
import json
import os

def SearchUsersJson(nameJson):

    def whereJson(fileName):
        return os.path.exists(fileName)

    if not(whereJson(nameJson)):

        data=[]

        with open(nameJson, 'w') as outFile:
            json.dump(data, outFile)
    
    with open(nameJson, "r") as file:
        jsonData = json.load(file)

    return jsonData

@route('/')
@route('/index')
@view('index')
def index():
    """Renders the home page."""
    return dict(
        year=datetime.now().year,
        countUsersJson = len(SearchUsersJson('users.json'))
    )

@route('/tickets')
@view('tickets')
def billets():
    """Renders the home page."""
    return dict(
        year=datetime.now().year,
        countUsersJson = len(SearchUsersJson('users.json'))
    )
@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/header')
@view('header')
def header():
    """Renders the about page."""
    pass

@route('/login')
@view('login')
def login():
    """Renders the about page."""
    pass

@route('/registration')
@view('registration')
def registration():
    """Renders the about page."""
    pass

@route('/registration/add')
@view('registration')
def registrationAdd():
    """Renders the about page."""
    template('index')


@route('/eula')
@view('eula')
def eula():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )
@route('/articlesList')
@view('ArticlesList')
def articlesList():
    """Renders the about page."""
    def where_json(file_name):
        return os.path.exists(file_name)


    if where_json('articles.json'):
        pass
    else:
        data=[]
        with open('articles.json', 'w') as outfile:  
            json.dump(data, outfile)
    
    with open('articles.json', "r") as file:
        json_data=json.load(file)
    return dict(
        year=datetime.now().year,
        articles_list=json_data
    )


@route('/articlesadd')
@view('articles')
def articlesadd():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/newsAdd')
@view('newsAdd')
def articles():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/news')
@view('news')
def articles():
    """Renders the about page."""
    f = open('news.json','a+')
    f.close()
    with open('news.json', "r") as file:
        try:
            json_data=json.load(file)
        except:
            json_data=[]
    return dict(
        year=datetime.now().year,
        news_list=json_data
    )

@route('/listUsers')
@view('listUsers')
def listUsers():
    """Renders the about page."""
    return dict(
        listUsersJson = SearchUsersJson('users.json')
    )