<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<link href="Images/Style.Css" rel="stylesheet" type="text/css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������Ϸ�����ļ�</title>
</head>
<script  type="text/javascript" language="javascript">
	function checkisid(){
		var s = pid.www_888wang_com_sid;
		var e = pid.www_888wang_com_eid;
		if(s.value.length==0){
			alert("��ʼID����Ϊ��");
			s.focus();
			s.select();
			return false;
		}
		if(e.value.length==0){
			alert("����ID����Ϊ��");
			s.focus();
			s.select();
			return false;
		}

			if(isNaN(s.value) || isNaN(e.value)){
			alert("��ʼID�����IDҪΪ����");
			s.focus();
			s.select();
			return false;
		}
		
			if((parseInt(s.value)) > (parseInt(e.value))){
			alert("��ʼID���ܴ��ڽ���ID");
			s.focus();
			s.select();
			return false;
		}
		return true; 
	//��л��ʹ��www.888wang.com ��С��Ϸ����
	//����ʹ�����в�����֮��������ϵ888������QQ����֧��
	//Ϊ�����Ȩ�棬�뵽�ٷ���վ(888��)����

	}
</script>
<body topmargin=1 leftmargin=1>
<%
'лл��ʹ��888wang.com������վϵͳ
dim Ds,www_888wang_com_sid,www_888wang_com_eid
Ds=timer()
'�ж��Ƿ��Զ�����
www_888wang_com_sid=clng(request("www_888wang_com_sid"))
www_888wang_com_eid=clng(request("www_888wang_com_eid"))

if request("type")="all" then
  if www_888wang_com_sid<1 or www_888wang_com_eid<1 or www_888wang_com_sid>=www_888wang_com_eid then
   'response.write "��ʼ�ͽ���ID����Ϊ��,�ҽ���ID������ڿ�ʼID"
   response.write "<script language=vbscript>"& vbcrlf
   response.write "aaa=msgbox(""��ʼ�ͽ���ID����Ϊ�գ��ҽ���ID������ڿ�ʼID"",vbOKOnly)"& vbcrlf
   response.write "</script>"
  else
    makeskysoft="yes"
  end if
end if

if makeskysoft="yes" then
response.write"<b><font color=""#FF0000"">�������ɲ���ҳ,��ȴ�......</font></b><BR><span id=showImport></span>"
   if request("p")<>"" then
     p=cint(request("p"))
     D=request("D")
   else
     p=1
     D=Ds
   end if
MaxPerPage=100

'mpage=3     '�õ���ҳ��
allshu=www_888wang_com_eid-www_888wang_com_sid '�õ�����
SkyIDNowPage=p*MaxPerPage+www_888wang_com_sid
if SkyIDNowPage=>allshu+www_888wang_com_sid then SkyIDNowPage=allshu+www_888wang_com_sid

 for id=(p-1)*MaxPerPage+www_888wang_com_sid to SkyIDNowPage
  i=i+1
  call MakeHtml()
  if i>=MaxPerPage then exit for
 next 

Sshu=MaxPerPage*p-MaxPerPage+www_888wang_com_sid
Tshu=Sshu+i-1

if allshu+www_888wang_com_sid<Sshu then'��������ɵ�С�������ɵ�
 response.redirect "html_makeFlashAll_All.asp?type=ok&www_888wang_com_sid="&www_888wang_com_sid&"&www_888wang_com_eid="&www_888wang_com_eid&"&shu="&request("shu")&"&D="&d&"&p="&p+1&""
 response.end
else
 response.write"<meta http-equiv=""refresh"" content=""0;url='html_makeFlashAll_All.asp?type="&request("type")&"&www_888wang_com_sid="&www_888wang_com_sid&"&www_888wang_com_eid="&www_888wang_com_eid&"&shu="&Tshu&"&D="&D&"&p="&p+1&"'"">"
 response.write"<B><BR>��ѡ����Ǵ�<font color=ff0000>"&request("www_888wang_com_sid")&"</font>-<font color=ff0000>"&request("www_888wang_com_eid")&"</font> ��<font color=ff0000>"&allshu&"</font>��ҳ��"
 response.write"<br>��������:��("&Sshu&"-"&Tshu&")��"
 response.write"<br>����ʱ("&FormatNumber((timer()-request("D")),2)&")��</B>"
end if

Sub MakeHtml()

Response.Write "<iframe src='html_makeFlash.asp?id="&id&"' width=90% height=35px></iframe>"
end Sub

else

'shu=50

response.write"<b>����������Ϸ����ҳ��"
if request("type")="ok" then
response.write"<br><br>�����ɹ�:������<font color=""#FF0000"">"&request("www_888wang_com_eid")-request("www_888wang_com_sid")&"</font>ҳ��Ϸ����ҳ��<BR>�ܷ�ʱ<font color=""#FF0000"">"&FormatNumber((timer()-request("D")),2)&"</font>��,���ʱ��"&Now()&""
		'�ɼ���ɣ�ת�����ɷ���ҳ
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

response.write"<form name=pid method=""post"" action=""html_makeFlashAll_All.asp?type=all"">��ʼID<input size=8 name=""www_888wang_com_sid"" value='"&kaishiid&"'>����ֹID<input size=8 name=""www_888wang_com_eid"" value='"&jieshuid&"'><input name=""change"" class=""buttonface"" value=""ȷ��"" type=""submit""></form>"
end if

set rs=nothing
conn.close
set conn=nothing
%>
</body></html>


