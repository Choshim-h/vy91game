<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All Newest Games - Acool.com</title>
<script type="text/javascript" charset="utf-8" src="/js/jquery.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/acoollogin.js"></script>
<link type="text/css" rel="stylesheet" href="css/2014newgames.css">
</head>

<body>
<div class="index_top">
<div class="index_top_box">
<div class="index_top_l">
<div class="acool_userinfo">
<div id="acool_userloginwindow">
<div class="acool_userloginwindow_topleft">Log In using one of these options</div><div class="acool_userloginwindow_topright"><a onclick="acool_userloginwindow.style.display='none'" style="cursor:pointer">close X</a></div>
<div class="hs_10"> </div>
<div class="acool_userloginwindow_acool"><div class="acool_userloginwindow_acool_l1">Email:<br /><input id="acool_Email" name="acool_Email" type="text" tabIndex="1" class="acool_userloginwindow_acool_ip" onkeydown="keyDown()"/><br />
  <a href="http://www.acool.com/user/register.html">New here? Sign Up</a></div>
  <div class="acool_userloginwindow_acool_l2">Password:<br /><input id="acool_password" name="acool_password" type="password" tabIndex="2" class="acool_userloginwindow_acool_ip" onkeydown="keyDown()"/><br />
    <a href="http://www.acool.com/user/forgot_password.html">Forgot Password?</a></div>
  <div class="acool_userloginwindow_acool_l3"><input name="Submit" type="button" id="acoolloginbtn" value="" tabIndex="3"  class="acool_userloginwindow_acool_submit" onClick="Sendacoollogin()" /></div>
  <div id="acool_userlogin_message" class="acool_userlogin_message"></div></div>
<div class="acool_userloginwindow_facebook"><div class="acool_userloginwindow_facebook_txt">Use your Facebook account to login. You'll also be able to add your friends to portal and post your activity in your Facebook feed. Play free flash games online with us.<br /> <a  onclick="acoolloginfb();" style="cursor:pointer"><img src="/images/connect_light_medium_long.gif" width="169" height="21" border="0" class="acool_userlogin_facebook_submit" /></a>
</div></div>
</div>
<div id="acool_userinfo_info"><div id="acool_userinfo_avatar"><a onclick="acool_userloginwindow.style.display='block'" style="cursor:pointer"><img src="/images/avatars/40x40.jpg" border="0" /></a></div><a href="http://www.acool.com/user/register.html">Sign Up</a> | <a onclick="acool_userloginwindow.style.display='block'" style="cursor:pointer">Sign In</a><br />
  <a  onclick="acoolloginfb();" style="cursor:pointer"><img src="/images/connect_light_medium_long.gif" width="169" height="21" border="0" /></a></div>
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
          <li><a href="http://m.acool.com">MOBILE GAMES</a></li>
          <li><a href="/acoolgames.html">OUR GAMES</a></li>
          <li><a href="/moregames.html">MORE GAMES</a></li>
        </ul>
      </div>
      <div class="index_nav_r_3"></div>
    </div>
  </div>
  <div class="index_ad"><script language="javascript" src="/otherhtml/top_1.js"></script></div>
<!--index_main-->
<div class="content">
  <!--content_top-->
<div class="index_top_bg"></div>
<div class="content_main">
<div id="site_indexnr">
  <div style="clear:both;"></div>
	<script type="text/javascript" src="/js/index_tag_js.js"></script>

<div class="content_new">
			<div class="content_new_top">
			<div class="content_new_top_title">
			<div class="allnewgames"></div>
			</div>
			</div>
			<div class="content_new_lb">
<%

        i=1
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 120 * from flash order by id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
			<div class="content_new_box">
			<div class="content_new_box_img"><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" target="_blank"><img src="/flashpic/<%=rs("pic")%>" alt="<%=rs("flashname")%>"/><%=left(rs("flashname"),40)%></a></div>
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

</div>
</div>
</div>
<div style="clear:both;"></div>

<div id="webfooter">
  <div class="webfooter_div1">
  <div class="webfooter_menu">
  <a href="/acoolgames.html">OUR GAMES</a> | 
  <a href="/new-games.html">NEW GAMES</a> | 
  <a href="/hot-games.html">POPULAR GAMES</a> | 
  <a href="/tag/angry-1.html"><img src="/images/footer/birds.png" width="16" height="16" border="0" />ANGRY BIRDS GAMES</a> | 
  <a href="/tag/dora-1.html"><img src="/images/footer/dora.png" width="16" height="16" border="0" />DORA GAMES</a> | 
  <a href="/tag/ben10-1.html"><img src="/images/footer/ben10.png" width="16" height="16" border="0" />BEN 10 GAMES</a> | 
  <a href="/tag/spongebob-1.html"><img src="/images/footer/bob.png" width="16" height="16" border="0" />SPONGEBOB GAMES</a>
  </div>
  <div class="webfooter_info"><div class="webfooter_f1">Welcome to Acool Games</div>
  <div class="webfooter_f2">
    Your zone to play free online games. Stocked with new free games each day,including <a href="/game/Action-1.html">action games</a>, <a href="/game/Adventure-1.html">adventure games</a>, <a href="/game/Girls-1.html">girl games</a>, 
      <a href="/game/Shooting-1.html">shooting games</a>, <a href="/game/Strategy-1.html">strategy games</a>, <a href="/game/Puzzle-1.html">puzzle games</a>, <a href="/game/Car-&-Racing-1.html">racing games</a>, <a href="/game/Board-&-Card-1.html">board games</a>, <a href="/game/Sports-1.html">sports games</a>, and <a href="/moregames.html">more addicting games</a>. <br />
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
    <div class="webfooter_div4"><div class="webfooter_logo"><a href="http://www.acool.com"><img src="/images/footer/footer_logo.jpg" border="0" /></a></div>
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
<div class="banr" >
<script type="text/javascript" src="/otherhtml/top_3.js"></script>		
</div>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50b490e83e8652d4" async="async"></script>
</body>
</html>
