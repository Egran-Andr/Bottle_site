<!DOCTYPE html>

<html lang="ru" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="https://kit.fontawesome.com/77a916cda6.js" crossorigin="anonymous"></script>
		<script src="/static/scripts/modernizr-2.6.2.js"></script>
		<link rel="stylesheet" href="static/content/header.css">
		<link rel="stylesheet" href="static/content/listUsers.css">
		<title>Список пользователей - StarLines</title>
    </head>
    <body>
        <!-- link header -->
		%include header.tpl
		<!-- link header -->
		<div class="article">
			<div class="article__headerName">
				<h1>Присоединившиеся к нам пользователи:</h1>
			</div>
			<div class="article__content">
				% for i in range(70):
				<div class="content__user">
					<div class="user__login">
						Логин: BallsMaster
					</div>
					<div class="user__email">
						Почта: 2022TheBest
					</div>
				</div>
				%end
			</div>
		</div>
    </body>
</html>