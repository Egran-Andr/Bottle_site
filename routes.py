"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/index')
@view('index')
def index():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/')
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

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/header')
@view('header')
def header():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/login')
@view('login')
def login():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/registration')
@view('registration')
def registration():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/eula')
@view('eula')
def eula():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )