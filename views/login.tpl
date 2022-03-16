<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="static/content/login.css"><!-- Подключение сss файла-->
        <title>Авторизация</title>
    </head>
    <body>
       <div class="container">
            <div class="form-container">
                <form action="#">
                    <h1>Авторизация</h1>
                    <div class="social-container">
                        <!-- Иконки входа через соцсети-->
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                        <!-- Надпись-->
                    <span>или войти под созданным аккаунтом</span>
                        <div class="input-field">
                               <!-- Поле ввода почты и текст на этом поле-->
                            <input type="email" id="inputEmail" required />
                            <label for="inputEmail">Почта</label>
                        </div>
                        <div class="input-field">
                            <!-- Поле ввода пароля и текст на этом поле-->
                            <input type="password" id="inputPass" required />
                            <label for="inputPass">Пароль</label>
                        </div>
                    <a href="#">Забыли пароль?</a>
                        <!-- Кнопка входа-->
                    <button>Войти</button>
                </form>
            </div>
            <div class="overlay-container"> <!-- "Правый контейнер " ведущий на регестрацию-->
                <div class="overlay">
                    <div class="overlay-panel overlay-right"> <!-- "Текст и форма на контейнере-->
                        <h1>Привет, Друг!</h1>
                        <p>Зарегестрируйся и летайте с нами уже сегодня</p>
                        <a class="ghost" href="/registration" id="signUp">Регистрация</a>
                    </div>
                </div>
            </div>
        </div> 
    </body>
</html>
