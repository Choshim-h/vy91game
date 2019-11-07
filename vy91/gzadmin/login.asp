
<%
Function GetCode()
	Dim TestObj
	On Error Resume Next
	Set TestObj = Server.CreateObject("Adodb.Stream")
	Set TestObj = Nothing
	If Err Then
		Dim TempNum
		Randomize timer
		TempNum = cint(8999*Rnd+1000)
		Session("GetCode") = TempNum
		GetCode = Session("GetCode")		
	Else
		GetCode = "<img src=""../inc/GetCode.asp"">"		
	End If
End Function
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>888wang.com小游戏系统-管理员登陆</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>BODY {
	FONT-SIZE: 9pt; LINE-HEIGHT: 16px
}
P {
	FONT-SIZE: 9pt; LINE-HEIGHT: 16px
}
TD {
	FONT-SIZE: 9pt; LINE-HEIGHT: 16px
}
A:link {
	COLOR: #ffffff; TEXT-DECORATION: none
}
A:visited {
	COLOR: #f5f5f5; TEXT-DECORATION: none
}
A:hover {
	COLOR: #ffffff; TEXT-DECORATION: none
}
.bg {
	BACKGROUND-POSITION: right top; BACKGROUND-REPEAT: no-repeat
}
.css12 {
	FONT-SIZE: 12px; COLOR: #ffffff; TEXT-DECORATION: none
}
.cssbk {
	BORDER-RIGHT: #333333 1px solid; BORDER-TOP: #333333 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #333333 1px solid; COLOR: #333333; BORDER-BOTTOM: #333333 1px solid; TEXT-DECORATION: none
}
INPUT {
	BORDER-TOP-WIDTH: 1px; PADDING-RIGHT: 1px; PADDING-LEFT: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 9pt; BORDER-LEFT-COLOR: #c0c0c0; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: #c0c0c0; PADDING-BOTTOM: 1px; COLOR: #000000; BORDER-TOP-COLOR: #c0c0c0; PADDING-TOP: 1px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif, ??ì?; BACKGROUND-COLOR: #ffffff; BORDER-RIGHT-WIDTH: 1px; BORDER-RIGHT-COLOR: #c0c0c0
}
</STYLE>

<SCRIPT language=JavaScript type=text/JavaScript>
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</SCRIPT>

<SCRIPT language=JavaScript src="images/mouse_up.js">
</SCRIPT>

<META content="MSHTML 6.00.2900.3059" name=GENERATOR></HEAD>
<BODY leftMargin=0 
onload="MM_preloadImages('/images/himage_03a.gif','/images/himage_04a.gif')">
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=right border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width="23%" background=images/himage_bg.gif 
      height=240><INPUT type=image height=106 width=177 
      src="images/himage_01.gif" border=0 name=imageField> <IMG src="images/himage_05.gif" 
            border=0><BR></TD>
    <TD vAlign=top width="50%" background=images/himage_bg.gif>
      <DIV align=left>
      <FORM name=form2 action=chklogin.asp method=post>
       <table width="76%" border="0" cellspacing="0" cellpadding="0">
        <tr>
         <td height="44" >&nbsp;</td>
         <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
         <td width="20%" ><span class="css12">用户名：</span></td>
         <td colspan="3"><input type="text" name="username"></td>
        </tr>
        <tr>
         <td height="48"><span class="css12">密　码：</span></td>
         <td colspan="3"><input type="password" name="password"></td>
        </tr>
        <tr>
         <td><span class="css12">验证码：</span></td>
         <td width="18%"><input name="verifycode" size="4" maxlength="4"></td>
         <td width="22%"><% = GetCode() %></td>
         <td width="40%"></td>
        </tr>
       </table>
       <TABLE cellSpacing=0 cellPadding=0 width=380>
        <TBODY>
        <TR>
          <TD width=343 height=45 align="left" vAlign=bottom>
         <DIV align=center><A 
            onmouseover="MM_swapImage('Image3','','images/himage_03a.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="javascript:document.form2.submit();">
          <INPUT type=image 
            height=48 width=59 src="images/himage_03.gif" border=0 
            name=Image3></A><A 
            onmouseover="MM_swapImage('Image4','','images/himage_04a.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="javascript:document.form2.reset();"><IMG height=48 
            src="images/himage_04.gif" width=59 border=0 
          name=Image4></A></DIV></TD></TR>
        <TR>
          <TD height=24 align="center">&nbsp;</TD>
        </TR></TBODY></TABLE></FORM></DIV></TD>
    <TD vAlign=top width="27%" background=images/himage_bg.gif>
      <DIV align=right><IMG height=241 src="images/himage_bg2.gif" 
      width=215 border=0></DIV></TD></TR></TBODY></TABLE>
<P>&nbsp;</P>
<SCRIPT language=javascript>
function ReplaceAll(strOrg,strFind,strReplace){
var index = 0;
while(strOrg.indexOf(strFind,index) != -1){
strOrg = strOrg.replace(strFind,strReplace);
index = strOrg.indexOf(strFind,index);
}
return strOrg
}

</SCRIPT>
</BODY></HTML>


