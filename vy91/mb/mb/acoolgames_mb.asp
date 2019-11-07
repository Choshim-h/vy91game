<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Acool Games - Acool.com</title>
<meta name="description" content="Featuring the best Free Online & PC Games, with new games added every day on Acool Games!" />
<meta name="keywords" content="Acool Games,Acool.com" /> 
<link href="/css/i2012acoolgames.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/webnav.js"></script>
</head>

<body>
<!--TopTools S-->
<div id="site_toolbar">
<div id="site_toolbar_inner">
<div id="site_toolbar_inner_jt1"><a href="http://www.acool.com" target="_blank">Home</a></div>
<div id="site_toolbar_inner_jt2"><a href="javascript:window.external.AddFavorite(location.href,document.title);" target="_parent">Add to Favorites</a>
</div>
<div id="site_toolbar_inner_nr1">PLAY FREE ONLINE GAMES EVERY DAY :)</div>
<div id="site_toolbar_inner_nr2">
<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>
<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50b490e83e8652d4"></script>
<!-- AddThis Button END -->
</div>
</div>
</div>
<!--TopTools E-->

<!--indextop S-->
<div id="site_top">
<div id="site_logo">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="250" height="50">
  <param name="movie" value="/images/i2012/logo.swf" />
  <param name="quality" value="high" />
  <PARAM NAME=wmode value=transparent>
  <embed src="/images/i2012/logo.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="250" height="50" wmode="transparent"></embed>
</object>
</div>
<div id="site_top_ads">
<div id="site_search">
<form action="/search.asp" method="post" target="_blank" >
    <div class="site_search_r_p_156">
    <input name="www_888wang_com_gameName" type="text" class="site_search_searchbg" id="www_888wang_com_gameName" onclick="this.value='';this.style.color='#000'" value="Search Game Name..."/>
    </div>
	<div class="site_search_r_p_62">
      <input name="Submit" type="submit" class="site_search_submitbg" value="" /></div>
   </form>
   </div>
</div>
</div>
<div id="site_menu_top">
</div>

<div class="webnav">
<ul id="webnav-ul">
	<li><a href="http://www.acool.com/">Home</a></li>
	<li><a href="/new-games.html" style="color:#0099EA">New Games</a></li>
	<li><a href="/top-games.html">Top Rated</a></li>
	<li><a href="/hot-games.html">Most Played</a></li>
	<li><a href="/game/24_1/index.html">Girls Games</a></li>
	<li><a href="/acoolgames.html">Our Games</a></li>
	<li><a href="/tag/458_1/index.html">Multiplayer</a></li>
	<li style="background-image:url(/images/more.gif);background-repeat: no-repeat;background-position: 115px;"><a href="/new-games.html" onmouseover="mopen('m5')" onmouseout="mclosetime()">More Games</a>
		<div id="m5" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
		<a href="/game/41_1/index.html" style="background-image:url(/images/Action.png);background-repeat: no-repeat;background-position: 2px 2px;">Action</a>
		<a href="/game/92_1/index.html" style="background-image:url(/images/Adventure.png);background-repeat: no-repeat;background-position: 2px 2px;">Adventure</a>
		<a href="/game/96_1/index.html" style="background-image:url(/images/Strategy.png);background-repeat: no-repeat;background-position: 2px 2px;">Strategy</a>
		<a href="/game/27_1/index.html" style="background-image:url(/images/Puzzle.png);background-repeat: no-repeat;background-position: 2px 2px;">Puzzle</a>
		<a href="/game/b8_1/index.html" style="background-image:url(/images/Sports.png);background-repeat: no-repeat;background-position: 2px 2px;">Sports</a>
		<a href="/game/c9_1/index.html" style="background-image:url(/images/Card.png);background-repeat: no-repeat;background-position: 2px 2px;">Card</a>
		<a href="/game/140_1/index.html" style="background-image:url(/images/Car.png);background-repeat: no-repeat;background-position: 2px 2px;">Cars</a>		</div>
	</li>
</ul>
</div>


<div id="top_ads">
<div class="top_ads_728"><script language="javascript" src="/otherhtml/index_1.js"></script></div>
</div>
<!--indextop E-->

<!--indexnr S-->

<div id="site_indexnr">
  <div id="site_indexnr8">
