<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<%
set rs=server.CreateObject("ADODB.RecordSet")
if request("edit")="save" then
if request.form("body")<>"" then
rs.open "select * from mb",conn,1,2
if request("type")="list" then
rs("list")=request.form("body")
elseif request("type")="show" then
rs("show")=request.form("body")
end if
rs.Update
rs.close 
messages="成功:修改网页模板完成"
else
messages="错误:模版内容不能为空"
end if
end if
rs.open "select * from mb",conn,1
if request("type")="list" then
title="分类页"
mb=rs("list")
elseif request("type")="show" then
title="FLASH页"
mb=rs("show")
end if
rs.close          
set rs=nothing            
conn.close          
set conn=nothing   
%> 
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<style>
td{font-size:9pt;line-height:140%} 
body{font-size:9pt;line-height:140%} 
a:link       { color: #0033CC; text-decoration: none }
a:visited    { color: #0033CC; text-decoration: none }
a:active     { color: #4D9CC8; text-decoration: none }
a:hover      { color: #4D9CC8; text-decoration: underline}
</style>
<SCRIPT LANGUAGE="JavaScript">
helpstat = false;
stprompt = true;
basic = false;
function thelp(swtch){
	if (swtch == 1){
		basic = false;
		stprompt = false;
		helpstat = true;
	} else if (swtch == 0) {
		helpstat = false;
		stprompt = false;
		basic = true;
	} else if (swtch == 2) {
		helpstat = false;
		basic = false;
		stprompt = true;
	}
}

function AddText(NewCode) {
document.frmAnnounce.body.value+=NewCode
}

function openscriphtml()
{
if (navigator.appName!="Microsoft Internet Explorer")
   alert("此功能 Netscape 用户不能使用！")
else
   {newwin=window.open('html_editor.htm','','width=544,height=294');
    newwin.focus();
   }
}
function runEx(){
//alert('请注意，按下确定将生成页面，按下后请稍后....');
var winEx = window.open("", "winEx", "width=300,height=200,status=yes,menubar=yes,scrollbars=yes,resizable=yes"); winEx.document.open("text/html", "replace"); 
winEx.document.write(unescape(event.srcElement.parentElement.children[2].value)); 
winEx.document.close(); 
}
</SCRIPT>
<script language="Javascript">
<!-- hide

function insertsmilie(smilieface){

	document.frmAnnounce.body.value+=smilieface;
}
// -->
</script>
</head>
<body topmargin="1" leftmargin="1">
<table border="0" cellspacing="1" width="100%" bgcolor="#cococo" height="100%">
<form name="frmAnnounce" method="post" action="moban.asp?edit=save&type=<%=request("type")%>">
  <tr>
    <td width="100%" bgcolor="#4D9CC8">
    <b><font color="#FFFFFF"><%=title%>(HTML)页模板</font></b></td>
  </tr>
 <%if messages<>"" then%>
         <tr>
            <td bgcolor="#FFFFFF"><font color="#4D9CC8">·</font><%=messages%>,时间<%=Now()%></td>    
          </tr>
       <%end if%>
          <%if request("type")="list" then%>
          <tr>
            
      <td bgcolor="#FFFFFF">代号:网页标题&lt;!classname!&gt; 一级分类：&lt;!top1!&gt;二级分类&lt;!top2!&gt;排行15：&lt;!top15!&gt;本类推荐：&lt;!tj15!&gt;FLASH列表：&lt;!body!&gt; 分页部分：&lt;!plist_bottom!&gt;
        网站名称：webname 网站网址：weburl 站长名字：zzname 邮箱：webmail QQ：webqq </td>    
          </tr>
          <%elseif request("type")="show" then%>
          <tr>
            
      <td bgcolor="#FFFFFF">FLASH名称：&lt;!flashname!&gt;FLASH类别：&lt;!class!&gt;FLASH地址：&lt;!flashurl!&gt;FLASH大小：&lt;!size!&gt;FLASH作者：&lt;!zz!&gt;FLASH歌手：&lt;!geshou!&gt;<br>
        FLASH简介：&lt;!body!&gt;FLASH点击数：&lt;!hits!&gt;FLASH时间：&lt;!sj!&gt; 网站名称：webname 网站网址：weburl 站长名字：zzname 邮箱：webmail QQ：webqq </td>    
          </tr>  
        
          </tr>
          <%end if%>
  <tr>
    <td width="100%" bgcolor="#FFFFFF" height="100%"><textarea style="width:100%; height:100%;" rows="19" name="body" cols="102"><%=mb%></textarea></td>
  </tr>
  <tr>
    <td width="100%" bgcolor="#DFDFDF">
    <p align="center">        
    <input name="change" value="修改<%=title%>(HTML)页模板" type='submit'> [<a href="javascript:openscriphtml()">HTML编辑器</a>]</td>
  </tr>
</form>
</table>
</body>    
</html>


