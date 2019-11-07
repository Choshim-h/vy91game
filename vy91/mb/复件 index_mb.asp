<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Free Online Games, Games, Free Games, Online Games, Free Online Games, Free Games For Your Website, Funny, Action, Addicting, Puzzle, Flash, Shooting, Adventure, Fighting, Killing, Sports, War, 3D, Strategy, Racing, Arcade, Classic, Flying, Food, RPG, Shockwave, Fun, Driving, Funny, Zombie, Board, Football, Golf, Girl, BMX, Action, Pool, Card, Solitaire, Gangnam Games, Angry Birds Games, Bad Piggies Games, Lego Games, Cartoon Network Games, Acool, Acool.com, Tear Her Clothes." />
<meta name="description" content="Featuring the best Free Online Games, Play Free Online Games Everyday at Acoolgames." />
<title>Play Free Online Games at Acool.com</title>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/acoolindex.js"></script>
<script type="text/javascript" src="/js/bigNews.js"></script>
<link type="text/css" rel="stylesheet" href="/css/2014acool.css"/>
<base target=_blank>
</head>

<body>
<div class="index_top">
<div class="index_top_box">
<div class="index_top_l">
<div class="index_top_m_share">
<!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
<a class="a2a_dd" href="http://www.addtoany.com/share_save"></a>
<a class="a2a_button_facebook"></a>
<a class="a2a_button_google_plus"></a>
<a class="a2a_button_reddit"></a>
<a class="a2a_button_linkedin"></a>
<a class="a2a_button_tumblr"></a>
<a class="a2a_button_pinterest"></a>
<a class="a2a_button_twitter"></a>
</div>
<script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script>
<!-- AddToAny END -->
</div>
<div class="index_top_m">
</div>
<div class="index_top_r">
<div class="index_search">
<form action="/search.asp" method="post"  >
<input type="text" name="www_888wang_com_gameName" id="www_888wang_com_gameName" class="search_txt" onclick="this.value='';this.style.color='#000'" value="Search Game Name..." / >
<input type="submit" name="submit" class="search_btn" value="" />
</form>
</div>
</div>
</div>
</div>
</div>
<!--index_top-->
<div class="index_main">
	<div class="index_nav">
	<div class="index_nav_l">
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="200" height="40">
        <param name="movie" value="/images/logo.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <embed src="/images/logo.swf" width="200" height="40" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
      </object>
	</div>
	<div class="index_nav_r">
	<div class="index_nav_r_1"></div>
	<div class="index_nav_r_2">
	<ul>
	<li><a href="http://www.acool.com">HOME</a></li>
	<li><a href="/new-games.html">NEW GAMES</a></li>
	<li><a href="/top-games.html">TOP GAMES</a></li>
	<li><a href="/hot-games.html">MOST PLAYED</a></li>
	<li><a href="/game/girls_1.html">GIRLS GAMES</a></li>
	<li><a href="/acoolgames.html">OUR GAMES</a></li>
	<li><a href="/moregames.html">MORE GAMES</a></li>
	</ul>
	</div>
	<div class="index_nav_r_3"></div>
	</div>
	</div>
	<div class="index_ad"><script language="javascript" src="/otherhtml/index_1.js"></script></div>
	<div class="index_hot_box">
	<div class="index_hot_box_l"><script language="javascript" src="/otherhtml/index_2.js"></script></div>
	<div class="index_hot_box_r">

<div class="flash">
        <div class="playBox">
          <div class="big-pic" id="SwitchBigPic">

		  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 5 * from News where newsClassID=1 and isgood=1 order by hits desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>		
		  <div class="imgDisplay"><a href="<%=rs("newsUrl")%>" ><img src="<%=rs("newsPic")%>" width="500" height="279" /></a>
              <div class="grayMask"> </div>
              <div class="about"> <a href="<%=rs("newsUrl")%>" > <img onmouseover="this.className='atBtn'" onmouseout="this.className=''" src="/images/go_btn.gif" title="Play Now" width="100" height="45" /></a>
                    <h1><%=rs("newsTitle")%></h1>
                <p><%=rs("newsMiaosu")%></p>
              </div>
            </div>           
			        <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
       	  </div>
			<div class="disBox">
				<ul id="ul_recom">
						  <%
		t=0
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 5 * from News where newsClassID=1 and isgood=1 order by hits desc"		
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>		
				    <li class="at" id="SwitchSmaPic_<%=t%>">
					<a href="<%=rs("newsUrl")%>" >
					<img src="<%=rs("newsPic")%>" width="90" height="50" />
					</a>
					</li>
					<%
			t=t+1
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
				</ul>
			</div>
		</div><script>
		var IndexRecom={					
						bigpic:"SwitchBigPic",	
						step:279,
						smallpic:"SwitchSmaPic",
						selectstyle:"at",	
						totalcount:5,					
						autotimeintval:5000,
						objname:"IndexRecom"		
					} ;	
			BigNews.init(IndexRecom);
		</script></div>

	</div>
	</div>
    </div>
