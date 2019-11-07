<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<link href="Images/Style.Css" rel="stylesheet" type="text/css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>生成游戏播放文件</title>
</head>
<script  type="text/javascript" language="javascript">
	function checkisid(){
		var s = pid.www_888wang_com_sid;
		var e = pid.www_888wang_com_eid;
		if(s.value.length==0){
			alert("起始ID不能为空");
			s.focus();
			s.select();
			return false;
		}
		if(e.value.length==0){
			alert("结束ID不能为空");
			s.focus();
			s.select();
			return false;
		}

			if(isNaN(s.value) || isNaN(e.value)){
			alert("起始ID与结束ID要为数字");
			s.focus();
			s.select();
			return false;
		}
		
			if((parseInt(s.value)) > (parseInt(e.value))){
			alert("起始ID不能大于结束ID");
			s.focus();
			s.select();
			return false;
		}
		return true; 
	//感谢你使用www.888wang.com 的小游戏程序
	//如在使用中有不明白之处，请联系888网在线QQ技术支持
	//为了你的权益，请到官方网站(888网)购买

	}
</script>
<body topmargin=1 leftmargin=1>
<%
'谢谢你使用888wang.com音乐网站系统
dim Ds,www_888wang_com_sid,www_888wang_com_eid
Ds=timer()
'判断是否自动生成
www_888wang_com_sid=clng(request("www_888wang_com_sid"))
www_888wang_com_eid=clng(request("www_888wang_com_eid"))

if request("type")="all" then
  if www_888wang_com_sid<1 or www_888wang_com_eid<1 or www_888wang_com_sid>=www_888wang_com_eid then
   'response.write "开始和结束ID不能为空,且结束ID必须大于开始ID"
   response.write "<script language=vbscript>"& vbcrlf
   response.write "aaa=msgbox(""开始和结束ID不能为空，且结束ID必须大于开始ID"",vbOKOnly)"& vbcrlf
   response.write "</script>"
  else
    makeskysoft="yes"
  end if
end if

if makeskysoft="yes" then
response.write"<b><font color=""#FF0000"">正在生成播放页,请等待......</font></b><BR><span id=showImport></span>"
   if request("p")<>"" then
     p=cint(request("p"))
     D=request("D")
   else
     p=1
     D=Ds
   end if
MaxPerPage=100

'mpage=3     '得到总页数
allshu=www_888wang_com_eid-www_888wang_com_sid '得到总数
SkyIDNowPage=p*MaxPerPage+www_888wang_com_sid
if SkyIDNowPage=>allshu+www_888wang_com_sid then SkyIDNowPage=allshu+www_888wang_com_sid

 for id=(p-1)*MaxPerPage+www_888wang_com_sid to SkyIDNowPage
  i=i+1
  call MakeHtml()
  if i>=MaxPerPage then exit for
 next 

Sshu=MaxPerPage*p-MaxPerPage+www_888wang_com_sid
Tshu=Sshu+i-1

if allshu+www_888wang_com_sid<Sshu then'如果该生成的小于已生成的
 response.redirect "html_makeFlashAll_All.asp?type=ok&www_888wang_com_sid="&www_888wang_com_sid&"&www_888wang_com_eid="&www_888wang_com_eid&"&shu="&request("shu")&"&D="&d&"&p="&p+1&""
 response.end
else
 response.write"<meta http-equiv=""refresh"" content=""0;url='html_makeFlashAll_All.asp?type="&request("type")&"&www_888wang_com_sid="&www_888wang_com_sid&"&www_888wang_com_eid="&www_888wang_com_eid&"&shu="&Tshu&"&D="&D&"&p="&p+1&"'"">"
 response.write"<B><BR>您选择的是从<font color=ff0000>"&request("www_888wang_com_sid")&"</font>-<font color=ff0000>"&request("www_888wang_com_eid")&"</font> 共<font color=ff0000>"&allshu&"</font>个页面"
 response.write"<br>正在生成:第("&Sshu&"-"&Tshu&")个"
 response.write"<br>已用时("&FormatNumber((timer()-request("D")),2)&")秒</B>"
end if

Sub MakeHtml()

Response.Write "<iframe src='html_makeFlash.asp?id="&id&"' width=90% height=35px></iframe>"
end Sub

else

'shu=50

response.write"<b>批量生成游戏播放页面"
if request("type")="ok" then
response.write"<br><br>操作成功:共生成<font color=""#FF0000"">"&request("www_888wang_com_eid")-request("www_888wang_com_sid")&"</font>页游戏播放页面<BR>总费时<font color=""#FF0000"">"&FormatNumber((timer()-request("D")),2)&"</font>秒,完成时间"&Now()&""
		'采集完成，转至生成分类页
end if



set rs=server.createobject("adodb.recordset")
sql="select PlayMake from MakeConfig"
rs.Open sql,conn,1,1
kaishiid=rs("PlayMake")
	if kaishiid<1 or kaishiid=null then 
		kaishiid=1
	end if
rs.close

sql="select top 1 id from flash order by id desc"
rs.Open sql,conn,1,1
jieshuid=rs("id")
rs.close

response.write"<form name=pid method=""post"" action=""html_makeFlashAll_All.asp?type=all"">超始ID<input size=8 name=""www_888wang_com_sid"" value='"&kaishiid&"'>到终止ID<input size=8 name=""www_888wang_com_eid"" value='"&jieshuid&"'><input name=""change"" class=""buttonface"" value=""确认"" type=""submit""></form>"
end if

set rs=nothing
conn.close
set conn=nothing
%>
</body></html>


