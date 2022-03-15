<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="   sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="static/content/login.css">
        <title>Авторизация</title>
    </head>
    <body>
       <div class="container">
            <div class="form-container">
                <form action="#">
                    <h1>Авторизация</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <span>или войти под созданным аккаунтом</span>
                        <div class="input-field">
                            <input type="email" id="inputEmail" required />
                            <label for="inputEmail">Почта</label>
                        </div>
                        <div class="input-field">
                            <input type="password" id="inputPass" required />
                            <label for="inputPass">Пароль</label>
                        </div>
                    <a href="#">Забыли пароль?</a>
                    <button>Войти</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-right">
                        <h1>Привет, Друг!</h1>
                        <p>Зарегестрируйся и летайте с нами уже сегодня</p>
                        <button class="ghost" id="signUp">Регистрация</button>
                    </div>
                </div>
            </div>
        </div> 
    </body>
</html>
