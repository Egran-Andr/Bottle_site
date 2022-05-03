<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="static/content/registration.css"> <!-- СSS File -->
        <title>Регистрация</title>
    </head>
    <body>
        <div class="container" id="container"> <!-- Левая часть формы -->
            <div class="form-container sign-in-container">
                <form action="/registration/add" method="POST">
                    <h1>Регистрация</h1>
                    <div class="input-field"> <!-- Поле ввода логина -->
                        <input name="Login" type="text" id="inputLogin" required />
                        <label for="inputLogin">Логин</label>
                    </div>
                    <div class="input-field"> <!-- Поле ввода Почты -->
                        <input name="Email" type="email" id="inputEmail" required />
                        <label for="inputEmail">Почта</label>
                    </div>
                    <div class="input-field"> <!-- Поле ввода Пароля -->
                        <input name="Password" type="password" id="inputPass" required />
                        <label for="inputPass">Пароль</label>
                    </div>
                    <div class="input-field"> <!-- Поле ввода подтверждения пароля -->
                        <input name="RepeatPassword" type="password" id="inputRePass" required />
                        <label for="inputRePass">Повторите пароль</label>
                    </div>
                    <div class="input-check"> <!-- подтверждение с ссылкой на условия пользования -->
                        <label for="scales">Вы согласны с <a target="+blank" href="/eula">условием пользования</a></label>
                        <input name="Agreement" type="checkbox" id="scales" checked="checked" required />
                    </div><!-- Кнопка регистрации-->
                    <button>Регистрация</button>
                </form>
            </div>
            <div class="overlay-container"> <!-- правая часть форма с изображением самолета-->
                <div class="overlay">
                    <div class="overlay-panel overlay-right"> <!-- Изображение-->
                      <img src="static/images/planereg.jpg" alt="Текст">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>