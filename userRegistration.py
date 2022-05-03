from bottle import post, request

import re, pdb, app, json

@post('/registration/add',  method='POST')

def regUser():

    outData:list=[]

    login=request.params.Login
    email=request.params.Email
    password = request.params.Password
    repeatPassword = request.params.RepeatPassword
    #agreement = request.form.Agreement

    if login == "" or email == "" or password == "" or repeatPassword == "":
        return 'Sorry, you you didn\'t fill in the fields!'

    else:

        users:list = [login, email, password]
        
        try:
            with open('users.json', "r") as file:
                outData = json.load(file)

        except:
                print("file not found")

        outData.append(users)

        with open('users.json', "w") as file:
            json.dump(outData, file, ensure_ascii = False, indent = 4)

    return "User added successfully!" #print(request.forms.getlist('Agreement'))