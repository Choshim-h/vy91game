<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>Free Games Download at Acool Games</title>
<meta name="description" content="Featuring the best Free Online & PC Games, with new games added every day on Acool Games!" />
<meta name="keywords" content="free, online, download games, games, flash, Action, Arcade, Puzzle, Adventure, Shooting, Sports, Strategy, Racing"> 
<link href="acoolnew.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="mainbox">

<div id="top">
  <div class="top_l">NEW BEST FREE GAMES DAILY</div>
  <div class="top_r">
    <ul>
      <li style="background-image:url(images/home.gif) ; background-repeat:no-repeat ; background-position: left;"><a href="#">Home</a></li>
      <li style="background-image:url(images/fav.gif) ; background-repeat:no-repeat ; background-position: left;"><a href="#" onclick="window.external.addFavorite('http://www.acool.com','ACool.com')">Add to Favorites</a></li>
    </ul>
    </div>
</div>

<div id="toplogo">
  <table width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="300"><div align="center"><img src="images/top_logo.jpg" width="244" height="50" /></div></td>
      <td><table width="730" height="90" border="0" cellpadding="0" cellspacing="1" bgcolor="#000000">
        <tr>
          <td bgcolor="#FFFFFF"> </td>
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
      <td width="90"><div align="center"><a href="/game/96_1/index.html">Strtegy</a> </div></td>
      <td width="80"><div align="center"><a href="/game/27_1/index.html">Puzzle</a> </div></td>
      <td width="80"><div align="center"><a href="/game/b8_1/index.html">Sports</a> </div></td>
      <td width="140"><div align="center"><a href="http://www.acool.com/acoolgames.html" target="_blank">Acool Orginals</a></div></td>
      <td width="213"> </td>
    </tr>
  </table>
</div>
</div>

<div style="height:10px"></div>

<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="10" background="images/con_bg1.jpg"></td>
    </tr>
  </table>
<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="362" bgcolor="#2A84E4"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="640"><table width="100" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/con_ingbg01.jpg" width="640" height="10" /></td>
          </tr>
          <tr>
            <td height="340" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><div align="left"><img src="images/newgames.jpg" width="155" height="14" /></div></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="10">
                  <tr>
                    <td><div style=" padding:10px;">
                    <%
		i=1
		maxList=15
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 15 id,flashname,classid,classname,spic,pic,sj from flash order by id desc"		
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>

                    <div class="zjgxnew">
                      <table width="100" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="96" height="44" align="center"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><img src="flashspic/<%=rs("spic")%>" width="100" height="75" border="0" /></a></td>
                        </tr>
                        <tr>
                          <td height="55" align="center" valign="top"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><%=left(rs("flashname"),16)%></a></td>
                        </tr>
                      </table>
                    </div>
                  <%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
                </div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><img src="images/con_ingbg02.jpg" width="640" height="10" /></td>
          </tr>
        </table></td>
        <td width="20"> </td>
        <td width="300" valign="top"><table width="300" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td><img src="images/con_ingbg03.jpg" width="300" height="10" /></td>
          </tr>
          <tr>
            <td height="240" bgcolor="#003E91"><div align="center">GoogleADS</div></td>
          </tr>
          <tr>
            <td height="100" bgcolor="#003E91"><div align="center">MY ADS </div></td>
          </tr>
          <tr>
            <td><img src="images/con_ingbg04.jpg" width="300" height="10" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="10" background="images/con_bg2.jpg"></td>
  </tr>
</table>
<div style="height:10px"></div>

<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="10" background="images/con_bg3.jpg"></td>
  </tr>
