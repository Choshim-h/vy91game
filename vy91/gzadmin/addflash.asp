<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="up_config.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH��ӹ���</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
	<SCRIPT language="JavaScript">
		<!--
			function see() 
			{	
				if(form2.flashname.value.replace(/^\s+|\s+$/g,"")=="")
				{
					window.alert("ϵͳ��ʾ���Բ�������û�����룡");
  					//��ʾ������Ϣ
					document.form2.flashname.focus();		
  					return  false; //�뿪����
				}
				else
				{
						var yhm=form2.flashname.value;
						window.open("pan_game.asp?game="+yhm+"","","toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=330,height=50,left=100,top=80");
						return false;
 
				}
			}
		-->
	</SCRIPT>
<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="36" bgcolor="#f1f1f1"> 
      <div align="center">���FLASH</div></td>
  </tr>
</table>
<table width="640" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#C1DFDF">
  <form name="form2" method="post" action="saveflash.asp?action=add">
    <tr bgcolor="#FFFFFF"> 
      <td width="17%" height="25" align="right"> �������</td>
      <td height="25" colspan="3"> <select name="classid" id="classid">
          <%
Set Rsadd=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='0'"
Rsadd.open Sql,Conn,1,3
Do While not Rsadd.Eof
%>
          <%
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='"&rsadd("id")&"'"
Rs.open Sql,Conn,1,3
Do While not Rs.Eof
%>
          <option value="<%=rs("id")%>"><%=rsadd("name")%>>>>����<%=rs("name")%></option>
          <%
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
%>
          <%
Rsadd.Movenext
Loop
Rsadd.Close
Set Rsadd=nothing
%>
        </select></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> ���ƣ�</td>
      <td height="25" colspan="3"> <input name="flashname" type="text" id="flashname" size="40">
      <input name="jc" id="jc" type="button" onClick="return see()" size="18" value="�ظ����" /></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">��ǩ��</td>
      <td height="25" colspan="3"><input name="tag" type="text" id="tag" size="40">
      ��,������ <font color="#FF0000">HTML5���HTML5��ǩ</font></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">�ּ���</td>
      <td height="25" colspan="3">
      <input type="radio" name="ratings" value="1">�����û�  
      <input type="radio" name="ratings" value="2">��������10������û�   
      <input type="radio" name="ratings" value="3">������   
      <input type="radio" name="ratings" value="4">������   
      <input type="radio" name="ratings" value="5">���޳��� </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> ��ַ��</td>
      <td height="25" colspan="3"> <input name="flashurl" type="text" id="flashurl" size="40"> <a href=javascript:upwin("userupload.asp?piclb=flashurl")>�ϴ���Ϸ </a><br>��Ϸ�ϴ���<%=swfFolder%></td>
    </tr>
        <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFFFF">ͼ�꣺</td>
      <td height="25" colspan="3" bgcolor="#FFFFFF"><input name="mpic" type="text" id="mpic" size="40">
          <a href=javascript:upwin("userupload.asp?piclb=mpic")>�ϴ�ͼƬ </a><br>
        ͼƬ�ϴ���<%=picFolder%> ��С��228x228</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">�������ӣ�</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="macoolurl" type="text" id="macoolurl" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">��׿���ӣ�</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="androidurl" type="text" id="androidurl" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">IOS���ӣ�</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="iosurl" type="text" id="iosurl" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">&nbsp;</td>
      <td height="25" colspan="3">ͼƬ��С��640x960</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">ͼƬ1��</td>
      <td height="25" colspan="3"><input name="spic" type="text" id="pic2" size="40">
        <a href=javascript:upwin("userupload.asp?piclb=spic")>�ϴ�ͼƬ </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">ͼƬ2��</td>
      <td height="25" colspan="3"><input name="pic1" type="text" id="pic1" size="40">
        <a href=javascript:upwin("userupload.asp?piclb=pic1")>�ϴ�ͼƬ </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">ͼƬ3��</td>
      <td height="25" colspan="3"><input name="pic" type="text" id="pic" size="40">
          <a href=javascript:upwin("userupload.asp?piclb=pic")>�ϴ�ͼƬ </a></td>
    </tr>
     <tr bgcolor="#FFFFFF">
       <td height="25" align="right">ͼƬ4��</td>
       <td height="25" colspan="3"><input name="pic2" type="text" id="pic2" size="40">
        <a href=javascript:upwin("userupload.asp?piclb=pic2")>�ϴ�ͼƬ </a></td>
     </tr>
     <tr bgcolor="#FFFFFF">
      <td height="25" align="right">��Ƶ��ַ��</td>
      <td height="25" colspan="3"><input name="videourl" type="text" id="video" size="60"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">�ֱ��ʣ�</td>
      <td height="25">��
      <input name="flashwidth" type="text" id="flashwidth" value="640" size="5" maxlength="4"></td>
      <td height="25">��
      <input name="flashheight" type="text" id="flashheight" value="480" size="5" maxlength="3"></td>
      <td height="25">�Ƿ������У� ��
        <input type="radio" name="rank" value="1">
        ��
        <input name="rank" type="radio" value="0" checked></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> ��С��</td>
      <td width="15%" height="25"> <input name="size" type="text" id="size" value="500kb" size="10"></td>
      <td width="26%" height="25">�Ǽ��� <select name="hot" id="hot">
          <option value="1">1�Ǽ�</option>
          <option value="2">2�Ǽ�</option>
          <option value="3" selected>3�Ǽ�</option>
          <option value="4">4�Ǽ�</option>
          <option value="5">5�Ǽ�</option>
        </select> </td>
      <td width="42%" height="25">�Ƿ��Ƽ��� ��
        <input type="radio" name="tj" value="yes">
        ��
        <input name="tj" type="radio" value="no" checked> </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="26" align="right"> ���ӣ�</td>
      <td height="26" colspan="2"><select name="zz" id="zz">
  <option value="0" selected="selected">��������</option>
  <option value="1">��������</option>
