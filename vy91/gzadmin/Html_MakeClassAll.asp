<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'============================================
'�ǳ���л��ʹ��888��(www.888wang.com)����վ����
'888��������רҵ������վ����,�������ݣ��Զ��ɼ�
'��ӭ�Ͽͻ�����������վ�������Ƶ��Ͽͻ��Żݴ�ʩ
'�˳���������:888��,�ͷ�QQ��56566918
'Ϊ�����������õļ���֧��,�뱣������Ϣ.
%>

<%
fileName="Html_MakeClassAll.asp"
dim CurrentPage,pageBig

If Request("pageBig")<>"" Then
	CurrentPage=Cint(Request("pageBig"))
	else
	CurrentPage=1
End If


Response.Write "<Html>"
Response.Write "<Head>"
Response.Write "<Title>�������� - "& WebName &"</title>"
Response.Write "<Meta Http-Equiv=""Content-Type"" Content=""Text/Html; CharSet=Gb2312"">"
Response.Write "<Link Type=""Text/Css"" Rel=""StyleSheet"" Href=""Inc/Style.css"">"
Response.Write "</Head>"
Response.Write "<body>"
Response.Write "��<b><font color=""#FF0000"" size=""3"">��������һ�������Htmlҳ��,��ȴ�...........</font></b><br/>"

Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select id From Class where classid='0'"
Rs.open Sql,Conn,1,1
Maxperpage=1 'ÿҳ��ʾ��
rs.pagesize=Maxperpage
PageCount1=Rs.PageCount
rs.absolutepage=CurrentPage
n=0
do while not Rs.Eof and n<rs.pagesize
	exeFile="Html_MakeClass.asp?nclass="&rs("ID")&"&page=1&pageBig="&CurrentPage&"&make=big"
	response.Redirect(exeFile)
	'Response.Write "<IFRAME SRC='"&exeFile&"' WIDTH=100% HEIGHT=100 MARGINWIDTH=0 MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=no></IFRAME>"
	response.end

Rs.Movenext
n=n+1
Loop
Rs.Close
set rs=nothing
Conn.Close
Set Conn=nothing

if CurrentPage>=PageCount1 then
	response.Write("-----------------����ȫ����������----------------")
end if


Response.Write "</body></html>"

%>