</table>
<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" bgcolor="#2A84E4"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="images/con_ingbg05.jpg" width="960" height="10" /></td>
      </tr>
    </table>
      <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td bgcolor="#FFFFFF"><table width="960" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="480" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30"><div align="left"><img src="images/popgames.jpg" width="126" height="18" /></div></td>
                </tr>
                <tr>
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="15">
                    <tr>
                      <td>                    <%
		i=1
		maxList=3
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 3 id,flashname,classid,classname,spic,pic,sj from flash order by hits desc"		
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>

                    <div class="zjgxnew1">
                      <table width="100" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="96" height="44" align="center"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><img src="flashspic/<%=rs("spic")%>" width="100" height="75" border="0" /></a></td>
                        </tr>
                        <tr>
                          <td height="55" align="center" valign="top"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><%=left(rs("flashname"),20)%></a></td>
                        </tr>
                      </table>
                    </div>
                  <%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
	   <%
		j=1
		maxList=18
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 18 id,flashname,classid,classname,spic,pic,sj from flash order by hits desc"				
		rs.open sql,conn,1,1
		do while not rs.EOF
		if j>=4 then
	  %>
    <div class="zjgxnew2"><font color="#F66500">¡¤ </font><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" target="_blank"><%=left(rs("flashname"),18)%></a>	</div>
    <%
		 end if
			j=j+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
			set rs=nothing
	 	 %>	  </td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
              <td width="20"><img src="images/xx.jpg" width="20" height="342" /></td>
              <td width="460" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30"><div align="left"><img src="images/lastgames.jpg" width="180" height="14" /></div></td>
                </tr>
                <tr>
                  <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="15">
                      <tr>
                        <td><div id="acoolgames">
                            <table width="440" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="107"><div align="center"><a href="http://www.acool.com/playLoad/c370/" target="_blank"><img src="images/acoolgame/fish.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="107"><div align="center"><a href="http://www.acool.com/playLoad/c369/" target="_blank"><img src="images/acoolgame/diamond_ol.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="107"><div align="center"><a href="http://www.acool.com/playLoad/a353/" target="_blank"><img src="images/acoolgame/bloons.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="109"><div align="center"><a href="http://www.acool.com/playLoad/3334/" target="_blank"><img src="images/acoolgame/penguin.jpg" width="100" height="75" border="0" /></a></div></td>
                              </tr>
                              <tr>
                                <td><div align="center"><a href="http://www.acool.com/playLoad/c370/" target="_blank">Magic Fish Matching</a></div></td>
                                <td><div align="center"><a href="http://www.acool.com/playLoad/c369/" target="_blank">Acool Diamond Blocks</a></div></td>
                                <td><div align="center">
                                    <table border="0" cellspacing="0" cellpadding="0" width="110">
                                      <tbody>
                                        <tr>
                                          <td height="30" align="middle"><a href="http://www.acool.com/playLoad/a353/" target="_blank">Bloons Marksman</a></td>
                                        </tr>
                                      </tbody>
                                    </table>
                                </div></td>
                                <td><div align="center">
                                    <center>
                                      <a href="http://www.acool.com/playLoad/3334/" target="_blank"> Hunt Penguins </a>
                                    </center>
                                </div></td>
                              </tr>
                            </table>
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="4"></td>
                              </tr>
                            </table>
                          <table width="440" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="110"><div align="center"><a href="http://www.acool.com/tetris_info.html" target="_blank"><img src="images/acoolgame/tetris.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/mahjong_info.html" target="_blank"><img src="images/acoolgame/maj.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/tank_info.html" target="_blank"><img src="images/acoolgame/tank.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/bowman_info.html" target="_blank"><img src="images/acoolgame/bowman.jpg" width="100" height="75" border="0" /></a></div></td>
                              </tr>
                              <tr>
                                <td width="110"><div align="center"><a href="http://www.acool.com/tetris_info.html" target="_blank">Acool Tetris </a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/mahjong_info.html" target="_blank">Mahjong Hero</a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/tank_info.html" target="_blank">Tank Hour</a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/bowman_info.html" target="_blank">Bowman Legend</a></div></td>
                              </tr>
                            </table>
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="4"></td>
                              </tr>
                            </table>
                          <table width="440" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="110"><div align="center"><a href="http://www.acool.com/puzzle_info.html" target="_blank"><img src="images/acoolgame/diamond.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/ocean_info.html" target="_blank"><img src="images/acoolgame/ocean.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/matching_info.html" target="_blank"><img src="images/acoolgame/matching.jpg" width="100" height="75" border="0" /></a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/jigsaw_info.html" target="_blank"><img src="images/acoolgame/jigsaw.jpg" width="100" height="75" border="0" /></a></div></td>
                              </tr>
                              <tr>
                                <td width="110"><div align="center"><a href="http://www.acool.com/puzzle_info.html" target="_blank">Diamond Puzzle</a></div></td>
                                <td width="110"><p align="center"><a href="http://www.acool.com/ocean_info.html" target="_blank">The Fight For Ocean</a></p></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/matching_info.html" target="_blank">Acool Picture Matching</a></div></td>
                                <td width="110"><div align="center"><a href="http://www.acool.com/jigsaw_info.html" target="_blank">Acool Jigsaw</a></div></td>
                              </tr>
                            </table>
                        </div></td>
                      </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="images/con_ingbg06.jpg" width="960" height="10" /></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="10" background="images/con_bg4.jpg"></td>
  </tr>
