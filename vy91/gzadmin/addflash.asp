<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="up_config.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH添加管理</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
	<SCRIPT language="JavaScript">
		<!--
			function see() 
			{	
				if(form2.flashname.value.replace(/^\s+|\s+$/g,"")=="")
				{
					window.alert("系统提示：对不起，您还没有输入！");
  					//显示错误信息
					document.form2.flashname.focus();		
  					return  false; //离开函数
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
      <div align="center">添加FLASH</div></td>
  </tr>
</table>
<table width="640" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#C1DFDF">
  <form name="form2" method="post" action="saveflash.asp?action=add">
    <tr bgcolor="#FFFFFF"> 
      <td width="17%" height="25" align="right"> 所属类别：</td>
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
          <option value="<%=rs("id")%>"><%=rsadd("name")%>>>>——<%=rs("name")%></option>
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
      <td height="25" align="right"> 名称：</td>
      <td height="25" colspan="3"> <input name="flashname" type="text" id="flashname" size="40">
      <input name="jc" id="jc" type="button" onClick="return see()" size="18" value="重复检测" /></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">标签：</td>
      <td height="25" colspan="3"><input name="tag" type="text" id="tag" size="40">
      用,号区分 <font color="#FF0000">HTML5需加HTML5标签</font></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">分级：</td>
      <td height="25" colspan="3">
      <input type="radio" name="ratings" value="1">所有用户  
      <input type="radio" name="ratings" value="2">所有年满10周岁的用户   
      <input type="radio" name="ratings" value="3">青少年   
      <input type="radio" name="ratings" value="4">成年人   
      <input type="radio" name="ratings" value="5">仅限成人 </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> 地址：</td>
      <td height="25" colspan="3"> <input name="flashurl" type="text" id="flashurl" size="40"> <a href=javascript:upwin("userupload.asp?piclb=flashurl")>上传游戏 </a><br>游戏上传到<%=swfFolder%></td>
    </tr>
        <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFFFF">图标：</td>
      <td height="25" colspan="3" bgcolor="#FFFFFF"><input name="mpic" type="text" id="mpic" size="40">
          <a href=javascript:upwin("userupload.asp?piclb=mpic")>上传图片 </a><br>
        图片上传到<%=picFolder%> 大小：228x228</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">官网连接：</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="macoolurl" type="text" id="macoolurl" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">安卓连接：</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="androidurl" type="text" id="androidurl" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">IOS连接：</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="iosurl" type="text" id="iosurl" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">&nbsp;</td>
      <td height="25" colspan="3">图片大小：640x960</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片1：</td>
      <td height="25" colspan="3"><input name="spic" type="text" id="pic2" size="40">
        <a href=javascript:upwin("userupload.asp?piclb=spic")>上传图片 </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片2：</td>
      <td height="25" colspan="3"><input name="pic1" type="text" id="pic1" size="40">
        <a href=javascript:upwin("userupload.asp?piclb=pic1")>上传图片 </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片3：</td>
      <td height="25" colspan="3"><input name="pic" type="text" id="pic" size="40">
          <a href=javascript:upwin("userupload.asp?piclb=pic")>上传图片 </a></td>
    </tr>
     <tr bgcolor="#FFFFFF">
       <td height="25" align="right">图片4：</td>
       <td height="25" colspan="3"><input name="pic2" type="text" id="pic2" size="40">
        <a href=javascript:upwin("userupload.asp?piclb=pic2")>上传图片 </a></td>
     </tr>
     <tr bgcolor="#FFFFFF">
      <td height="25" align="right">视频地址：</td>
      <td height="25" colspan="3"><input name="videourl" type="text" id="video" size="60"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">分辨率：</td>
      <td height="25">宽
      <input name="flashwidth" type="text" id="flashwidth" value="640" size="5" maxlength="4"></td>
      <td height="25">高
      <input name="flashheight" type="text" id="flashheight" value="480" size="5" maxlength="3"></td>
      <td height="25">是否有排行： 是
        <input type="radio" name="rank" value="1">
        否
        <input name="rank" type="radio" value="0" checked></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> 大小：</td>
      <td width="15%" height="25"> <input name="size" type="text" id="size" value="500kb" size="10"></td>
      <td width="26%" height="25">星级： <select name="hot" id="hot">
          <option value="1">1星级</option>
          <option value="2">2星级</option>
          <option value="3" selected>3星级</option>
          <option value="4">4星级</option>
          <option value="5">5星级</option>
        </select> </td>
      <td width="42%" height="25">是否推荐： 是
        <input type="radio" name="tj" value="yes">
        否
        <input name="tj" type="radio" value="no" checked> </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="26" align="right"> 链接：</td>
      <td height="26" colspan="2"><select name="zz" id="zz">
  <option value="0" selected="selected">开放链接</option>
  <option value="1">屏蔽链接</option>
</select>     </td>
      <td height="26">发布人：
        <input name="user" type="text" id="user" value="admin" size="10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="22" align="right"> 经典排行：</td>
      <td height="22" colspan="2"> <input name="geshou" type="text" id="geshou" value="0" size="6" maxlength="6"></td>
      <td height="22">嵌套： 是
        <input type="radio" name="url" value="1">
否
<input name="url" type="radio" value="0" checked></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="41" align="right">操作说明：</td>
      <td colspan="3"><textarea name="caozuo" cols="60" rows="5" id="textarea">无</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="41" align="right"> 内容简介：</td>
      <td colspan="3"> <textarea name="body" cols="60" rows="10" id="textarea">无</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right"><font color="#FF0000">中文名称：</font></td>
      <td height="25" colspan="3"><input name="cnflashname" type="text" id="flashname" size="40"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right"><font color="#FF0000">中文操作说明：</font></td>
      <td colspan="3"><textarea name="cncaozuo" cols="60" rows="5" id="textarea">无</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right"><font color="#FF0000">中文内容简介：</font></td>
      <td colspan="3"><textarea name="cnbody" cols="60" rows="10" id="textarea">无</textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="40" align="right">发布时间：</td>
      <td colspan="3"><input name="sj" type="text" id="sj" value="<%=now()%>">      </td>
    </tr>

    <tr bgcolor="#FFFFFF"> 
      <td height="31" align="right">&nbsp;</td>
      <td colspan="3"><input type="submit" name="Submit" value="确定"></td>
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
