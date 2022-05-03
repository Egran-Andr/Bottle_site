<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/77a916cda6.js" crossorigin="anonymous"></script>
	    <link rel="stylesheet" type="text/css" href="/static/content/header.css">
        <link rel="stylesheet" type="text/css" href="/static/content/tickets.css" />
        <link rel="stylesheet" type="text/css" href="/static/content/newAdd.css" />
	    <title>Добавление новостей</title>
</head>
<body>
    <!-- link header -->
    %include header.tpl
    %import json
    <!-- link header -->
    <div class="row">

        %for item in articles_list:
        <div class="card1">
            <div class="blockImg1">
                <img class="img1" src="{{item[3]}}">
            </div>
            <div class="textC1">
                <div class="t1">
                    <p>{{item[1]}}</p>
                    <h5 class="heading2">{{item[0]}}</h5>
                    <a class="ghost" href="{{item[4]}}" id="signUp">{{item[2]}}</a>
                </div>
            </div>
        </div>
        %end
    </div>
    <!-- Кнопка перехода на страницу покупки-->
    <div class="input-batton">
          <input type="submit" onclick="location.href='/articlesadd'" class="btn btn-default" value="Добавить статью"
    </div>
    </div>
</body>
</html>