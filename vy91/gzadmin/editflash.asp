<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("id")<>"" then
Sql="Select * From flash where ID="&Request("ID")
Set Rs1=Server.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn,1,1
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH修改</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="36" bgcolor="#f1f1f1"> 
      <div align="center">修改<%=rs1("flashname")%></div></td>
  </tr>
</table>
<table width="640" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#C1DFDF">
  <form name="form2" method="post" action="saveflash.asp?action=edit&id=<%=request("id")%>">
    <tr bgcolor="#FFFFFF">
      <td height="25" colspan="4" align="center"><img src="<%=rs1("mpic")%>" width="60"><img src="<%=rs1("spic")%>" width="120"><img src="<%=rs1("pic")%>" width="120"><img src="<%=rs1("pic1")%>" width="120"><img src="<%=rs1("pic2")%>" width="120"></td>
    </tr>
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
          <option value="<%=rs("id")%>" <%if rs("name")=rs1("classname") then%>selected<%end if%>><%=rsadd("name")%>>>>——<%=rs("name")%></option>
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
      <td height="25" colspan="3"> <input name="flashname" type="text" id="flashname" value="<%=rs1("flashname")%>" size="60">      </td>
    </tr>

    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">标签：</td>
      <td height="25" colspan="3"><input name="tag" type="text" id="tag" value="<%=rs1("tag")%>" size="60"> 
      用,号区分 </td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">分级：</td>
      <td height="25" colspan="3">
        <input type="radio" name="ratings" value="1" <%if rs1("ratings")="1" then%>checked<%end if%>>
        所有用户
        <input type="radio" name="ratings" value="2" <%if rs1("ratings")="2" then%>checked<%end if%>>
        所有年满10周岁的用户
        <input type="radio" name="ratings" value="3" <%if rs1("ratings")="3" then%>checked<%end if%>>
        青少年
        <input type="radio" name="ratings" value="4" <%if rs1("ratings")="4" then%>checked<%end if%>>
        成年人
        <input type="radio" name="ratings" value="5" <%if rs1("ratings")="5" then%>checked<%end if%>>
        仅限成人 </td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> 地址：</td>
      <td height="25" colspan="3"> <input name="flashurl" type="text" id="flashurl" value="<%=rs1("flashurl")%>" size="60"> <a href=javascript:upwin("userupload.asp?piclb=flashurl")>上传游戏 </a><br>游戏上传到<%=swfFolder%></td>
    </tr>
                    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFFFF">图标：</td>
      <td height="25" colspan="3" bgcolor="#FFFFFF"><input name="mpic" type="text" id="mpic" value="<%=rs1("mpic")%>" size="40">
          <a href=javascript:upwin("userupload.asp?piclb=mpic")>上传图片 </a><br>
        图片上传到<%=picFolder%> 大小：228x228</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">官网连接：</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="macoolurl" type="text" id="macoolurl" value="<%=rs1("macoolurl")%>" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">安卓连接：</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="androidurl" type="text" id="androidurl" value="<%=rs1("androidurl")%>" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right" bgcolor="#FFFF66">IOS连接：</td>
      <td height="25" colspan="3" bgcolor="#FFFF66"><input name="iosurl" type="text" id="iosurl" value="<%=rs1("iosurl")%>" size="65"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">&nbsp;</td>
      <td height="25" colspan="3">图片大小：640x960</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片1：</td>
      <td height="25" colspan="3"><input name="spic" type="text" id="spic" value="<%=rs1("spic")%>" size="60">
        <a href=javascript:upwin("userupload.asp?piclb=spic")>上传图片 </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片2：</td>
      <td height="25" colspan="3"><input name="pic1" type="text" id="pic1" value="<%=rs1("pic1")%>" size="60">
          <a href=javascript:upwin("userupload.asp?piclb=pic1")>上传图片 </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片3：</td>
      <td height="25" colspan="3"><input name="pic" type="text" id="pic" value="<%=rs1("pic")%>" size="60">
          <a href=javascript:upwin("userupload.asp?piclb=pic")>上传图片 </a></td>
    </tr>
  
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">图片4：</td>
      <td height="25" colspan="3"><input name="pic2" type="text" id="pic2" value="<%=rs1("pic2")%>" size="60">
        <a href=javascript:upwin("userupload.asp?piclb=pic2")>上传图片 </a></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">视频地址：</td>
      <td height="25" colspan="3"><input name="videourl" type="text" id="video" value="<%=rs1("videourl")%>" size="60"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right">分辨率：</td>
      <td height="25">宽
        <input name="flashwidth" type="text" id="flashwidth" value="<%=rs1("flashwidth")%>" size="4" maxlength="3"></td>
      <td height="25">高
        <input name="flashheight" type="text" id="flashheight" value="<%=rs1("flashheight")%>" size="4" maxlength="3"></td>
      <td height="25">是否有排行： 是
        <input type="radio" name="rank" value="1" <%if rs1("rank")="1" then%>checked<%end if%>>
