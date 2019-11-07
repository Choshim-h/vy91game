<META HTTP-EQUIV="expires" CONTENT="0">
<% Response.Expires = -1
  Response.ExpiresAbsolute = Now() - 1
  Response.cachecontrol = "no-cache"
 %>
<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="top.asp"-->
<%
'===========请保留版权信息,如果去除，将不提供相关服务==============
' 888网音乐系统 V8.1 版
' 管方网址：www.888wang.com
' 技术支持: QQ:56566918
' 客服：见www.888wang.com网站的客服QQ
' 电话:15918529718
'==================================================================
%>
<link href="Inc/Style.css" rel="stylesheet" type="text/css" class="bordercolor">
<table border="0" width="100%" cellspacing="1" cellpadding="1">
  <tr>
    <td align=center valign=top>
<%
set rs=server.createobject("adodb.recordset")
sql="select * from FriendSite order by id desc"
rs.open sql,conn,1,1
if rs.eof and rs.bof then 
	response.write "<p align='center'>暂时没有友情站点</p>" 
else 
%>
      <table width="98%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#F6F6F6" class="bordercolor" >
             <form method="POST" action="888wang_LinkSite_Err.asp?act=set">
          <tr class="bg1">
            <td width="100%" height="22" colspan=10 align=center>管 理 友 情 站 点</td>
          </tr>
          <tr>
            
            <td width="5%" class=tdbg align="center">ID</td>
            <td width="10%" class=tdbg align="center">站名</td>
            <td width="10%" class=tdbg align="center">地址</td>
            <td width="10%" class=tdbg align="center">简介</td>
            <td width="20%" class=tdbg align="center">网站Logo</td>
            <td width="10%" class=tdbg align="center">站长</td>
            <td width="5%" class=tdbg align="center">推荐</td>
            <td width="5%" class=tdbg align="center">修改</td>
            <td width="5%" class=tdbg align="center">删除</td>
          </tr>
<%
do while not rs.eof
%>
          <tr>
          
            <td class=tdbg width="5%" align="center"><%=rs("ID")%></td>
            <td class=tdbg width="10%" align="center"><%=rs("SiteName")%></td>
            <td class=tdbg width="10%" align=center><a href="<%=rs("SiteUrl")%>" target="_blank" title="<%=rs("SiteUrl")%>">网站地址</a></td>
            <td class=tdbg width="10%" align=center><a style="cursor:hand" title="<%if rs("SiteIntro")="" or isnull(rs("SiteIntro")) then%>无<%else%><%=rs("SiteIntro")%><%end if%>">网站简介</td>
            <td class=tdbg width="20%" align=center><%if not isNull(rs("LogoUrl")) then%><img src="<%=rs("LogoUrl")%>" width=88 height=31 border=0 alt="<%=rs("LogoUrl")%>"><%end if%></td>
            <td class=tdbg width="10%" align="center"><%=rs("SiteAdmin")%></td>
            <td class=tdbg width="5%" align="center"><input class=input onClick="javascript:window.open('888wang_LinkSite_Err.asp?act=SetIsGood&id=<%=rs("ID")%>','_self','')" type="button" value="<%if rs("IsGood")="1" then%>已推荐<%else%>未推荐<%end if%>" name="button1"></td>
            <td class=tdbg width="5%" align="center"><input class=input onClick="javascript:window.open('888wang_LinkSite_Edit.asp?id=<%=rs("ID")%>','_self','')" type="button" value="修改" name="button2"></td>
            <td class=tdbg width="5%" align="center"><input class=input onClick="javascript:window.open('888wang_LinkSite_Err.asp?act=del&id=<%=rs("ID")%>','_self','')" type="button" value="删除" name="button3"></td>
          </tr>
<%
rs.movenext
loop
end if
rs.Close
%>
          <tr>
            <td colspan=10 class=tdbg height=25 align=center><input class=input onClick="javascript:window.open('888wamg_LinkSite_Acction_Add.asp?act=add','_self','')" type="button" value="添加新网站" name="button"></td>
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