</select>     </td>
      <td height="26">�����ˣ�
        <input name="user" type="text" id="user" value="admin" size="10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="22" align="right"> �������У�</td>
      <td height="22" colspan="2"> <input name="geshou" type="text" id="geshou" value="0" size="6" maxlength="6"></td>
      <td height="22">Ƕ�ף� ��
        <input type="radio" name="url" value="1">
��
<input name="url" type="radio" value="0" checked></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="41" align="right">����˵����</td>
      <td colspan="3"><textarea name="caozuo" cols="60" rows="5" id="textarea">��</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="41" align="right"> ���ݼ�飺</td>
      <td colspan="3"> <textarea name="body" cols="60" rows="10" id="textarea">��</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right"><font color="#FF0000">�������ƣ�</font></td>
      <td height="25" colspan="3"><input name="cnflashname" type="text" id="flashname" size="40"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right"><font color="#FF0000">���Ĳ���˵����</font></td>
      <td colspan="3"><textarea name="cncaozuo" cols="60" rows="5" id="textarea">��</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right"><font color="#FF0000">�������ݼ�飺</font></td>
      <td colspan="3"><textarea name="cnbody" cols="60" rows="10" id="textarea">��</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="40" align="right">����ʱ�䣺</td>
      <td colspan="3"><input name="sj" type="text" id="sj" value="<%=now()%>">      </td>
    </tr>

    <tr bgcolor="#FFFFFF"> 
      <td height="31" align="right">&nbsp;</td>
      <td colspan="3"><input type="submit" name="Submit" value="ȷ��"></td>
    </tr>
  </form>
</table>
</body>
</html>


<script language="JavaScript" type="text/JavaScript">
function upwin(rem)
{ 
	window.open(rem,'vote','width=400,height=100,directories=no,top=300,left=200,toolbar=no,status=no,scrollbars=no,resizable=yes'); 
	}
function upwin1(rem)
{ 
	window.open(rem,'vote','width=400,height=100,directories=no,top=300,left=200,toolbar=no,status=no,scrollbars=no,resizable=yes'); 
	}

</script>
