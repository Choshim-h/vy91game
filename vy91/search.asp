<!--#include file="conn.asp"-->
<!--#include file="inc/config_list.Asp"-->
<!--#include file="inc/md5.Asp"-->
<%
function seachKey(keystr)
dim tmpstr,MyArray,I
MyArray = Split(keystr) 
For I = Lbound(MyArray) to Ubound(MyArray) 
if I=0 then
tmpstr="flashname like '%"&MyArray(I)&"%'"
else
tmpstr=tmpstr & " or flashname like '%"&MyArray(I)&"%'"
end if
Next 
seachKey=tmpstr
end function

key=request("www_888wang_com_gameName")
strWhere=seachKey(key) 
if len(key)<2 then
response.write"Keyword is not less than two characters,Please <a href='javascript:history.go(-1)'>Back</a>"
response.end
else
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Find <%=key%> Games on Acool.com</title>
<meta name="description" content="Featuring the best Free Online Games, Play Free Online Games Everyday at Acoolgames." />
<script type="text/javascript" charset="utf-8" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/bigNews.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/acoollogin.js"></script>
<link href="/css/2014search.css" rel="stylesheet" type="text/css" />
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
          <li><a href="/game/girls_1.html">GIRLS GAMES</a></li>
          <li><a href="/acoolgames.html">OUR GAMES </a></li>
          <li><a href="/moregames.html">MORE GAMES </a></li>
        </ul>
      </div>
      <div class="index_nav_r_3"></div>
    </div>
  </div>
  <div class="index_ad"><script language="javascript" src="/otherhtml/index_1.js"></script>></div>
<!--index_main-->
<!--indextop E-->

<!--indexnr S-->
<div id="site_indexnr">
  <div id="site_indexnr8">
<div id="site_indexnr1_t2">Search Results</div>
<div id="site_search_2">
<form action="/search.asp" method="post" target="_blank" >
    <div class="site_search_r_p_156">
    <input name="www_888wang_com_gameName" type="text" class="site_search_searchbg_2" id="www_888wang_com_gameName" onclick="this.value='';this.style.color='#000'" value="Search Game Name..."/>
    </div>
	<div class="site_search_r_p_622">
      <input name="Submit" type="submit" class="site_search_submitbg_2" value="SEARCH" /></div>
   </form>
   </div>
<div class="search_text_1">You searched for "<strong><%=key%></strong>"</div>
<ul>
<%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where flashname like '%"&key&"%' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" target="_blank"><img src="/flashpic/<%=rs("pic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),30)%></span></a><p class="site_s8_p2">Plays: <%=rs("hits")%></p></li>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
	  
<%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where "&strWhere&" order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" target="_blank"><img src="/flashpic/<%=rs("pic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),30)%></span></a><p class="site_s8_p2">Plays: <%=rs("hits")%></p></li>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
</ul>

</div>
</div>
<div style="clear:both;"></div>
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
      Our aim is to provide you with the latest free online games.
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
<%
set rs=nothing
conn.close
set conn=nothing
end if
%>