否
<input name="rank" type="radio" value="0" <%if rs1("rank")<>"1" then%>checked<%end if%>></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="right"> 大小：</td>
      <td width="15%" height="25"><input name="size" type="text" id="size" value="<%=rs1("size")%>" size="10"></td>
      <td width="26%" height="25">星级： <select name="hot" id="hot">
          <option value="1" <%if rs1("hot")="1" then%>selected<%end if%>>1星级</option>
          <option value="2" <%if rs1("hot")="2" then%>selected<%end if%>>2星级</option>
          <option value="3" <%if rs1("hot")="3" then%>selected<%end if%>>3星级</option>
          <option value="4" <%if rs1("hot")="4" then%>selected<%end if%>>4星级</option>
          <option value="5" <%if rs1("hot")="5" then%>selected<%end if%>>5星级</option>
        </select> </td>
      <td width="42%" height="25">是否推荐： 
        是
        <input type="radio" name="tj" value="yes" <%if rs1("tj")="yes" then%>checked<%end if%>>
否
<input name="tj" type="radio" value="no" <%if rs1("tj")="no" then%>checked<%end if%>></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="26" align="right"> 链接：</td>
      <td height="26" colspan="2"><select name="zz" id="zz">
          <option value="0" <%if rs1("zz")="0" then%>selected<%end if%>>开放链接</option>
          <option value="1" <%if rs1("zz")="1" then%>selected<%end if%>>屏蔽链接</option>
        </select>     </td>
      <td height="26">发布人：
        <input name="user" type="text" id="user" value="admin" size="10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="22" align="right"> 来源链接：</td>
      <td height="22" colspan="2"> <input name="geshou" type="text" id="geshou" value="<%=rs1("geshou")%>"></td>
      <td height="22">嵌套： 
        是
<input type="radio" name="url" value="1" <%if rs1("url")="1" then%>checked<%end if%>>
否
<input name="url" type="radio" value="0" <%if rs1("url")<>"1" then%>checked<%end if%>></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="41" align="right">操作说明：</td>
      <td colspan="3"><textarea name="caozuo" cols="60" rows="5" id="textarea2"><%=rs1("caozuo")%></textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="41" align="right"> 内容简介：</td>
      <td colspan="3"> <textarea name="body" cols="60" rows="10" id="textarea"><%=rs1("body")%></textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" align="right"><font color="#FF0000">中文名称：</font></td>
      <td height="25" colspan="3"><input name="cnflashname" type="text" id="flashname2" value="<%=rs1("cnflashname")%>" size="40"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right"><font color="#FF0000">中文操作说明：</font></td>
      <td colspan="3"><textarea name="cncaozuo" cols="60" rows="5" id="cncaozuo"><%=rs1("cncaozuo")%></textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right"><font color="#FF0000">中文内容简介：</font></td>
      <td colspan="3"><textarea name="cnbody" cols="60" rows="10" id="cnbody"><%=rs1("cnbody")%></textarea></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="40" align="right">发布时间：</td>
      <td colspan="3"><input name="sj" type="text" id="sj" value="<%=rs1("sj")%>">      </td>
    </tr>

    <tr bgcolor="#FFFFFF"> 
      <td height="31" align="right">&nbsp;</td>
      <td colspan="3"><input type="submit" name="Submit" value="确定"></td>
    </tr>
  </form>
</table>
</body>
</html>
<%
Rs1.Close
Set Rs1=nothing
%>
<%
else
response.write"参数错误"
end if
%>



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
