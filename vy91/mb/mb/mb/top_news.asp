<link href="/myimg/61133.css" rel="stylesheet" type="text/css" />
<div class="box" style=" margin-top:5px; margin-bottom:5px;">
<span id="user" style="float:right; padding-top:2px; padding-right:10px; background:none; font-size:12px; font-weight:normal;">���ڼ����û���Ϣ...</span><span class="big5"></span>

</div>


<div class="box " style="margin-bottom:0px">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="26%" rowspan="2"><img src="/images/ganzhe.jpg"> </td>
    <td width="74%" height="50" valign="middle"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <form action="/search.asp" method="post">
		<td align="right"><input type="text" style="WIDTH: 260px; HEIGHT: 20px; background:#fff; border:solid 1px #C2C2C2; " name="www_888wang_com_gameName" /></td>
        <td width="95" align="left"><div class="ss" onclick="submit()"> </div></td> </form>

        <td class="top1"><A name=StranLink>���w����</A></td>
        <td class="top1">�����ղ�</td>
        <td class="top1">��Ϊ��ҳ</td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td><div class="menu1">
<li id="myGame">�ҵĻ���</li>
<li><a href="/user/myScore.asp">�ҵĻ���</a></li>
<li><a href="/goog.html">���ۺõ�</a></li>
<li><a href="/much.html">��ö��</a></li>
<li><a href="#">��������</a></li>
<li><a href="#">ԭ������</a></li>
<li><a href="http://www.ganzhe.com/games/">ԭ����Ϸ</a></li>
<li><a href="http://www.ganzhe.com/chengji/" target="_blank">��Ϸ���а�</a></li>
<li><a href="/">������ҳ</a></li>
</div></td>
  </tr>
</table>

</div>
<div class="box menu">
  <table height="14" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px">
    <tr>
      <%
i=0
MaxList=20
set rs=server.createobject("adodb.recordset")
sql="select id,name,classid from class where classid='0'"
rs.Open sql,conn,1,1
do while not rs.eof
i=i+1
%>
      <td width="80" align="center" ><a href="/<%=makeUrl_class%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>_1/"><%=replace(rs("name"),"����","��")%></a></td>

  <%
if i>=MaxList then exit do
rs.movenext
loop
rs.close%>    
</tr>
  </table>
</div>