<!--顶部开始-->
<link href="/myimg/61133.css" rel="stylesheet" type="text/css" />
<div id="dingbu">
<table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td background="/images/top_img/top_bg.jpg"><table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="20" class="font1"><img src="/images/top_img/icon.gif" width="15" height="15" /></td>
        <td width="680">甘蔗网   享受轻松有趣的小游戏，请记住本站网址：www.ganzhe.com（甘蔗的拼音哦）</td>
        <td width="280">
		<span id="user" style="float:right; padding-top:2px; padding-right:10px; background:none; font-size:12px; font-weight:normal;">正在加载用户信息...</span><span class="big5"></span>
		</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="980" height="90" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="160"><img src="/images/top_img/logo.jpg" width="160" height="87" /></td>
    <td width="450" align="center"><script language="javascript" src="/otherhtml/top_1.js"></script></td>
    <td width="370"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="right"><table width="240" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <form action="/search.asp" method="post">
              </form>
            <td class="top1"><a name="StranLink" id="StranLink">繁體中文</a></td>
            <td class="top1"><span style="CURSOR: hand" onClick="window.external.addFavorite('http://www.ganzhe.com','甘蔗小游戏')" title="甘蔗小游戏">收藏本站</span> </td>
            <td class="top1"><span onClick="var strHref=window.location.href;this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.ganzhe.com');" style="CURSOR: hand">设为首页</span> </td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="right"><table width="100%" border="0" cellpadding="0" cellspacing="3">
          <tr>
            <form action="/search.asp" method="post">
              <td align="right"><input type="text" style="WIDTH: 260px; HEIGHT: 20px; background:#fff; border:solid 1px #C2C2C2; " name="www_888wang_com_gameName" /></td>
              <td width="95" align="left"><div class="ss" onClick="submit()"> </div></td>
            </form>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100%" height="41" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" bgcolor="#FA6607">
	<div class="top_menu">
<ul>
<li><a style="background-image: url(/images/top_img/menu_bg.gif);background-position: center;background-repeat: no-repeat;color: #FB2C00;" href="http://www.ganzhe.com">甘蔗首页</a></li>
<li><a href="http://www.ganzhe.com/games" target="_blank">原创游戏</a></li>
<li><a href="http://bbs.ganzhe.com/forum-18-1.html" target="_blank">资讯中心</a></li>
<li><a href="http://www.ganzhe.com/info/games/" target="_blank">下载中心</a></li>
<li><a href="http://www.ganzhe.com/much.html" target="_blank">玩得多的</a></li>
<li><a href="http://www.ganzhe.com/goog.html" target="_blank">评价好的</a></li>
<li><a href="http://bbs.ganzhe.com/" target="_blank">甘蔗论坛</a></li>
</ul> 
</div>
	</td>
  </tr>
</table>
</div>
<!--顶部结束-->
<table width="100%" height="35" border="0" cellpadding="0" cellspacing="0" class="td_class1">
    <td align="center" class="smenu">
	<div>
<table height="14" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
	  <td width="100" align="center" ><a  href="/user/userShow.asp?userName=<%=userName%>">空间首页</a></td>
	  <td width="100" align="center" ><a  href="/user/fav.asp?userName=<%=userName%>">全部收藏</a></td>
	   <td width="100" align="center" ><a  href="/user/playtime.asp?userName=<%=userName%>">最近玩过</a></td>
	   <td width="100" align="center" ><a  href="/user/message.asp?userName=<%=userName%>">详细资料</a></td>
	   <td width="100" align="center" ><%if session("username")<>"" then%>
<a href="/user/messageAdmin.asp">更改资料</a>
	  <%end if%>
    </tr>
  </table>
</div>
	
	
	
	</td>
</table>