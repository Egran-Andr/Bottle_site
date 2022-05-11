from bottle import post, view, request

import re, pdb, app, json, routes

# Функция проверки текста регулярным выражением
def checkInputField(login, regul):
    # Если проверку проходит, возвращает истину
    if re.fullmatch(regul, login):
        return True
    # Если проверку не проходит, возвращает ложь
    else:
        return False

@post('/registration', method="POST")
@view('registration')

def regUser():

    outData:list = [] # Возвращаемый список

    userApproved = True # Переменная для одобрения регистрации
    
    # Запрашиваем значения полей ввода
    login = request.params.Login
    email = request.params.Email
    password = request.params.Password
    repeatPassword = request.params.RepeatPassword
    
    # Проверяем поля на пустые значения
    if (login == "" or email == "" or password == "" or repeatPassword == "" or
        password != repeatPassword or request.forms.getlist('Agreement') == ""):

        text = 'Некоторые поля не заполнены!'
    
    else:
        # Если логин не прошёл проверку регулярного выражения
        if not checkInputField(login, r'[a-zA-Z0-9.-_]+'):
    
            text = 'Вы ввели логин из недопустимых символов!'
    
        else:
            # Если почта не прошла проверку регулярного выражения
            if not checkInputField(email, r'\w+\@\w+\.[a-z]+'):
    
                text = 'Вы ввели почту из недопустимых символов!'
    
            else:
                # Проверяем на уникальность пользователя
                listUsersJson = routes.SearchUsersJson('users.json')

                for user in listUsersJson:
                    # Если пользователь с таким логином или почтой существует
                    if login == user[0] or email == user[1]:

                        text = 'Введённый Вами логин или пароль уже используется!'
                        userApproved = False
                        break
                # Проверяем переменную для одобрения регистрации
                if userApproved == True:
                    # Записываем все значения в список
                    users:list = [login, email, password]
                    
                    try:
                        # Открываем файл с пользователями для чтения
                        with open('users.json', "r") as file:
                            outData = json.load(file)
    
                    except:
                            print('File not found!')
                    # Добавляем в список данные о новом пользователе
                    outData.append(users)
                    # Открываем файл и сохраняем изменения
                    with open('users.json', "w") as file:
                        json.dump(outData, file, ensure_ascii = False, indent = 4)
    
                    text = 'Пользователь успешно добавлен!'

    # Возвращаем словарь с полученным текстом
    return dict (
        text = text
    )