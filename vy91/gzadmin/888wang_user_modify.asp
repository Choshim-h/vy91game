<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->

<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->

<%
id=request.QueryString("id")
set rs=server.createobject("adodb.recordset")
sql="select * from [user] where id="&id
rs.open sql,conn,1,1
if rs.eof then
	errmsg="<br>������������ϵ����Ա"
	call error()
	Response.end
else
	Username=rs("Username")
	Password=rs("Password")
	Sex=rs("Sex")
	Email=rs("Email")
	Tel=rs("Tel")
	Name=rs("Name")
	Address=rs("Address")
	Youbian=rs("Youbian")
	Shenfenzheng=rs("Shenfenzheng")
	loginip=rs("loginip")
	oicq=rs("oicq")
	adddate=rs("adddate")
	logindate=rs("logindate")
	question=rs("question")
	answer=rs("answer")
	message=rs("message")
	
	userScore=rs("userScore")
	love=rs("love")
	pic=rs("pic")
rs.close
end if

%>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<div align="center">

      <table width="80%" border="1" cellpadding="0" cellspacing="0"  bordercolordark="#FFFFFF" class="bordercolor">
        <form method="POST" action="888wang_user_modify_2.asp?id=<%=id%>"  name=form2>
          <tr class="bg1">
            <td width="100%" height="20" colspan=2 align=center><font color="white"><b>�� �� �� �� �� ��</b></font></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">�û�ID��</td>
            <td width="70%"><input class=input  type="text" name="username" value="<%=Username%>" size="20"></td>
          </tr>
		   <tr>
            <td width="30%" height="20" align="right">���֣�</td>
            <td width="70%"><input class=input  type="text" name="userScore" value="<%=userScore%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right" valign="top">���룺</td>
            <td width="70%"><input class=input  type="password" name="password" value="<%=Password%>" size="20"></td>
          </tr>
		  
		  <tr>
            <td width="30%" height="20" align="right" valign="top">��ʾ���⣺</td>
            <td width="70%"><input class=input  type="question" name="question" value="<%=question%>" size="20"></td>
          </tr>
		  
		    <tr>
            <td width="30%" height="20" align="right" valign="top">�𰸣�</td>
            <td width="70%"><input class=input  type="answer" name="answer" value="<%=answer%>" size="20"></td>
          </tr>
		  
		     <tr>
            <td width="30%" height="20" align="right" valign="top">ϲ����</td>
            <td width="70%"><input class=input  type="love" name="love" value="<%=love%>" size="20"></td>
          </tr>
		  
		   <tr>
            <td width="30%" height="20" align="right" valign="top">��ϸ��Ϣ��</td>
            <td width="70%"><textarea name="message" cols="50" rows="8" id="message"><%=message%></textarea></td>
		   </tr>
		  
          <tr>
            <td width="30%" height="20" align="right">�ƺ���</td>
            <td width="70%"><input class=input  type="text" name="Sex" value="<%=Sex%>" size="20"></td>
            </td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">E-mail��</td>
            <td width="70%"><input class=input  type="text" name="Email" value="<%=Email%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">��ʵ������</td>
            <td width="70%"><input class=input  type="text" name="Name" value="<%=Name%>" size="20"></td>
          </tr>

          <tr>
            <td width="30%" height="20" align="right">���֤�ţ�</td>
            <td width="70%"><input class=input  type="text" name="Shenfenzheng" value="<%=Shenfenzheng%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">��ϵ�绰��</td>
            <td width="70%"><input class=input  type="text" name="Tel" value="<%=Tel%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">��ϸ��ַ��</td>
            <td width="70%"><input class=input  type="text" name="Address" value="<%=Address%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">�������룺</td>
            <td width="70%"><input class=input  type="text" name="Youbian" value="<%=Youbian%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">OICQ���룺</td>
            <td width="70%"><input class=input  type="text" name="oicq" value="<%=oicq%>" size="20"></td>
          </tr>
           <tr>
            <td width="30%" height="20" align="right">ע�����ڣ�</td>
            <td width="70%"><%=adddate%></td>
          </tr>
           <tr>
            <td width="30%" height="20" align="right">����½��</td>
            <td width="70%"><%=logindate%></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">��� I P��</td>
            <td width="70%"><%=loginip%></td>
          </tr>

          <tr align="center">
            <td colspan=2>
              <input class=input  type="hidden" value="edit" name="act">
              <input type="submit" name="Submit" value="�ύ">
              &nbsp; 
              <input class=input  type="reset" value=" �� �� " name="cmdcance2l">
            </td>
          </tr>
        </form>
  </table>

</div>
<%
set rs=nothing
conn.close
set conn=nothing
%></body></html>







