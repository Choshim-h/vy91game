<!-- #include file="conn.asp" -->
<%

dim body,r_id,typeid
body=request("content")
body=replace(body,"<","〈")
body=replace(body,">","〉")
r_id=request("r_id")
typeid=request("typeid")
sql="select * from content where id is null"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
rs("name")=request("username")
rs("typeid")=request("typeid")
rs("body")=body
rs("r_id")=r_id
rs("rad")=request("rad")
rs("time")=now
rs("ip")=getIP()
rs("delFlag")="yes"
rs.update
set rs=nothing

'--获取IP函数-------------------------------
Function getIP() 
Dim strIPAddr 
If Request.ServerVariables("HTTP_X_FORWARDED_FOR") = "" OR InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), "unknown") > 0 Then 
strIPAddr = Request.ServerVariables("REMOTE_ADDR") 
ElseIf InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ",") > 0 Then 
strIPAddr = Mid(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), 1, InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ",")-1) 
ElseIf InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ";") > 0 Then 
strIPAddr = Mid(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), 1, InStr(Request.ServerVariables("HTTP_X_FORWARDED_FOR"), ";")-1) 
Else 
strIPAddr = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
End If 
getIP = Trim(Mid(strIPAddr, 1, 30)) 
End Function


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>评论发表成功</title>
<style type="text/css">
<!--
.STYLE1 {
	color: #999999;
	font-size: 12px;
	text-decoration: none;
	line-height: 25px;
}
.STYLE2 {font-size: 14px}
body {
	margin-top: 100px;
}
.STYLE3 {
	color: #FF6600;
	font-weight: bold;
	font-size: 12px;
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
-->
</style>
</head>

<body>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="480">
  <tr>
    <td><img name="reg_03" src="imamges/reg_03.jpg" width="6" height="104" border="0" id="reg_03" alt="" /></td>
    <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="468">
      <tr>
        <td><img name="reg_04" src="imamges/reg_04.jpg" width="468" height="4" border="0" id="reg_04" alt="" /></td>
      </tr>
      <tr>
        <td width="468" height="94" background="imamges/reg_bg.jpg"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="25"><center>
                <a href="javascript:history.go(-1)"></a>
                <p class="STYLE2">评论发表成功，待审核后显示！</p>
              <p><a href="#" class="STYLE3" onClick="javascript:self.close()">关闭页面</a></p>
            </center></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img name="reg_08" src="imamges/reg_08.jpg" width="468" height="6" border="0" id="reg_08" alt="" /></td>
      </tr>
    </table></td>
    <td><img name="reg_05" src="imamges/reg_05.jpg" width="6" height="104" border="0" id="reg_05" alt="" /></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td> <center>
      <span class="STYLE1">      2010 甘蔗网（www.GanZhe.com）为大家打造轻松好玩的精品小游戏网站！      </span>
    </center></td>
  </tr>
</table>
</body>
</html>
