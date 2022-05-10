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
        %from datetime import datetime,timedelta
        <!-- link header -->


        <!-- Кнопка перехода на страницу покупки-->
    <form action="/button1" method="post">
        <div class="MainBlockAdd">
            <!-- link header -->
            <form class="MainForm">
                <!-- Поля ввода-->
                <div class="input-field">
                    <input name="Header" type="text" id="Header" required />
                    <label for="Header">Заголовок:</label>
                </div>
                <div class="input-field">
                    <input name="Author" type="text" id="Autor" required />
                    <label for="Autor">Автор:</label>
                </div>
                <div class="input-field">
                    <input name="Date" type="date" id="Time" min="{{year.date()-timedelta(days = 365)}}" max="{{datetime.date(datetime.now())}}" required />
                    <label class="topic">Дата публикации:</label>
                </div>

                <div class="input-field">
                    <input name="ImageLink" type="text" id="Image" required />
                    <label for="Image">Картинка:</label>
                </div>

                <div class="input-field">
                    <input name="Link" type="text" id="Link" required />
                    <label for="Link">Сслылка:</label>
                </div>
            </form>

            <div class="input-batton">
                <input type="submit" class="btn btn-default" value="Добавить статью" />
            </div>
        </div>
    </form>

</body>
</html>