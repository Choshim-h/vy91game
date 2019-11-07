<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Play Free Online Games at Acool.com</title>
	<meta name="keywords" content="Free Online Games, Games, Free Games, Online Games, Free Online Games, Free Games For Your Website, Funny, Action, Addicting, Puzzle, Flash, Shooting, Adventure, Fighting, Killing, Sports, War, 3D, Strategy, Racing, Arcade, Classic, Flying, Food, RPG, Shockwave, Fun, Driving, Funny, Zombie, Board, Football, Golf, Girl, BMX, Action, Pool, Card, Solitaire, Gangnam Games, Angry Birds Games, Bad Piggies Games, Lego Games, Cartoon Network Games, Acool, Acool.com, Tear Her Clothes." />
    <meta name="description" content="Featuring the best Free Online Games, Play Free Online Games Everyday at Acoolgames." />
    <meta property="og:description" content="Play free online baby games on Acool.com. We have kids learning games, kids grooming games, many other baby hazel games full of fun and learning. "/>    
    <link rel="icon" type="image/x-icon" href="/m/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">    
    <!-- Bootstrap Fonts -->
    <link href='/fonts.googleapis.com/css?family=Open+Sans:400,600,700|Bree+Serif:400' rel='stylesheet' type='text/css'>     
    <!-- Website theme -->
    <link href="css/style.css" rel="stylesheet">    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->  
    <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>

</head>
<body>       
	<nav class="navbar navbar-fantasy navbar-fixed-top" role="navigation">
	   	<div class="navbar-header">
	   		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#fantacy-nav-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>		      	
	                <a class="navbar-brand logo-fantasy" href="http://www.acool.com/" title="Top Baby Games" id="logoClicker">
	      		<span class='visible-xs'>M.Acool.com</span>
	      		<img class="hidden-xs" src="images/logo.png" alt="Acool.com">
	      	</a>
	   	</div>
	   	<div class="collapse navbar-collapse navbar-right" id="fantacy-nav-collapse">
	      	<ul class="nav navbar-nav navbar-nav-fantasy">
	         	 <li><a class="home_btn" href="http://m.acool.com/" title="Acool Mobile Games">Home</a></li>
	            	            <li><a class="baby_games_btn" href="http://www.acool.com/" title="Acool Games">Free online games</a></li>
	            	            <li><a class="baby_hazel_games_btn" href="http://www.acool.com/" title="Acool Games">Acool Games</a></li>
	            	            <li><a class="cooking_games_btn" href="http://www.aime.com/" title="Aime Games">Aime Games</a></li>
	            	            <li><a class="girl_games_btn" href="http://www.aime.com/" title="Girl Games">Girl Games</a></li>
	                          
	      	</ul>
	   </div>
	</nav>
    	 


	<!-- Latest Games -->
	<div class="latest-games">
		<div class="sky-bg">
			<div class="cloud-bg">
				<div class="green-plant">
					<div class="palm-leaf">

						<div class="container content_wrap" id='game-container'>
<%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where mpic<>'' order by id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
	  
	  
	  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 Option<%if instr(rs("tag"),"HTML5")>0   then%> Option-html5<%end if%><%if rs("iosurl")<>"" then%> Option-ios<%end if%><%if rs("androidurl")<>""  then%> Option-android<%end if%>">
				<div class="holder">
					<div class="top-box">
						<div class="col-xs-5 col-sm-5 col-md-4 col-lg-5 game-image-wrap">
							<a href="gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" target="_blank" ><img src="<%=rs("mpic")%>" alt="<%=rs("flashname")%>" border="0" class="game-image"></a>						</div>										
						<div class="col-xs-7 col-sm-7 col-md-8 col-lg-7 game-content-wrapper">
							<a href="gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" target="_blank">
						  <h3 class="game-title"><%=rs("flashname")%></h3></a> 
						    <a class="" href="#" title="Acool Games">
						    <span class='category'>
						    Acool Games</span>
						    </a>
						    <p class="game-description"><%=left(rs("body"),80)%></p>
					  </div>										
						<div class="col-xs-7 col-sm-7 col-md-8 col-lg-7 game-store-link">
							<div class="col-xs-12 store-links">	
                            																		 											  					                		
                                	<%if   instr(rs("tag"),"HTML5")>0   then%>
									<a class="store-btn play-now-btn" href="<%=rs("flashurl")%>" title="Play now - <%=rs("flashname")%>">
						            	Play Store						            </a>
									<%end if%>
									<%if rs("macoolurl")<>"" then%>
										<a class="store-btn play-store-btn" href="<%=rs("macoolurl")%>" title="Google Play - <%=rs("flashname")%>" target="_blank">
						            	Play Store						            </a>
									<%end if%>
									<%if rs("iosurl")<>"" then%>
										<a class="store-btn app-store-btn" href="<%=rs("iosurl")%>" title="App Store - <%=rs("flashname")%>" target="_blank">
						            	Play Store						            </a>
									<%end if%>
									<%if rs("androidurl")<>""  then%>
										<a class="store-btn google-play-btn" href="<%=rs("androidurl")%>" title="Google Play - <%=rs("flashname")%>" target="_blank">
						            	Play Store						            </a>
									<%end if%>
															  </div>
						</div>
						<div class="clear"></div>
					</div>
				</div> 			</div>
				

