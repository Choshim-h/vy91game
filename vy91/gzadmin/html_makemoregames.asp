<!--#Include File="Conn.asp" -->
<!--#Include File="../inc/config_list.asp" -->
<!--#Include File="checkPost.asp" -->
<!--#Include File="../inc/md5.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
Filename="../moregames.html"
mbUrl="../mb/moregames_mb.asp"
MDBpath="./"
showTitle="moregames"
If Request("Body")<>"" Then
Set Fso = Server.CreateObject("Scripting.FileSystemObject")
Set Fout = Fso.CreateTextFile(Server.Mappath(""&Filename&""))
Fout.Write Request("Body")
Fout.Close
Set Fout=nothing
Set Fso=nothing
MakeIndex="ok"
End if
Response.Write "<Html>"
Response.Write "<Head>"
Response.Write "<Title>管理中心 - "& WebName &"</title>"
Response.Write "<Meta Http-Equiv=""Content-Type"" Content=""Text/Html; CharSet=Gb2312"">"
Response.Write "<Link Type=""Text/Css"" Rel=""StyleSheet"" Href=""Inc/Style.css"">"
Response.Write "</Head>"
Response.Write "<Body Topmargin=""4"" Leftmargin=""0"">"
If MakeIndex="ok" Then
Response.Write "<table border=""0"" cellspacing=""0"" style=""border-collapse: collapse"" width=""100%"" cellpadding=""0"">"
Response.Write "<tr>"
Response.Write "<td width=""100%"" height=""22"">·<b><font color=""#FF0000"">成功：生成"&showTitle&"完成，[<a target=""_blank"" href="" "& filename &" "">"& filename &"</a>]</font></td>"
Response.Write "</tr>"
Response.Write "</table>"
else
Response.Write "<table border=""0"" cellspacing=""1"" style=""border-collapse: collapse"" width=""100%"" bgcolor=""#E6E6E6"" height=""100%"">"
Response.Write "<form name=""myform"" Method=""Post"">"
Response.Write "<tr>"
Response.Write "<td width=""100%"" bgcolor=""#7B9AE7"" height=""26"">"
Response.Write "<b><font color=""#FFFFFF"">&nbsp;生成"&showTitle&"&nbsp; 生成文件:<a target=""_blank"" href="" "& filename &" ""><font color=""#FFFFFF"">"& filename &"</font></a>"
Response.Write ",模版文件:</font><a target=""_blank"" href="""&mbUrl&"""><font color=""#FFFFFF"">"&mbUrl&"</font></a></b></td>"
Response.Write "</tr>"
Response.Write "<tr>"
Response.Write "<td width=""100%"" bgcolor=""#FFFFFF"" height=""100%"">"
Response.Write "<Textarea Style=""width:100%; height:100%;"" Rows=""19"" Name=""body"" Cols=""102"">" %><!--#include file="../mb/moregames_mb.asp"-->
<%
Response.Write "</Textarea></td>"
Response.Write "</tr>"
Response.Write "<tr>"
Response.Write "<td width=""100%"" bgcolor=""#F7F7F7"">"
Response.Write "<p align=""center"">"
Response.Write "<Input Name=""Change"" value=""生成"&showTitle&"(HTML)"" Type=""Submit""></td>"
Response.Write "</tr>"
Response.Write "</form>"
Response.Write "</table>"
Response.Write "</body>"
Response.Write "</html>"
end if
%>

