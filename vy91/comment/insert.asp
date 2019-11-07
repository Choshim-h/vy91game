<!-- #include file="conn.asp" -->
<%

dim body,r_id,typeid
body=request("content")
body=replace(body,"<","¡´")
body=replace(body,">","¡µ")
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
rs.update
set rs=nothing

response.Redirect("showlyda.asp?r_id="&r_id&"&typeid="&typeid&"")

'--»ñÈ¡IPº¯Êý-------------------------------
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