% rebase('layout.tpl', title='Home Page', year=year)

<head>
    <meta charset="utf-8">
 </head>

<div class="jumbotron">
    <h1>Bottle</h1>
    <p class="lead">Bottle is a free web framework for building great Web sites and Web applications using HTML, CSS and JavaScript.</p>
    <p><a href="http://bottlepy.org/docs/dev/index.html" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
</div>

<div class="row">
    <div class="col-md-4">
        <h2>Timoha the big buisenessman</h2>
        <p>
           Timoha gives you a big opportunities to spend your money correctly. 
           Invest to him and you will spent your money.
        </p>
        <p><a class="btn btn-default" href="https://vk.com/dog09701">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Get more libraries</h2>
        <p>The Python Package Index is a repository of software for the Python programming language.</p>
        <p><a class="btn btn-default" href="https://pypi.python.org/pypi">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Microsoft Azure</h2>
        <p>You can easily publish to Microsoft Azure using Visual Studio. Find out how you can host your application using a free trial today.</p>
        <p><a class="btn btn-default" href="http://azure.microsoft.com">Learn more &raquo;</a></p>
    </div>
</div>
    <div class = "kek">
        <div class = "kek2">
            <img src="https://i.ytimg.com/vi/XYmcl3t6ghU/maxresdefault.jpg"
            alt="Логотип MDN - изображение динозавра с текстом MDN web docs">
        </div>
        <div class = "kek3">
            <p>Кури, списывай, отчислен</p>
        </div>
    </div>

   <style type="text/css">
   img{ 
    font-size: 120%; 
    font-family: Verdana, Arial, Helvetica, sans-serif; 
    color: #333366;
    width: 100%;
    height: 300px;
    position: absolute;
   }   
   .kek{   
       position: relative;
       width: 50%;
       height: 300px;
   }
   .kek3{
       width: 100%;
       height: 150%;
       position: absolute;
       z-index: 1000;

       background: rgba(0, 0, 255, 0.1);
       top: 0;
       bottom: 0;
       left: 0;
       right: 0;

       transition: transform 3s, background 2s;
       transform: skew(0deg, -10deg) translateY(50%); /* Equal to skewX(10deg) */
   }
   .kek:hover>.kek3{
       transform: skew(0deg, 10deg) translateY(30%);
       background: rgba(95, 222, 21, 1);
   }
   .kek2{
       position: absolute;
       width: 100%;
       height: 100%;
       overflow: hidden;
   }
  </style>
  

