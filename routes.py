"""
Routes and views for the bottle application.
"""

from bottle import route, view, template, static_file
from datetime import datetime
import json
import os

@route('/')
@route('/index')
@view('index')
def index():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/tickets')
@view('tickets')
def billets():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
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
        data=[];
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

@route('/listUsers')
@view('listUsers')
def header():
    """Renders the about page."""
    pass