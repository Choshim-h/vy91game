<!--#include file="conn.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>

<%
founderr=false
id=request.QueryString("id")
set rs=server.createobject("adodb.recordset")
sql="select * from admin where id="&id
rs.open sql,conn,1,1
if rs.eof then
	errmsg=errmsg+"<br>"+"<li>��������������ϵ����Ա"
	founderr=true
else
	Username=rs("Username")
	Password=md5(Trim(Replace(rs("Password"),"'", "")))
	oskey=rs("oskey")
rs.close

end if

if founderr=true then
	call error()
	response.end
else
%>
<!--#include file="top.asp"-->
<div align="center">
<center>
<table width="80%" border="1" align="center" cellpadding="0" cellspacing="0"  bordercolordark="#FFFFFF" class="bordercolor">
        <form method="POST" action="888wang_admin_m.asp?id=<%=id%>" id=form2 name=form2>
          <tr class="bg1">
            <td width="100%" height="20" colspan=2 align=center><font color="white"><b>�� �� �� �� Ա �� ��</b></td>
          </tr>
          <tr>
            <td width="30%" align="right" height="30">�û�����</td>
            <td width="70%">
           <input class=input  type="text" name="username" value="<%=Username%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" align="right" valign="top" height="20">���룺</td>
            <td width="70%">
           <input class=input  type="password" name="password" value="<%=Password%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" align="right" height="30">Ȩ�ޣ�</td>
            <td width="70%" height="30">
              <select class=input name="oskey" style="font-size:9pt">
                <option value=super<%if oskey="super" then%> selected<%end if%>>�߼�����Ա</option>
                <option value=check<%if oskey="check" then%> selected<%end if%>>�м�����Ա</option>
                <option value=input<%if oskey="input" then%> selected<%end if%>>��������Ա</option>
              </select>
            </td>
          </tr>
          <tr align="center">
            <td colspan=2>
             <input class=input  type="hidden" value="edit" name="act"> 
             <input class=input  type="submit" value=" �� �� " name="cmdok2">&nbsp; 
             <input class=input  type="reset" value=" �� �� " name="cmdcance2l">
            </td>
          </tr>
        </form>
</table>
</body>
</html>
<%
end if
set rs=nothing
conn.close
set conn=nothing
%>