<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>						
                 
				 <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 Option">
				<div class="holder">
					<div class="top-box">
						<div class="col-xs-5 col-sm-5 col-md-4 col-lg-5 game-image-wrap">
							<a href="http://www.acool.com/m/apk/The_hardest_Gomoku.apk" title="The hardest Gomoku" target="_blank" ><img src="games/images/The-hardest-Gomoku.jpg" alt="The hardest Gomoku" border="0" class="game-image"></a>						</div>										
						<div class="col-xs-7 col-sm-7 col-md-8 col-lg-7 game-content-wrapper">
							<a href="http://www.acool.com/m/apk/The_hardest_Gomoku.apk" title="The hardest Gomoku" target="_blank">
						  <h3 class="game-title">The hardest Gomoku</h3></a> 
						    <a class="" href="#" title="Acool Games">
						    <span class='category'>
						    Acool Games</span>
						    </a>
						    <p class="game-description">The hardest Gomoku is a man vs computer Gobang game. Gobang game</p>
					  </div>										
						<div class="col-xs-7 col-sm-7 col-md-8 col-lg-7 game-store-link">
							<div class="col-xs-12 store-links">	
                            																		 											  					                		
                                	<a class="store-btn google-play-btn" href="https://play.google.com/store/apps/details?id=com.acool.gomoku" title="Google Play - The hardest Gomoku" target="_blank">
						            	Play Store						            </a>						  </div>
						</div>
						<div class="clear"></div>
					</div>
				</div> 			</div>
				
				
				   			       
				      </div>	
					    <div class="animation_image" style="display:none" align="center">
					    	<img src="ajax-loader.gif">					    	
					    	<div id="showload"></div>
					    </div>					    
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="newsletter-bg">
		<div class="rainbow-bg">
			<div class="container content_wrap newsletter">
				<div class="col-xs-12">
					<h2 class="text-center">Search</h2>
					<div class="subscribe-cont">	
					<form action="http://www.acool.com/search.asp" method="post"  >
					
							<input class="user-emailid" type="text" placeholder="Search Game Name..." name="www_888wang_com_gameName" id="www_888wang_com_gameName" >
							<button class="subscribe-submit" data-toggle="modal" data-target=".bs-example-modal-sm" onClick="subscribe()">Search</button>	
</form>
					
					</div>					
					<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-sm">
					    
					  </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="footer">
	<div class="copyright col-xs-12 col-sm-6 col-md-6">
		&copy; 2014 Acool.com | <a href="mailto:acoolgames@gmail.com"" class="contactUs" title="contact us" >Contact Us</a> 
	</div>

	<div class="socialmedia col-xs-12 col-sm-6 col-md-6">
		<div class="sc-icon-wrap">
			<a href="http://www.acool.com"><img src="http://www.acool.com/images/footer/footer_logo.jpg" border="0" /></a>
		</div>
	</div>

	<div class="clear"></div>
</div>
    <script src="js/bootstrap.min.js"></script>
	<div style="display:none;"><script language="JavaScript" src="http://s95.cnzz.com/stat.php?id=2816813&web_id=2816813&show=pic" type="text/javascript"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43569299-1', 'acool.com');
  ga('send', 'pageview');

</script>
  </body>
</html>