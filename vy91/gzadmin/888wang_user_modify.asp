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
	errmsg="<br>操作错误！请联系管理员"
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
            <td width="100%" height="20" colspan=2 align=center><font color="white"><b>修 改 用 户 资 料</b></font></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">用户ID：</td>
            <td width="70%"><input class=input  type="text" name="username" value="<%=Username%>" size="20"></td>
          </tr>
		   <tr>
            <td width="30%" height="20" align="right">积分：</td>
            <td width="70%"><input class=input  type="text" name="userScore" value="<%=userScore%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right" valign="top">密码：</td>
            <td width="70%"><input class=input  type="password" name="password" value="<%=Password%>" size="20"></td>
          </tr>
		  
		  <tr>
            <td width="30%" height="20" align="right" valign="top">提示问题：</td>
            <td width="70%"><input class=input  type="question" name="question" value="<%=question%>" size="20"></td>
          </tr>
		  
		    <tr>
            <td width="30%" height="20" align="right" valign="top">答案：</td>
            <td width="70%"><input class=input  type="answer" name="answer" value="<%=answer%>" size="20"></td>
          </tr>
		  
		     <tr>
            <td width="30%" height="20" align="right" valign="top">喜欢：</td>
            <td width="70%"><input class=input  type="love" name="love" value="<%=love%>" size="20"></td>
          </tr>
		  
		   <tr>
            <td width="30%" height="20" align="right" valign="top">详细信息：</td>
            <td width="70%"><textarea name="message" cols="50" rows="8" id="message"><%=message%></textarea></td>
		   </tr>
		  
          <tr>
            <td width="30%" height="20" align="right">称呼：</td>
            <td width="70%"><input class=input  type="text" name="Sex" value="<%=Sex%>" size="20"></td>
            </td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">E-mail：</td>
            <td width="70%"><input class=input  type="text" name="Email" value="<%=Email%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">真实姓名：</td>
            <td width="70%"><input class=input  type="text" name="Name" value="<%=Name%>" size="20"></td>
          </tr>

          <tr>
            <td width="30%" height="20" align="right">身份证号：</td>
            <td width="70%"><input class=input  type="text" name="Shenfenzheng" value="<%=Shenfenzheng%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">联系电话：</td>
            <td width="70%"><input class=input  type="text" name="Tel" value="<%=Tel%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">详细地址：</td>
            <td width="70%"><input class=input  type="text" name="Address" value="<%=Address%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">邮政编码：</td>
            <td width="70%"><input class=input  type="text" name="Youbian" value="<%=Youbian%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">OICQ号码：</td>
            <td width="70%"><input class=input  type="text" name="oicq" value="<%=oicq%>" size="20"></td>
          </tr>
           <tr>
            <td width="30%" height="20" align="right">注册日期：</td>
            <td width="70%"><%=adddate%></td>
          </tr>
           <tr>
            <td width="30%" height="20" align="right">最后登陆：</td>
            <td width="70%"><%=logindate%></td>
          </tr>
          <tr>
            <td width="30%" height="20" align="right">最后 I P：</td>
            <td width="70%"><%=loginip%></td>
          </tr>

          <tr align="center">
            <td colspan=2>
              <input class=input  type="hidden" value="edit" name="act">
              <input type="submit" name="Submit" value="提交">
              &nbsp; 
              <input class=input  type="reset" value=" 清 除 " name="cmdcance2l">
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







