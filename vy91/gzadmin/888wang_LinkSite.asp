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
'===========�뱣����Ȩ��Ϣ,���ȥ���������ṩ��ط���==============
' 888������ϵͳ V8.1 ��
' �ܷ���ַ��www.888wang.com
' ����֧��: QQ:56566918
' �ͷ�����www.888wang.com��վ�Ŀͷ�QQ
' �绰:15918529718
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
	response.write "<p align='center'>��ʱû������վ��</p>" 
else 
%>
      <table width="98%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#F6F6F6" class="bordercolor" >
             <form method="POST" action="888wang_LinkSite_Err.asp?act=set">
          <tr class="bg1">
            <td width="100%" height="22" colspan=10 align=center>�� �� �� �� վ ��</td>
          </tr>
          <tr>
            
            <td width="5%" class=tdbg align="center">ID</td>
            <td width="10%" class=tdbg align="center">վ��</td>
            <td width="10%" class=tdbg align="center">��ַ</td>
            <td width="10%" class=tdbg align="center">���</td>
            <td width="20%" class=tdbg align="center">��վLogo</td>
            <td width="10%" class=tdbg align="center">վ��</td>
            <td width="5%" class=tdbg align="center">�Ƽ�</td>
            <td width="5%" class=tdbg align="center">�޸�</td>
            <td width="5%" class=tdbg align="center">ɾ��</td>
          </tr>
<%
do while not rs.eof
%>
          <tr>
          
            <td class=tdbg width="5%" align="center"><%=rs("ID")%></td>
            <td class=tdbg width="10%" align="center"><%=rs("SiteName")%></td>
            <td class=tdbg width="10%" align=center><a href="<%=rs("SiteUrl")%>" target="_blank" title="<%=rs("SiteUrl")%>">��վ��ַ</a></td>
            <td class=tdbg width="10%" align=center><a style="cursor:hand" title="<%if rs("SiteIntro")="" or isnull(rs("SiteIntro")) then%>��<%else%><%=rs("SiteIntro")%><%end if%>">��վ���</td>
            <td class=tdbg width="20%" align=center><%if not isNull(rs("LogoUrl")) then%><img src="<%=rs("LogoUrl")%>" width=88 height=31 border=0 alt="<%=rs("LogoUrl")%>"><%end if%></td>
            <td class=tdbg width="10%" align="center"><%=rs("SiteAdmin")%></td>
            <td class=tdbg width="5%" align="center"><input class=input onClick="javascript:window.open('888wang_LinkSite_Err.asp?act=SetIsGood&id=<%=rs("ID")%>','_self','')" type="button" value="<%if rs("IsGood")="1" then%>���Ƽ�<%else%>δ�Ƽ�<%end if%>" name="button1"></td>
            <td class=tdbg width="5%" align="center"><input class=input onClick="javascript:window.open('888wang_LinkSite_Edit.asp?id=<%=rs("ID")%>','_self','')" type="button" value="�޸�" name="button2"></td>
            <td class=tdbg width="5%" align="center"><input class=input onClick="javascript:window.open('888wang_LinkSite_Err.asp?act=del&id=<%=rs("ID")%>','_self','')" type="button" value="ɾ��" name="button3"></td>
          </tr>
<%
rs.movenext
loop
end if
rs.Close
%>
          <tr>
            <td colspan=10 class=tdbg height=25 align=center><input class=input onClick="javascript:window.open('888wamg_LinkSite_Acction_Add.asp?act=add','_self','')" type="button" value="�������վ" name="button"></td>
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


