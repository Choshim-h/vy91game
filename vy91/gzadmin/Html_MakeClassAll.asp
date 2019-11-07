<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'============================================
'非常感谢你使用888网(www.888wang.com)的网站程序
'888网，三年专业娱乐网站开发,大量数据，自动采集
'欢迎老客户购买其它网站程序，完善的老客户优惠措施
'此程序制用人:888网,客服QQ：56566918
'为了您享受良好的技术支持,请保留此信息.
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
Response.Write "<Title>管理中心 - "& WebName &"</title>"
Response.Write "<Meta Http-Equiv=""Content-Type"" Content=""Text/Html; CharSet=Gb2312"">"
Response.Write "<Link Type=""Text/Css"" Rel=""StyleSheet"" Href=""Inc/Style.css"">"
Response.Write "</Head>"
Response.Write "<body>"
Response.Write "·<b><font color=""#FF0000"" size=""3"">生成所有一级分类的Html页面,请等待...........</font></b><br/>"

Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select id From Class where classid='0'"
Rs.open Sql,Conn,1,1
Maxperpage=1 '每页显示数
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
	response.Write("-----------------生成全部大分类完成----------------")
end if


Response.Write "</body></html>"

%>

