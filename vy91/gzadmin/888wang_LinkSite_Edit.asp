<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'===========�뱣����Ȩ��Ϣ,���ȥ���������ṩ��ط���==============
' 888������ϵͳ V8.1 ��
' �ܷ���ַ��www.888wang.com
' ����֧��: QQ:56566918
' �ͷ�����www.888wang.com��վ�Ŀͷ�QQ
' �绰:15918529718
'==================================================================
%>
<link href="inc/Style.Css" rel="stylesheet" type="text/css">
<%
id=request.QueryString("id")
set rs=server.createobject("adodb.recordset")
sql="select * from FriendSite where id="&id
rs.open sql,conn,1,1
if rs.eof then
	errmsg=errmsg+"<br>"+"<li>������������ϵ����Ա"
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
            <td width="100%" height="22" colspan=2 align=center>�� �� �� �� վ ��</td>
          </tr>
          <tr>
            <td width="15%" class=tdbg align="right">վ����</td>
            <td class=tdbg width="85%"><input class=input  type="text" name="SiteName" value="<%=SiteName%>" size="20"></td>
          </tr>
          <tr>
            <td class=tdbg align="right">��ַ��</td>
            <td class=tdbg ><input class=input  type="text" name="SiteUrl" value="<%=SiteUrl%>" size="20"></td>
          </tr>
          
          <tr>
            <td class=tdbg align="right">վ����</td>
            <td class=tdbg ><input class=input  type="text" name="SiteAdmin" value="<%=SiteAdmin%>" size="20"></td>
          </tr>
          <tr>
            <td class=tdbg align="right">Logo��ַ��</td>
            <td class=tdbg ><input class=input  type="text" name="LogoUrl" value="<%=LogoUrl%>" size="40">&nbsp;&nbsp;<img src="<%=LogoUrl%>" width=88 height=31 border=0 alt="<%=LogoUrl%>"></td>
          </tr>
          <tr>
            <td class=tdbg align="right">��飺</td>
            <td class=tdbg ><TEXTAREA class=input  name="SiteIntro" rows=5 cols="75"><%=SiteIntro%></TEXTAREA></td>
          </tr>
          <tr>
            <td class=tdbg colspan=2 align=center>
              <input class=input type="hidden" value="edit" name="act">
              <input class=input  type="submit" value=" �� �� " name="cmdok">&nbsp; 
              <input class=input  type="reset" value=" �� �� "  name="cmdcancel">
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



