<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/77a916cda6.js" crossorigin="anonymous"></script>
	    <link rel="stylesheet" type="text/css" href="/static/content/header.css">
        <link rel="stylesheet" type="text/css" href="/static/content/tickets.css" />
	    <title>Добавление новостей</title>
</head>
<body>
        <!-- link header -->
        %include header.tpl
        %import json
        %from bottle import post, request
        %from datetime import datetime, timedelta
        <!-- link header -->


        <!-- Кнопка перехода на страницу покупки-->
    <form class = "MainForm" action="/buttonNews" method="post">

        <div class="MainBlockAdd">
            <!-- link header -->
                <!-- Поля ввода-->
                <div class="input-field">
                    <input name="AUTHOR" type="text" id="Author" maxlength=18 minlength=3 onkeyup="countChars('#Author','.AuthorField')" placeholder="                           от 3 до 18 символов" required />
                    <label for="Author">Заголовок:</label>
                    <span class="AuthorField">Символов использовано: 0/18</span>
                </div>
                <div class="input-field">
                    <input name = "IMAGE" type="text" id="Image" required />
                    <label for="Image">Картинка:</label>
                </div>

                <div class="input-field">
                    <input name = "DATE" type="date" id="Time" max="{{year.date()}}" min = "{{year.date() - timedelta(days=365)}}" required />
                    <label class="topic">Дата публикации: </label>
                </div>
                <div class="input-field">
                    <input name = "LINK" type="text" id="Link" required />
                    <label for="Link">Ссылка:</label>
                </div>
                <span class="textField">Символов использовано: 0/137</span>
                <textarea class = "text-input" name = "HEADER" id="textFieldInput" maxlength=137 onkeyup="countChars('#textFieldInput','.textField')" placeholder="137 символов" required></textarea>

            <div class="input-batton">
                <input type="submit" class="btn btn-default"  value="Добавить"  />
                <!-- Открываем теги для работы с javascript -->
            </div>

        </div>
    </form>
            <script type = "text/javascript">
            function countChars(linkBlockInput, linkBlockOutput) {

            var inputField = document.querySelector(linkBlockInput);
            var textCount = document.querySelector(linkBlockOutput);

            var textlength = inputField.value.length;

            if (textlength != null)
                textCount.innerText = `Символов использовано: ${textlength} / ${inputField.maxLength}`;
            }
        </script>
</body>
</html>