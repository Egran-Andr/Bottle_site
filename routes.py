"""
Routes and views for the bottle application.
"""

from bottle import route, view, template, static_file
from datetime import datetime
import json

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