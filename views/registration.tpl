<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="static/content/registration.css"> <!-- СSS File -->
        <title>Регистрация</title>
    </head>
    <body>
        <header>
            <div class="header__container"> <!-- Кнопка возвращения на главный экран -->
                <a href="/index">StarLines</a>
            </div>
        </header>
        <article>
            <script type="text/javascript">
                if ("{{ text }}" != "text?")
                    alert("{{ text }}");
            </script>
            <div class="container"> <!-- Левая часть формы -->
                <div class="form-container sign-in-container">
                    <form action="" method="POST">
                        <h1>Регистрация</h1>
                        <div class="input-field"> <!-- Поле ввода логина -->
                            <input name="Login" type="text" id="inputLogin" maxlength="50" onkeyup="countChars('#inputLogin','.loginCountChars')" required />
                            <label for="inputLogin">Логин</label>
                            <span class="countChars loginCountChars">50</span>
                        </div>
                        <div class="input-field"> <!-- Поле ввода Почты -->
                            <input name="Email" type="email" id="inputEmail" maxlength="100" onkeyup="countChars('#inputEmail','.emailCountChars')" required />
                            <label for="inputEmail">Почта</label>
                            <span class="countChars emailCountChars">100</span>
                        </div>
                        <div class="input-field"> <!-- Поле ввода Пароля -->
                            <input name="Password" type="password" id="inputPass" maxlength="50" onkeyup="countChars('#inputPass','.passCountChars')" required />
                            <label for="inputPass">Пароль</label>
                            <span class="countChars passCountChars">50</span>
                        </div>
                        <div class="input-field"> <!-- Поле ввода подтверждения пароля -->
                            <input name="RepeatPassword" type="password" id="inputRePass" maxlength="50" onkeyup="countChars('#inputRePass','.rePassCountChars')" required />
                            <label for="inputRePass">Повторите пароль</label>
                            <span class="countChars rePassCountChars">50</span>
                        </div>
                        <div class="input-check"> <!-- подтверждение с ссылкой на условия пользования -->
                            <label for="scales">Вы согласны с <a target="+blank" href="/eula">условием пользования</a></label>
                            <input name="Agreement" type="checkbox" id="scales" checked="checked" required />
                        </div> <!-- Кнопка регистрации-->
                        <button>Регистрация</button>
                    </form>
                    <script type="text/javascript">
                        function countChars(linkBlockInput, linkBlockOutput) {
                            
                            var inputField = document.querySelector(linkBlockInput);
                            var textCount = document.querySelector(linkBlockOutput);

                            var textlength = inputField.value.length;

                            if (textlength != null)
                                textCount.innerText = `${inputField.maxLength-textlength}`;
                        }
                    </script>
                </div>
                <div class="overlay-container"> <!-- правая часть форма с изображением самолета-->
                    <div class="overlay">
                        <div class="overlay-panel overlay-right"> <!-- Изображение-->
                          <img src="static/images/planereg.jpg" alt="Flying">
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </body>
</html>