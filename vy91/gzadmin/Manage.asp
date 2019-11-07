<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
Response.Write "<Html>"
Response.Write "<Head>"
Response.Write "<Title>FLASH管理中心 - "& WebName &"</title>"
Response.Write "<Meta Http-equiv=""Content-Type"" Content=""text/html; Charset=Gb2312"">"
Response.Write "<Meta Name=""Author"" Content="" "& WebAuthor &" "">"
Response.Write "<Meta Name=""Keywords"" Content="" "& WebKeywords &" "">"
Response.Write "<Meta Name=""Description"" Content="" "& WebDescription &" "">"
Response.Write "</Head>"
Response.Write "<Frameset Rows=""*"" Cols=""198,*"" Framespacing=""0"" Frameborder=""No"" Border=""0"">"
if Session("AdminID")="8" then
Response.Write "<Frame Name=""Admin_Left"" Scrolling=""Yes"" Marginheight=""0"" Src=""inputLeft.asp"">"
else
Response.Write "<Frame Name=""Admin_Left"" Scrolling=""Yes"" Marginheight=""0"" Src=""Left.asp"">"
end if
Response.Write "<Frame Name=""Admin_Main"" Scrolling=""Yes"" Marginheight=""0"" Src=""Main.asp"">"
Response.Write "</Frameset>"
Response.Write "<Noframes><Body Leftmargin=""0"" Topmargin=""0"">"
Response.Write "</Body></Noframes>"
Response.Write "</Html>"
%>

