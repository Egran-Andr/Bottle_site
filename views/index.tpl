<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="https://kit.fontawesome.com/77a916cda6.js" crossorigin="anonymous"></script>
		<script src="/static/scripts/modernizr-2.6.2.js"></script>
		<link rel="stylesheet" href="static/content/header.css">
		<link rel="stylesheet" href="static/content/index_mine.css">
		<title>StarLines</title>
	</head>
	<body>
		<div class="welcome__img">
			<img src="static/images/background_plaj.jpg" alt="" />
		</div>
		<!-- link header -->
		%include header.tpl
		<!-- link header -->
		<div class="article">
			<div class="article__welcome">
				<div class="welcome__container"></div>
				<div class="lowInfo">
					<div class="lowInfo__container">
						<div class="lowInfo__block"><h1>+50,000,000</h1><h2>довольных покупателей</h2></div>
						<div class="lowInfo__block"><h1>+1,250,000</h1><h2>перелётов</h2></div>
						<div class="lowInfo__block"><h1>+10,000</h1><h2>различных путей</h2></div>
					</div>
				</div>
			</div>
			<div class="article__employee">
				<div class="employee__container">
					<div class="container__text">
						StarLines — это гарантии и стабильность, потенциал и развитие, а также уверенность в завтрашнем дне.
						Всё это благодаря качественной работы наших сотрудников, которые стараются развивать и делать нашу компанию лучше.
					</div>
					<div class="container__image">
						<img src="static/images/background_employee.jpg" alt="" />
					</div>
				</div>
			</div>
			<div class="article__security">
				<div class="security__container"></div>
				<img src="static/images/background_aircraft.jpg" alt="">
			</div>
			<div class="article__buyTickets">
				<p>ПОРА ЛЕТЕЛЬ</p>
				<a href="/tickets">ПЕРЕЙТИ К ПОКУПКЕ БИЛЕТОВ</a>
			</div>
		</div>
		<!-- link footer -->
		%include footer.tpl year=year
		<!-- link footer -->
	</body>
</html>