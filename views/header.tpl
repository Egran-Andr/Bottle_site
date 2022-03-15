<!DOCTYPE html>
<html lang="ru">
<head>
	<title> {{ title }} </title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/static/content/site.css" />
	<link rel="stylesheet" type="text/css" href="/static/content/header.css"/>
    <script src="https://kit.fontawesome.com/77a916cda6.js" crossorigin="anonymous"></script>
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>
<body>
	<div class="header">
		<div class="header__container">
			<div class="container__title">
				<div class="title__name"><span>Star</span>Lines</div>
			</div>
			<div class="container__menu">
				<a href="/index">Билеты</a>
				<a href="/about">О компании</a>
			</div>
			<div class="container__login">
				<a href="/login"><i class="far fa-user"></i></a>
			</div>
		</div>
	</div>
	 <div class="container body-content">
            {{!base}}
        <hr />
        <footer>
            <p>&copy; {{ year }} - StarLines</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>