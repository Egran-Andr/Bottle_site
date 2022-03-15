<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
    crossorigin="anonymous">
    <link rel="stylesheet" href="static/content/registration.css">

<div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="#">
                <h1>Создать аккаунт</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>или используйте почту для входа</span>
                <input type="text" placeholder="Имя" />
                <input type="email" placeholder="Почта" />
                <input type="password" placeholder="Пароль" />
                <button>Регистрация</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="#">
                <h1>Регистрация</h1>
                    <input type="text" placeholder="Логин" />
                    <input type="email" placeholder="E-mail" />
                    <input type="password" placeholder="Пароль" />
                    <input type="password" placeholder="Повторите пароль" /> 
                    <div style="display: flex;">
                    <label for="scales">Вы согласны с <a style="color: blue" target="+blank" href="static\images\planereg.html">условием пользования</a></label>
                    <input type="checkbox" id="scales" name="scales">
                    </div >
                <button>Регистрация</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                  <img src="static\images\planereg.jpg" alt="Текст">
                </div>
            </div>
        </div>
    </div>