<div id="site_indexnr1_t2">
<div class="site_indexnr1_tcolor2">
</div>
All Acool Online Games
</div>
<ul>
<%

        i=1
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where tag like '%acool%' order by id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashpic/<%=rs("pic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),30)%></span></a><p class="site_s8_p2">Plays: <%=rs("hits")%></p></li>
<%
			i=i+1
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
</ul>
</div>

<div id="site_indexnr9">
<div id="site_indexnr1_t2">
<div class="site_indexnr1_tcolor2">
</div>
All Acool Download Games
</div>
<ul>
<li><a href="http://www.acool.com/mahjong_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/MahJong/4_4.jpg" border="0" /><span class="site_s8_p4">Mahjong Hero</span></a><span class="site_s8_p5">
  <p class="site_s8_p3">Only $14.98</p></span></li>
<li><a href="http://www.acool.com/ocean_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/ocean/4_4.jpg" border="0" /><span class="site_s8_p4">The Fight For Ocean</span></a><span class="site_s8_p5"><p class="site_s8_p3">Only $5.99</p></span></li>
<li><a href="http://www.acool.com/tank_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/tank/2_2.jpg" /><span class="site_s8_p4">Tank Hour</span></a><span class="site_s8_p5"><p class="site_s8_p3">Only $5.99</p></span></li>
<li><a href="http://www.acool.com/bowman_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/bowman/3_3.jpg" /><span class="site_s8_p4">Bowman Legend</span></a><span class="site_s8_p5"><p class="site_s8_p3">Only $14.98</p></span></li>
<li><a href="http://www.acool.com/tetris_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/Acool%20Tetris/1_1.jpg" /><span class="site_s8_p4">Acool Tetris</span></a><span class="site_s8_p5"><p class="site_s8_p3">Free</p></span></li>
<li><a href="http://www.acool.com/jigsaw_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/jigsaw/1_1.jpg" /><span class="site_s8_p4">Acool Jigsaw</span></a><span class="site_s8_p5"><p class="site_s8_p3">Free</p></span></li>
<li><a href="http://www.acool.com/puzzle_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/Diamond%20Puzzle/3_3.jpg" /><span class="site_s8_p4">Diamond Puzzle</span></a><span class="site_s8_p5"><p class="site_s8_p3">Free</p></span></li>
<li><a href="http://www.acool.com/matching_info.html"  target="_blank"><img src="http://www.acool.com/screenshot/Picture%20Matching/3_3.jpg" /><span class="site_s8_p4">Picture Matching</span></a><span class="site_s8_p5"><p class="site_s8_p3">Free</p></span></li>
</ul>

</div>
<div style="clear:both;"></div>

</div>
<!--indexnr E-->

<!--indexdown S-->
<div id="webfooter">
  <div class="webfooter_div1">
  <div class="webfooter_menu">
  <a href="http://www.acool.com/tag/438_1/"></a><a href="http://www.acool.com/acoolgames.html">OUR GAMES</a> | <a href="http://www.acool.com/tag/438_1/"></a><a href="http://www.acool.com/new-games.html">NEW GAMES</a>  |  <a href="http://www.acool.com/tag/438_1/"></a><a href="http://www.acool.com/hot-games.html">POPULAR GAMES</a> |  <a href="http://www.acool.com/tag/438_1/"><img src="/images/footer/birds.png" width="16" height="16" border="0" />ANGRY BIRDS GAMES</a> | <a href="http://www.acool.com/tag/438_1/"><img src="/images/footer/dora.png" width="16" height="16" border="0" /></a><a href="http://www.acool.com/tag/140_1/">DORA GAMES</a> | <a href="http://www.acool.com/tag/438_1/"><img src="/images/footer/ben10.png" width="16" height="16" border="0" /></a><a href="http://www.acool.com/tag/c43_1/">BEN 10 GAMES</a> | <a href="http://www.acool.com/tag/438_1/"><img src="/images/footer/bob.png" width="16" height="16" border="0" /></a><a href="http://www.acool.com/tag/c44_1/">SPONGEBOB GAMES</a>  </div>
  <div class="webfooter_info"><div class="webfooter_f1">Welcome to Acool Games</div>
  <div class="webfooter_f2">
    Your zone to play free online games. Stocked with new free games each day,including action games, adventure games, board & card games, 
      puzzle games, racing games, skill games, sports games, and more addicting games. <br />
      Our aim is to provide you with the latest free online games, freeware and download games.
    </div>
	</div>
  </div>
  <div class="webfooter_div2">
    <div class="webfooter_div3">
      <div class="webfooter_f3"><a href="http://www.acool.com">Home</a>      <a href="mailto:acoolgames@gmail.com">Contact Us</a>      <a href="http://www.acool.com">Link to Us</a></div>
      <div class="webfooter_f4">2012-2013 Acool Games. All rights reserved.<br />
      Game policy: All free online games are copyrighted or trademarked by their respective owners or authors.</div>
    </div>
    <div class="webfooter_div4"><div class="webfooter_logo"><a href="http://www.acool.com"><img src="/images/footer/footer_logo.jpg" border="0" /></a></div>
    </div>
  </div>
</div>
<div style="display:none;"><script language="JavaScript" src="http://s95.cnzz.com/stat.php?id=2816813&web_id=2816813&show=pic" type="text/javascript"></script></div>
</div>
<!--indexdown E-->
</body>
</html>
