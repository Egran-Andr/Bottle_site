from bottle import post, request

import re, pdb, app, json

def check_mail(email):

    regul = r'\w+\@\w+\.[a-z]+'
    
    if re.fullmatch(regul, email):
        return True

    else:
        return False

@post('/registration/add',  method='POST')

def regUser():

    outData:list=[]

    login=request.params.Login
    email=request.params.Email
    password = request.params.Password
    repeatPassword = request.params.RepeatPassword

    if login == "" or email == "" or password == "" or repeatPassword == "" or password != repeatPassword or request.forms.getlist('Agreement') == "":
        return 'Sorry, you didn\'t fill in the fields!'

    else:

        if not(check_mail(email)):

            return 'You entered a strange email!'

        else:

            users:list = [login, email, password]
            
            try:
                with open('users.json', "r") as file:
                    outData = json.load(file)

            except:
                    print('File not found!')

            outData.append(users)

            with open('users.json', "w") as file:
                json.dump(outData, file, ensure_ascii = False, indent = 4)

    return 'User added successfully!'