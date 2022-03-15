% rebase('header.tpl', title='Home Page', year=year)
</div>

<head>
	<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="/static/content/tickets.css" />
	<link rel="stylesheet" type="text/css" href="">
	<title></title>
</head>
<body>
	<div class="MainBlock">
		<form class="MainForm" method="GET">
			<div class="input-field">
				<input type="text" id="Flight" maxlength="10" required />
				<label for="Flight">Номер рейса:</label>
			</div>
  			<div class="input-field">
				<input type="text" id="From" required />
				<label for="From">Место отправления:</label>
			</div>
			<div class="input-field">
    			<input type="text" id="name" required />
    			<label for="name">Место прибытия:</label>
  			</div>
  			<div class="input-field">
    			<input type="datetime-local" id="Time" required />
    			<label class="topic">Время отправления:</label>
  			</div>
  			<div class="input-field">
				<input type="number" id="Numer" min="1" required />
    			<label for="Numer">Количество человек:</label>
  			</div>
		</form>
		<div class="input-batton">
  			<input type="button" name="batton" value="КУПИТЬ" />
  			<script type="text/javascript" >
				const button = document.querySelector('.input-batton');
				
				button.addEventListener('click', event => {
  					if(confirm("Вы подтверждаете покупку?")== true){
					    document.querySelector('input[name="batton"]').value="НЕТ, БЛИН, ПРОДАТЬ";
                        window.location.href = "https://booking.nordstar.ru/websky/#/search";
                      }
				});		
			</script>
  		</div>
  	</div>
</body>
</html>


<div class="row">
    <div class = "tours" >
        <b>Горящие туры</b>
    </div>
    <div class="card1">

        <div class = "blockImg1">
            <img class = "img1" src="static\images\Sochi.jpg">
        </div>
       <div class = "textC1">
            <div class = "t1">
                <h2 class = "heading1">Сочи</h2>
                <p>Туризм на черноморском побережье России</p>
            </div>            
            
            <div class = "more1">
                <p>Подробнее <br></br>Стоимость перелёта от 3 023 руб.</p> 
                <a target = "_blank" href="https://booking.nordstar.ru/websky/?origin-city-code=MOW&destination-city-code=AER#/schedule" class="button">Забронировать &raquo;</a>
            </div>

        </div>

    </div>

        <div class="card1">

        <div class = "blockImg1">
            <img class = "img1" src="static\images\Moscow.jpg">
        </div>
       <div class = "textC1">
            <div class = "t1">
                <h2 class = "heading1">Москва</h2>
                <p>Посетите столицу России и изучите её достопремичательности с комфортом</p>
            </div>            
            
            <div class = "more1">
                <p>Подробнее <br></br>Стоимость перелёта от 3 721 руб</p> 
                <a target = "_blank" href="https://booking.nordstar.ru/websky/?origin-city-code=AER&destination-city-code=MOW#/schedule" class="button">Забронировать &raquo;</a>
            </div>

        </div>
    </div>
            <div class="card1">

        <div class = "blockImg1">
            <img class = "img1" src="static\images\SPb.jpg">
        </div>
       <div class = "textC1">
            <div class = "t1">
                <h2 class = "heading1">Санкт-Петербург</h2>
                <p>Посетите культурную столицу России. Познакомьтесь с творениями великих писателей</p>
            </div>            
            
            <div class = "more1">
                <p>Подробнее <br></br> Стоимость перелёта от 2 718 руб</p> 
                <a target = "_blank" href="https://booking.nordstar.ru/websky/?origin-city-code=MOW&destination-city-code=LED#/schedule" class="button">Забронировать &raquo;</a>
            </div>

        </div>
    
    </div>
            <div class="card1">
        <div class = "blockImg1">
            <img class = "img1" src="static\images\Krasnoyarsk.jpg">
        </div>
       <div class = "textC1">
            <div class = "t1">
                <h2 class = "heading1">Красноярск</h2>
                <p>Постетите такие достопримечательности, как: Национальный парк «Столбы», Часовня Параскевы Пятницы, и многие другие</p>
            </div>            
            
            <div class = "more1">
                <p>Подробнее <br></br>Стоимость перелёта от 4 676 руб</p> 
                <a target = "_blank" href="https://booking.nordstar.ru/websky/?origin-city-code=MOW&destination-city-code=KJA#/schedule" class="button">Забронировать &raquo;</a>
            </div>
        </div>
        </div>
</div>


</div>
  
