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
<%
id=request.QueryString("id")
set rs=server.createobject("adodb.recordset")
sql="select * from FriendSite where id="&id
rs.open sql,conn,1,1
if rs.eof then
	errmsg=errmsg+"<br>"+"<li>操作错误！请联系管理员"
	call error()
	Response.end
else
	SiteName=rs("SiteName")
	SiteUrl=rs("SiteUrl")
	SiteIntro=rs("SiteIntro")
	LogoUrl=rs("LogoUrl")
	SiteAdmin=rs("SiteAdmin")
end if
rs.close

%>

<table border="0" width="100%" cellspacing="1" cellpadding="1">
  <tr>
    <td align=center valign=top>
       <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
      <form method="POST" action="888wang_LinkSite_Err.asp?id=<%=id%>">
          <tr class="title">
            <td width="100%" height="22" colspan=2 align=center>修 改 友 情 站 点</td>
          </tr>
          <tr>
            <td width="15%" class=tdbg align="right">站名：</td>
            <td class=tdbg width="85%"><input class=input  type="text" name="SiteName" value="<%=SiteName%>" size="20"></td>
          </tr>
          <tr>
            <td class=tdbg align="right">网址：</td>
            <td class=tdbg ><input class=input  type="text" name="SiteUrl" value="<%=SiteUrl%>" size="20"></td>
          </tr>
          
          <tr>
            <td class=tdbg align="right">站长：</td>
            <td class=tdbg ><input class=input  type="text" name="SiteAdmin" value="<%=SiteAdmin%>" size="20"></td>
          </tr>
          <tr>
            <td class=tdbg align="right">Logo地址：</td>
            <td class=tdbg ><input class=input  type="text" name="LogoUrl" value="<%=LogoUrl%>" size="40">&nbsp;&nbsp;<img src="<%=LogoUrl%>" width=88 height=31 border=0 alt="<%=LogoUrl%>"></td>
          </tr>
          <tr>
            <td class=tdbg align="right">简介：</td>
            <td class=tdbg ><TEXTAREA class=input  name="SiteIntro" rows=5 cols="75"><%=SiteIntro%></TEXTAREA></td>
          </tr>
          <tr>
            <td class=tdbg colspan=2 align=center>
              <input class=input type="hidden" value="edit" name="act">
              <input class=input  type="submit" value=" 修 改 " name="cmdok">&nbsp; 
              <input class=input  type="reset" value=" 清 除 "  name="cmdcancel">
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
set conn=nothing%></body></html>



