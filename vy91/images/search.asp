<!--#include file="conn.asp"-->
<!--#include file="inc/config_list.Asp"-->
<!--#include file="inc/md5.Asp"-->
<%
key=request("www_888wang_com_gameName")
if len(key)<2 then
response.write"Keyword is not less than two characters,Please <a href='javascript:history.go(-1)'>Back</a>"
response.end
else
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search Results | Acool Games</title>
<meta name="keywords" content="<!flashname!>{keywords}">
<link href="/acoolnew.css" rel="stylesheet" type="text/css" />
<link href="/acoolcss.css" rel="stylesheet" type="text/css" />
<script languang="javascript" src="/url.js"></script>

<script type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>

<body>
<div id="MainBox">
<div id="HeaderBox">

  <div id="top">
  <div class="top_l">NEW BEST FREE GAMES DAILY</div>
  <div class="top_r">
    <ul>
      <li style="background-image:url(/images/home.gif) ; background-repeat:no-repeat ; background-position: left;"><a href="/index.html">Home</a></li>
      <li style="background-image:url(/images/fav.gif) ; background-repeat:no-repeat ; background-position: left;"><a href="#" onclick="window.external.addFavorite('http://www.acool.com','ACool.com')">Add to Favorites</a></li>
    </ul>
    </div>
</div>

<div id="toplogo">
  <table width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="300"><div align="center"><a href="/index.html"><img src="/images/top_logo.jpg" width="244" height="50" border="0" /></a></div></td>
      <td><table width="730" height="90" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000">
        <tr>
          <td bgcolor="#FFFFFF"><script language="javascript" src="/otherhtml/index_1.js"></script></td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>
<div id="topnav">
  <div class="nav">
    <table width="973" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="85"><div align="center"><a href="/game/41_1/index.html">Action</a></div></td>
        <td width="110"><div align="center"><a href="/game/92_1/index.html">Adventure</a> </div></td>
        <td width="70"><div align="center"><a href="/game/24_1/index.html">Girls</a> </div></td>
        <td width="100"><div align="center"><a href="/game/45_1/index.html">Shooting</a> </div></td>
        <td width="90"><div align="center"><a href="/game/96_1/index.html">Strategy</a> </div></td>
        <td width="80"><div align="center"><a href="/game/27_1/index.html">Puzzle</a> </div></td>
        <td width="80"><div align="center"><a href="/game/b8_1/index.html">Sports</a> </div></td>
        <td width="140"><div align="center"><a href="http://www.acool.com/acoolgames.html" target="_blank">Acool Orginals</a></div></td>
        <td width="213" valign="bottom"><table width="190" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <form action="/search.asp" method="post">
              <td width="134"><input name="www_888wang_com_gameName" type="text" class="sreach_con" />
              </td>
              <td width="50"><input name="Submit" type="submit" class="sreach_enter" value="ENTER" />
              </td>
            </form>
          </tr>
        </table></td>
      </tr>
    </table>
  </div>
</div>
<div style="height:14px;"></div>
  <table width="982" border="0" align="center" cellpadding="0" cellspacing="0" background="/img/content_bg.jpg">
    <tr>
      <td height="13"></td>
    </tr>
  </table>
  <div class="Content">
    <table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="15"></td>
        <td bgcolor="#5FABFA"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="35"><table width="952" height="40" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="400" valign="top" class="web_online_title"><h2>Search Results</h2></td>
                    <td valign="bottom"></td>
                  </tr>
              </table></td>
            </tr>
          </table>
            <table width="952" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="15" height="15" background="/images/img/1_2.jpg"></td>
                <td width="922" bgcolor="#FFFFFF"></td>

                <td width="15" height="15" background="/images/img/2_2.jpg"></td>
              </tr>
            </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td bgcolor="#FFFFFF"><div style=" padding:10px;" >
                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="con">
      <tr>
        <td><div class="width960">
            <div>
              <div>
                <%
		i=1
		maxList=60
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select id,flashname,classid,classname,spic from flash where flashname like '%"&key&"%' order by id desc"
		rs.open sql,conn,1,1
		if rs.bof and rs.eof then
		response.write "no such games exist!"
		else
		do while not rs.EOF
		id=rs("id")
		flashname=rs("flashname")
		classid=rs("classid")
		classname=rs("classname")
		spic=rs("spic")
	  %>
                <div id="sreach_re"><a href="/<%=makeUrl_flash%>/<%=left(md5(id&md5Str),1)&id%>/" target="_blank"><img src="/flashspic/<%=spic%>"/></a>
                    <div><a href="/<%=makeUrl_flash%>/<%=left(md5(id&md5Str),1)&id%>/"><%=left(flashname,7)%></a></div>
                  <div>Class:<a href="/<%=makeUrl_class%>/<%=left(md5(rs("classid")&md5Str),1)&rs("classid")%>_1/"><%=classname%></a></div>
                </div>
                <%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
			end if

	  %>
              </div>
            </div>
        </div></td>
      </tr>
    </table>
                </div></td>
              </tr>
            </table>
          <table width="952" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="15" height="15" background="/images/img/3_2.jpg"></td>
                <td width="922" bgcolor="#FFFFFF"></td>
                <td width="15" height="15" background="/images/img/4_2.jpg"></td>
              </tr>
          </table></td>
        <td width="15"></td>
      </tr>
    </table>
  </div>
  <div class="Content_x"></div>
<div style="height:14px;"></div>
</div>
  <div class="Content"></div>
</div>
<table width="982" height="150" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="/images/footer_bg01.jpg" bgcolor="#202020"><table width="935" height="111" border="0" align="center" cellpadding="0" cellspacing="0" id="footer">
      <tr>
        <td width="250"><img src="/images/footer_logo.jpg" width="244" height="50" /></td>
        <td width="25" background="/images/xx2.jpg"> </td>
        <td width="660"><table width="100%" height="110" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><div align="left">Welcome to Acool.com, your zone to play free online games. Stocked each day with new free games,<br />
              including action games, adventure games, board & card games, multiplayer games, puzzle games, racing games, <br />
              skill games, sports games, and more addicting games. <br />
              Our aim is to provide you with the latest free online games, freeware and download games.<br />
              Game policy: All free online games are copyrighted or trademarked by their respective owners or authors.</div></td>
          </tr>
          <tr>
            <td><div align="left"><a href="#">Company Information</a> | <a href="#">Contact Us</a> | <a href="#">Priavcy Statement</a> | <a href="#">Link to Us</a><br />
              2011 Acool Games. All rights reserved. </div>
			   <div style="display:none;"><script language="JavaScript" src="http://s95.cnzz.com/stat.php?id=2816813&web_id=2816813&show=pic" type="text/javascript"></script></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>
</body>
</html>
<%
set rs=nothing
conn.close
set conn=nothing
end if
%>