<!--index_main-->
<div class="content">
	<div class="content_top">
	</div>
	<!--content_top-->
	<div class="content_main">
	<script type="text/javascript" src="/js/index_tag_js.js"></script>
		<div class="content_tjyx">
			<div class="content_tjyx_title">
			<div class="allpopulargames"><a href="/hot-games.html"><img src="/images/allpopulargames.gif" border="0" /></a></div>
			</div>
			<div class="content_tjyx_lb">
			<%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 20 * From flash where isclass=1 order by geshou desc,id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
	  		<div class="content_tjyx_box">
			<div class="content_tjyx_box_img"><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","_")%>.html" title="<%=rs("flashname")%>" ><img src="/flashpic/<%=rs("pic")%>" alt="<%=rs("flashname")%>"/></a></div>
			<div class="content_tjyx_box_title"><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","_")%>.html" title="<%=rs("flashname")%>" ><%=left(rs("flashname"),40)%></a></div>
			<div class="content_tjyx_box_plays_l"><%=rs("hits")%> plays</div>
			<div class="content_tjyx_box_plays_r"><%=rs("love")%></div>
            </div>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
	  					
			</div><div style="clear:both;"></div>
			</div>
		</div>
		<div class="contect_mid_ad">
		  <div align="center"><script language="javascript" src="/otherhtml/index_3.js"></script></div>
		</div>
		    <div class="content_new">
			<div class="content_new_top">
			<div class="content_new_top_title">
			<div class="allnewgames"><a href="/new-games.html"><img src="/images/allnewgames.gif" border="0" /></a></div>
			</div>
			</div>
			<div class="content_new_lb">
<%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 60 * from flash where tj='yes' order by id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
			<div class="content_new_box">
			<div class="content_new_box_img"><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","_")%>.html" title="<%=rs("flashname")%>" ><img src="/flashpic/<%=rs("pic")%>" alt="<%=rs("flashname")%>"/></a></div>
			<div class="content_new_box_title"><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","_")%>.html" title="<%=rs("flashname")%>" ><%=left(rs("flashname"),40)%></a></div>
			<div class="content_tjyx_box_plays_l"><%=rs("hits")%> plays</div>
			<div class="content_tjyx_box_plays_r"><%=rs("love")%></div>
			</div>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>			

			</div><div style="clear:both;"></div>
			</div>			

			</div>

<div id="webfooter">
  <div class="webfooter_div1">
  <div class="webfooter_menu">
  <a href="/acoolgames.html">OUR GAMES</a> | 
  <a href="/new-games.html">NEW GAMES</a> | 
  <a href="/hot-games.html">POPULAR GAMES</a> | 
  <a href="/tag/angry_1.html"><img src="/images/footer/birds.png" width="16" height="16" border="0" />ANGRY BIRDS GAMES</a> | 
  <a href="/tag/dora_1.html"><img src="/images/footer/dora.png" width="16" height="16" border="0" />DORA GAMES</a> | 
  <a href="/tag/ben10_1.html"><img src="/images/footer/ben10.png" width="16" height="16" border="0" />BEN 10 GAMES</a> | 
  <a href="/tag/spongebob_1.html"><img src="/images/footer/bob.png" width="16" height="16" border="0" />SPONGEBOB GAMES</a>
  </div>
  <div class="webfooter_info"><div class="webfooter_f1">Welcome to Acool Games</div>
  <div class="webfooter_f2">
    Your zone to play free online games. Stocked with new free games each day,including action games, adventure games, board & card games, 
      puzzle games, racing games, skill games, sports games, and more addicting games. <br />
      Our aim is to provide you with the latest free online games.
    </div>
	</div>
  </div>
  <div class="webfooter_div2">
    <div class="webfooter_div3">
      <div class="webfooter_f3">
	  <a href="mailto:acoolgames@gmail.com">Contact Us</a>
	  <a href="/acoolgames.html">Submit Your Game</a>
	  <a href="/acoolgames.html">Games For Your Site</a>	  </div>
      <div class="webfooter_f4">2011-2014 Acool Games. All rights reserved.<br />
      Game policy: All free online games are copyrighted or trademarked by their respective owners or authors.</div>
    </div>
    <div class="webfooter_div4"><div class="webfooter_logo"><a href="http://www.acool.com"><img src="http://www.acool.com/images/footer/footer_logo.jpg" border="0" /></a></div>
    </div>
  </div>
</div>
<div style="display:none;"><script language="JavaScript" src="http://s95.cnzz.com/stat.php?id=2816813&web_id=2816813&show=pic" type="text/javascript"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43569299-1', 'acool.com');
  ga('send', 'pageview');

</script>
</div>
</body>
</html>