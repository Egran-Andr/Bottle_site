<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/77a916cda6.js" crossorigin="anonymous"></script>
	    <link rel="stylesheet" type="text/css" href="/static/content/header.css">
        <link rel="stylesheet" type="text/css" href="/static/content/tickets.css" />
	    <title>Новости</title>
</head>
<body>
	<!-- link header -->
	%include header.tpl
    %import json
	<!-- link header -->
    <div class = "test">
    </div>
    <div class = "input-batton">
        <input type="submit" class="btnNewsAdd" onclick= "window.location.href ='/newsAdd'" value="Добавить" />
    </div>
	<div class="row">
        %list = news_list
        %list.reverse()
        %for item in news_list:
 
        <div class="card1">
                <div class="blockImg1">
                    <img class="img1" src="{{item[4]}}" onerror="this.src='../static/images/default2.png'">
                </div>
               <div class="textC2">
                    <div class="t1">
                        <p>{{item[2]}}</p>
                        <h2 class="heading1">{{item[1]}}</h2>
                        <p class = "mainText">{{item[0]}}</p>
                        <a href="{{item[3]}}">Подробнее</a>
                    </div>            
                </div>
        </div>
     %end
	</div>
</body>
</html>