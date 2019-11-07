<!--#Include File="Conn.asp" -->
<!--#include file="CheckPost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'读取网站配置信息,888wang.com音乐网站系统，QQ：56566918
	set rs = server.CreateObject("ADODB.RecordSEt")
	sql="select top 1 * from [system]"
	rs.open sql,conn,1,1
	if not rs.EOF then
		CountCode = rs("CountCode")
	end if
	rs.close
	'response.write Copyright
	set rs=nothing
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta copy="程序制作 [蒋崇仁 QQ:56566918] ; 版权所有!">
<link href="Style.css" rel="stylesheet" type="text/css">
<title></title>
<script language="javascript" type="text/javascript">
 function change(){
 form1.body.value="document.writeln(\""+form1.osource.value.replace(/\\/g,"\\\\").replace(/\//g,"\\/").replace(/\'/g,"\\\'").replace(/\"/g,"\\\"").split('\r\n').join("\");\ndocument.writeln(\"")+"\");"
 }
</script>
</head>

<body topmargin="1" leftmargin="1" onLoad="change()">
<form action="make_count_ok.asp" name="form1" method="post">
  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="0" class="bordercolor">
  <tr class="bg1">
    <td>生成网站顶部文件，此步骤自动给底部模板转为js代码，你需要做的是点击--生成</td>
  </tr>
  <tr>
    <td>转为js前</td>
  </tr>
  <tr>
    <td align="center"><textarea name="osource" cols="100" rows="10" id="osource" onpropertychange="change()"><%=CountCode%>
</textarea></td>
  </tr>
  <tr>
    <td>转换js后：</td>
  </tr>
  <tr>
    <td align="center"><textarea name="body" cols="100" rows="10" id="oresult2" onload='this.select();oresult.createtextrange().execcommand("copy")'></textarea></td>
  </tr>
  <tr>
    <td align="center"><input type="submit" name="Submit" value="生成" /></td>
  </tr>
</table>
</form>
</body>
</html>