</table>
<div style="height:10px"></div>



<table width="982" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		     <%
		i=1
		maxList=8
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select id,name,classid from class where classid='0'"
		rs.open sql,conn,1,1
		do while not rs.EOF
		name=replace(rs("name"),"ÀàÀà","Àà")
		id=rs("id")
			set rsBig = server.CreateObject("ADODB.RecordSet")
			sqlBig="select count(id) from flash where nclass='"&id&"'"
			rsBig.open sqlBig,conn,1,1
			countBig=rsBig(0)
			rsBig.close
			set rsBig=nothing


	  %>
<div class="left" style="width:450px; overflow-x:hidden ; padding-right:10px ; padding-left:25px">   
<table width="450" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25"><table width="450" height="25" border="0" cellpadding="0" cellspacing="0" background="images/class_bg01.jpg">
      <tr>
        <td width="380"><div align="left"> <a href="/<%=makeUrl_class%>/<%=left(md5(id&md5Str),1)&id%>_1/" class="class_font1"><%=name%></a></div></td>
        <td width="70"><a href="/<%=makeUrl_class%>/<%=left(md5(id&md5Str),1)&id%>_1/" class="class_font2">view all </a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="4"></td>
      </tr>
    </table>
        <table width="450" height="200" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><div class="indexlist">
  <%
		j=1
		maxList2=9
		set rs2 = server.CreateObject("ADODB.RecordSet")
		sql2="select top 9 id,flashname,spic,pic from flash where  nclass='"&id&"' order by id desc"
		rs2.open sql2,conn,1,1
		do while not rs2.EOF
		if j<=3 then
	  %>

  <div class="ilist">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="97" height="77" align="center"><a  href="/<%=makeUrl_flash%>/<%=left(md5(rs2("id")&md5Str),1)&rs2("id")%>/" target="_blank"><img src="flashspic/<%=rs2("spic")%>" width="100" height="75"/></a></td>
      </tr>
      <tr>
        <td height="22" align="center"><a href="/<%=makeUrl_flash%>/<%=left(md5(rs2("id")&md5Str),1)&rs2("id")%>/" target="_blank"><%=left(rs2("flashname"),20)%></a></td>
      </tr>
    </table>
  </div>
  <%
		 end if
			j=j+1
			if j>maxList2 then exit do
			rs2.movenext
			loop
			rs2.close
			set rs2=nothing
	 	 %>
  <div class="ilist2 right">
    <%
		j=1
		maxList2=9
		set rs2 = server.CreateObject("ADODB.RecordSet")
		sql2="select top 9 id,flashname,pic from flash where  nclass='"&id&"' order by hits desc"
		rs2.open sql2,conn,1,1
		do while not rs2.EOF
		if j>=4 then
	  %>
    <div><font color="#F66500">¡¤ </font><a href="/<%=makeUrl_flash%>/<%=left(md5(rs2("id")&md5Str),1)&rs2("id")%>/" target="_blank"><%=left(rs2("flashname"),18)%></a></div>
    <%
		 end if
			j=j+1
			if j>maxList2 then exit do
			rs2.movenext
			loop
			rs2.close
			set rs2=nothing
	 	 %>
  </div>
</div></td>
          </tr>
      </table></td>
  </tr>
</table>
</div>
<%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>	
	</td>
  </tr>
</table>
<div style="height:10px"></div>

<div style="height:10px"></div>


<table width="982" height="150" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/footer_bg01.jpg" bgcolor="#202020"><table width="935" height="111" border="0" align="center" cellpadding="0" cellspacing="0" id="footer">
      <tr>
        <td width="250"><img src="images/footer_logo.jpg" width="244" height="50" /></td>
        <td width="25" background="images/xx2.jpg"> </td>
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
              2011 Acool Games. All rights reserved. </div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>

</body>
</html>
