   
<%@page import="java.sql.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
    <html>
        <head><style>

#front h1 {
        font-size: 2.5rem;
        color: rgb(100,100,100);
        text-shadow: -1px -1px 1px rgb(50,50,50);
        padding: 0 0 0 0rem;
        text-align: center;
      }
      
      p {
        padding: 1.1rem 0 0.5rem 3rem;
        line-height: 1rem;
        word-spacing: 2px;
        font-size: 0.7rem;
        font-family: SansationRegular, arial, sans-serif;
      }
      
      footer p {
        padding: 0.5rem 0 0.5rem 2rem;
      }
      
      li {
        padding: 0 0 0.5rem 0.5rem;
        line-height: 1rem;
        word-spacing: 2px;
        font-size: 0.7rem;
        font-family: SansationRegular, arial, sans-serif;
      }

      
      
      article {
        position: absolute;
        width: 16rem;
        height: 23rem;
        top: 0;
        left: 0;
        padding: 2rem;
        border-radius: 20px;
        background-color: #fff; 
        
        background-image: -webkit-linear-gradient(0deg, transparent 50px, #abced4 50px, #abced4 51px, transparent 51px), -webkit-linear-gradient(#eee .05rem, transparent .05rem);
        
        background-size: 100% 1.1rem;
        
        box-shadow: 2px 2px 10px rgba(0,0,0,0.5);
      }
      
      #front, #back {
        background-size: 100px 100px;
        background: #bada55;
      }
      
      #wrapper {
        position: absolute;
        top: 6rem;
        left: 2rem;
        width: 30rem;
        height: 27rem;
        border-radius: 20px;
        
        -webkit-transform: perspective(1200px) rotateY(-9deg);
        -moz-transform: perspective(1200px) rotateY(-9deg);
        -ms-transform: perspective(1200px) rotateY(-9deg);
        -o-transform: perspective(1200px) rotateY(-9deg);
        transform: perspective(1200px) rotateY(-9deg);
        
        -webkit-transform-style: preserve-3d;
        -moz-transform-style: preserve-3d;
        -ms-transform-style: preserve-3d;
        -o-transform-style: preserve-3d;
        transform-style: preserve-3d;
        
        -webkit-transition: 1s all;
        -moz-transition: 1s all;
        -ms-transition: 1s all;
        -o-transition: 1s all;
        transition: 1s all;
      }
      
      #wrapper:hover {
        -webkit-transform: perspective(1200px) rotateY(-30deg);
        -moz-transform: perspective(1200px) rotateY(-30deg);
        -ms-transform: perspective(1200px) rotateY(-30deg);
        -o-transform: perspective(1200px) rotateY(-30deg);
        transform: perspective(1200px) rotateY(-30deg);
      }
      
      #front {
        -webkit-transform: translateZ(5rem);
        -moz-transform: translateZ(5rem);
        -ms-transform: translateZ(5rem);
        -o-transform: translateZ(5rem);
        transform: translateZ(5rem);
      }
      
      #p1, #p2 {
        -webkit-transition: 2s all;
        -moz-transition: 2s all;
        -ms-transition: 2s all;
        -o-transition: 2s all;
        transition: 2s all;
      }
      
      #p1:hover, #p2:hover {
        -webkit-transform: translateX(20rem) rotate(0deg) scale(1.1);
        -moz-transform: translateX(20rem) rotate(0deg) scale(1.1);
        -ms-transform: translateX(20rem) rotate(0deg) scale(1.1);
        -o-transform: translateX(20rem) rotate(0deg) scale(1.1);
        transform: translateX(20rem) rotate(0deg) scale(1.1);
      }
      
      #p1 {
        -webkit-transform: translateZ(0rem);
        -moz-transform: translateZ(0rem);
        -ms-transform: translateZ(0rem);
        -o-transform: translateZ(0rem);
        transform: translateZ(0rem);
      }
     
      #p2 {
        -webkit-transform: translateZ(-5rem);
        -moz-transform: translateZ(-5rem);
        -ms-transform: translateZ(-5rem);
        -o-transform: translateZ(-5rem);
        transform: translateZ(-5rem);
      }
      
      #back {
        -webkit-transform: translateZ(-10rem);
        -moz-transform: translateZ(-10rem);
        -ms-transform: translateZ(-10rem);
        -o-transform: translateZ(-10rem);
        transform: translateZ(-10rem);
      }
      
      
            </style>
        </head>
        <body>
            
            <div id="wrapper">
	<article id="front">
	<h1>Hi I'm SI</h1>
	</article>
	<article id="p1">
	<h1>To-do list</h1>
	<ul>
		<li>Change secret identity</li>
		<li>Buy new costume</li>
		<li>Defeat arch nemesis and save universe</li>
		<li>Buy milk</li>
		<li>Walk dog</li>
	</ul>
	</article>
	<article id="p2">
	<h1>My notes</h1>
	<p>
		I am a superhero I keep having to remind myself of this, as my secret identity is too convincing. I must remember to get a new costume tomorrow, as my old one is full of holes. And I must make sure that I don't buy the same one down the costume shop as my arch nemesis. Doing so can be really confusing for onlookers, and as much of a faux pas as wearing the same dress as the bride at a wedding.
	</p>
	</article>
	<article id="back">
	</article>
</div>
            
        </body>
        
    </html>