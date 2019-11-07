<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Games at Acool Games - Play Free Online Game - Acool.com</title>
<meta name="description" content="Featuring the best Free Online & PC Games, with new games added every day on Acool Games!" />
<meta name="keywords" content="free, online, download games, games, flash, Action, Arcade, Puzzle, Adventure, Shooting, Sports, Strategy, Racing" /> 
<link href="/css/i2012acoolindex.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/bigNews.js"></script>
</head>

<body>
<!--TopTools S-->
<div id="site_toolbar">
<div id="site_toolbar_inner">
<div id="site_toolbar_inner_jt1"><a href="http://www.acool.com" target="_blank">Home</a></div>
<div id="site_toolbar_inner_jt2"><a href="javascript:window.external.AddFavorite(location.href,document.title);">Add to Favorites</a>
</div>
<div id="site_toolbar_inner_nr1">Play free online games every day</div>
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
  <param name="movie" value="images/i2012/logo.swf" />
  <param name="quality" value="high" />
  <PARAM NAME=wmode value=transparent>
  <embed src="images/i2012/logo.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="250" height="50" wmode="transparent"></embed>
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
<div id="site_menu">
<a id="current" href="http://www.acool.com/" target="_blank">Home</a>|
<a href="#" target="_blank">What's HOT</a>|
<a href="/game/41_1/index.html" target="_blank">Action</a>|
<a href="/game/92_1/index.html" target="_blank">Adventure</a>|
<a href="/game/24_1/index.html" target="_blank">Girls</a>|
<a href="/game/45_1/index.html" target="_blank">Shooting</a>|
<a href="/game/96_1/index.html" target="_blank">Strategy</a>|
<a href="/game/27_1/index.html" target="_blank">Puzzle</a>|
<a href="/game/b8_1/index.html" target="_blank">Sports</a>|
<a href="/game/c9_1/index.html" target="_blank">Card</a>|
<a href="/game/140_1/index.html" target="_blank">Cars</a>|
<a href="http://www.acool.com/acoolgames.html" target="_blank">Our Games</a>
</div>
<div id="top_ads">
<div class="top_ads_728"><script language="javascript" src="/otherhtml/index_1.js"></script></div>
</div>
<!--indextop E-->

<!--indexnr S-->
<div id="site_indexnr">
<div id="site_indexflash">
<div class="flash">
        <div class="playBox">
          <div class="big-pic" id="SwitchBigPic">
		  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 8 * from News where newsClassID=1 and isgood=1 order by newsID desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>		
		  <div class="imgDisplay"><a href="<%=rs("newsUrl")%>" target="_blank"><img src="<%=rs("newsPic")%>" width="510" height="280" /></a>
              <div class="grayMask"> </div>
              <div class="about"> <a href="<%=rs("newsUrl")%>" target="_blank"> <img onmouseover="this.className='atBtn'" onmouseout="this.className=''" src="/images/go_btn.gif" title="Play Now" width="90" height="27" /></a>
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
		sql="select top 8 * from News where newsClassID=1 and isgood=1 order by newsID desc"		
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>		
				    <li class="at" id="SwitchSmaPic_<%=t%>">
					<p><strong><a href="<%=rs("newsUrl")%>" target="_blank">
					<%=left(rs("newsTitle"),22)%></a></strong>
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
						step:280,
						smallpic:"SwitchSmaPic",
						selectstyle:"at",	
						totalcount:8,					
						autotimeintval:5000,
						objname:"IndexRecom"		
					} ;	
			BigNews.init(IndexRecom);
		</script></div>


</div>
<div id="site_indexnr2">
<div class="site_indexnr_ads">
<script language="javascript" src="/otherhtml/index_2.js"></script>
</div>
</div>
<div id="site_indexnr8">
<div id="site_indexnr1_t2">
<div class="site_indexnr1_tcolor2">
</div>
BEST FREE ONLINE GAMES
</div>
<ul>
<%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 16 * from flash where tj='yes' order by id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
</ul>

</div>
<div id="site_indexnr4">
<div id="site_indexnr1_t1">
<div class="site_indexnr1_tcolor1">
</div>
NEW FREE ONLINE GAMES
</div>
<%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 20 * from flash order by id desc"		
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<div class="site_s2"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/></a>
<p class="site_s2_p1"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><%=left(rs("flashname"),28)%></a></p>
<p class="site_s2_p2"><%=left(rs("body"),100)%></p></div>
                  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>




</div>

<div id="site_indexnr5">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
MOST PLAYED</div>

<%

		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 10 id,flashname,classname,spic from flash order by hits desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %><div class="site_s3"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="flashspic/<%=rs("spic")%>"/></a>
<p class="site_s3_p1"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><%=left(rs("flashname"),24)%></a></p>
<p class="site_s3_p2">[<%=rs("classname")%>]</p></div>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>



</div>


<div id="site_indexnr3">
<div id="site_indexnr1_t2">
<div class="site_indexnr1_tcolor2">
</div>
HOT ACOOL GAMES
</div>

<%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 * from flash where tag like '%acool%' order by hits desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
	  <div class="site_s1"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/></a>
<p class="site_s1_p1"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><%=left(rs("flashname"),24)%></a></p>
<p class="site_s1_p2"><%=left(rs("body"),100)%></p></div>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
</div>


<div id="site_indexnr6">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/41_1/index.html" target="_blank">Action</a></div>
<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='1' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>


</div>
<div id="site_indexnr6">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/92_1/index.html" target="_blank">Adventure</a></div>

<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='2' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>

</div>
<div id="site_indexnr6">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/b8_1/index.html" target="_blank">Sports</a></div>

<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='8' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>

</div>
<div id="site_indexnr7">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/24_1/index.html" target="_blank">Girls</a></div>
<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='4' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>

</div>

<div id="site_indexnr6">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/45_1/index.html" target="_blank">Shooting</a></div>
<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='5' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>
</div>
<div id="site_indexnr6">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/96_1/index.html" target="_blank">Strategy</a></div>

<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='6' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>

</div>
<div id="site_indexnr6">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/140_1/index.html" target="_blank">Car&Racing</a></div>

<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='40' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>

</div>
<div id="site_indexnr7">
<div id="site_indexnr1_t3">
<div class="site_indexnr1_tcolor2">
</div>
<a href="/game/27_1/index.html" target="_blank">Puzzle</a></div>
<ul>
  <%
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 id,flashname,spic,sj from flash where  nclass='7' order by id desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
<li><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title="<%=rs("flashname")%>" target="_blank"><img src="/flashspic/<%=rs("spic")%>" alt="<%=rs("flashname")%>"/><span><%=left(rs("flashname"),24)%></span></a></li>
  <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>
</ul>

</div>


</div>
<!--indexnr E-->

<!--indexdown S-->
<div id="site_down_menu">
Welcome to Acool.com, your zone to play free online games. Stocked  with new free games each day,<br />

including action games, adventure games, board & card games, multiplayer games, puzzle games, racing games, <br />

skill games, sports games, and more addicting games. <br />

Our aim is to provide you with the latest free online games, freeware and download games.<br />

Game policy: All free online games are copyrighted or trademarked by their respective owners or authors.<br />

Company Information | Contact Us | Priavcy Statement | Link to Us<br />

2011 Acool Games. All rights reserved.
<div style="display:none;"><script language="JavaScript" src="http://s95.cnzz.com/stat.php?id=2816813&web_id=2816813&show=pic" type="text/javascript"></script></div>
</div>
<!--indexdown E-->
</body>
</html>
