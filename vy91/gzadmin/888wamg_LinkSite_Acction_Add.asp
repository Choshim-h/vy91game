<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'===========请保留版权信息,如果去除，将不提供相关服务==============
' 888网音乐系统 V8.1 版
' 管方网址：www.888wang.com
' 技术支持: QQ:56566918
' 客服：见www.888wang.com网站的客服QQ
' 电话:15918529718
'==================================================================
%>
<link href="inc/Style.Css" rel="stylesheet" type="text/css">
<table width="95%" border="0" align="center" cellpadding="1" cellspacing="1" class="bordercolor">
  <tr>
    <td align=center valign=top>
     <table width="100%"height="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#F6F6F6" class="border">
      <form method="POST" action="888wang_LinkSite_Err.asp?id=<%=id%>">
          <tr class="bg1">
            <td height="22" colspan="3" align="center"><strong>添 加 友 情 站 点</strong></td>
          </tr>
          <tr>
            <td width="15%" class=tdbg align="right">站名：</td>
            <td class=tdbg width="85%"><input class=input type="text" name="SiteName" size="20">
            必填 如888网 </td>
          </tr>
          <tr>
            <td class=tdbg align="right">网址：</td>
            <td class=tdbg><input class=input  type="text" name="SiteUrl" size="20">
            必填 如http://www.888wang.com</td>
          </tr>
          <tr>
            <td class=tdbg align="right">Logo路径：</td>
            <td class=tdbg><input class=input  type="text" name="LogoUrl" size="20">  
            可不填,如http://www.888wang.com/images/logo.jpg 或给logo传到网站空间，填路径也行的 </td>
          </tr>
          <tr>
            <td class=tdbg align="right">站长：</td>
            <td class=tdbg><input class=input  type="text" name="SiteAdmin" size="20">
            可不填</td>
          </tr>
          <tr>
            <td class=tdbg align="right">简介：</td>
            <td class=tdbg><TEXTAREA class=input  name="SiteIntro" rows=5 cols="75"></TEXTAREA>
            可不填</td>
          </tr>
          <tr>
            <td class=tdbg colspan=2 align=center>
              <input class=input  type="hidden" value="add" name="act">
              <input  class=input type="submit" value=" 添 加 " name="cmdok">&nbsp; 
              <input  class=input type="reset" value=" 取 消 "  name="cmdcancel">
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
<br>
<%

set rs=nothing
conn.close
set conn=nothing%>
</body>
</html>


