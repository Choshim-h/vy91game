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
messages="�ɹ�:�޸���ҳģ�����"
else
messages="����:ģ�����ݲ���Ϊ��"
end if
end if
rs.open "select * from mb",conn,1
if request("type")="list" then
title="����ҳ"
mb=rs("list")
elseif request("type")="show" then
title="FLASHҳ"
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
   alert("�˹��� Netscape �û�����ʹ�ã�")
else
   {newwin=window.open('html_editor.htm','','width=544,height=294');
    newwin.focus();
   }
}
function runEx(){
//alert('��ע�⣬����ȷ��������ҳ�棬���º����Ժ�....');
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
    <b><font color="#FFFFFF"><%=title%>(HTML)ҳģ��</font></b></td>
  </tr>
 <%if messages<>"" then%>
         <tr>
            <td bgcolor="#FFFFFF"><font color="#4D9CC8">��</font><%=messages%>,ʱ��<%=Now()%></td>    
          </tr>
       <%end if%>
          <%if request("type")="list" then%>
          <tr>
            
      <td bgcolor="#FFFFFF">����:��ҳ����&lt;!classname!&gt; һ�����ࣺ&lt;!top1!&gt;��������&lt;!top2!&gt;����15��&lt;!top15!&gt;�����Ƽ���&lt;!tj15!&gt;FLASH�б�&lt;!body!&gt; ��ҳ���֣�&lt;!plist_bottom!&gt;
        ��վ���ƣ�webname ��վ��ַ��weburl վ�����֣�zzname ���䣺webmail QQ��webqq </td>    
          </tr>
          <%elseif request("type")="show" then%>
          <tr>
            
      <td bgcolor="#FFFFFF">FLASH���ƣ�&lt;!flashname!&gt;FLASH���&lt;!class!&gt;FLASH��ַ��&lt;!flashurl!&gt;FLASH��С��&lt;!size!&gt;FLASH���ߣ�&lt;!zz!&gt;FLASH���֣�&lt;!geshou!&gt;<br>
        FLASH��飺&lt;!body!&gt;FLASH�������&lt;!hits!&gt;FLASHʱ�䣺&lt;!sj!&gt; ��վ���ƣ�webname ��վ��ַ��weburl վ�����֣�zzname ���䣺webmail QQ��webqq </td>    
          </tr>  
        
          </tr>
          <%end if%>
  <tr>
    <td width="100%" bgcolor="#FFFFFF" height="100%"><textarea style="width:100%; height:100%;" rows="19" name="body" cols="102"><%=mb%></textarea></td>
  </tr>
  <tr>
    <td width="100%" bgcolor="#DFDFDF">
    <p align="center">        
    <input name="change" value="�޸�<%=title%>(HTML)ҳģ��" type='submit'> [<a href="javascript:openscriphtml()">HTML�༭��</a>]</td>
  </tr>
</form>
</table>
</body>    
</html>


