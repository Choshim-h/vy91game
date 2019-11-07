
<%
function Checkin(s) 
s=trim(s) 
s=replace(s," ","&amp;nbsp;") '&amp是&
s=replace(s,"'","&amp;#39;") 
s=replace(s,"""","&amp;quot;") 
s=replace(s,"&lt;","&amp;lt;") 
s=replace(s,"&gt;","&amp;gt;") 
Checkin=s 
end function 

function CheckAdmin1
	if Session("IsAdmin")<>true then response.redirect "error.asp"
end function
function CheckAdmin2
	if Session("IsAdmin")<>true or (session("KEY")<>"check" and session("KEY")<>"super") then response.redirect "error.asp"
end function
function CheckAdmin3
	if Session("IsAdmin")<>true or session("KEY")<>"super" then response.redirect "error.asp"
end function

sub error()
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name=author content=com>
<title>888网提示你：<%=errmsg%>!</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="111" leftmargin="0">
<div align="center">
  <center>
  <table width="60%" border="0" cellspacing="0" class="bordercolor">
    <tr>
      <td width="100%">
        <div align="center">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td width="100%" bgcolor="#FFFFFF" height="80" align="center">
                <b>Error！&nbsp; <%=errmsg%>！&nbsp; :(</b>
                <p><b><a href="javascript:history.go(-1)">...::: 点 此 返 回 
                :::...</a></b>
              </td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
  </center>
</div>
</body>                    
</html>  

<%
end sub
%>

