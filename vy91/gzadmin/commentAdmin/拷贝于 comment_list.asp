<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>888wang.com ���۹���</title>
<link href="../Style.css" rel="stylesheet" type="text/css" />
</head>
<%
'-------------------------------------��ҳ������
	if request("page")<>"" then
	pageNo = Clng(Request("page"))'int���ֵֻ�е�32767. 
	else
		pageNo = 1
	end if
	PageSizeX = 2


	typeid=request("typeid") 
	if typeid <>"" then
		whereStr=" and typeid="&typeid
	else
		whereStr = ""
	end if
	
'------------------------------ȫ�ֱ�������	
dim filename
fileName="comment_list.asp"

%>
<body>
<div style="width:98%; margin:0 auto; border:1px solid #0066FF; height:25px; line-height:25px; text-indent:1em;">
����<input name="typeid" type="text" value="typeid" />
�Ƿ�����<select name="selDisplay">
  <option value="all">��ѡ��</option>
  <option value="display">δ����</option>
  <option value="nodisplay">������</option>
</select>  <br />
</p>
<ul>
	<%
	dim typeTitle
	set rs=server.createobject("adodb.recordset")
	sql="select typeid from content group by typeid order by typeid "
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("���޷���")
	else
	do while not rs.eof
	typeid=rs("typeid")
	select case typeid
		case 1 typeTitle="��������"
		case 2 typeTitle="ר������"
		case 3 typeTitle="��������"
	end select 
	%>
		<li style="float:left;"><a href="<%=filename%>?typeid=<%=rs("typeid")%>"><%=typeTitle%></a></li>
	<%
	rs.movenext
	loop 
	end if
	rs.close
	%>
</ul>
</div>


<table width="98%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="margin-top:20px;">
  <tr>
    <td width="4%" align="center" bgcolor="#79C6FF"><strong>id</strong></td>
    <td width="5%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
    <td width="12%" align="center" bgcolor="#79C6FF"><strong>������</strong></td>
    <td width="47%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>ʱ��</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>ip</strong></td>
        <td width="6%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
  </tr>
  
  <%
'�����Ҫ������ֵ
TblName="content"   '����
id="id"   '������
FldName="*"   'Ҫ��ʾ������

tempNum= ((pageNo-1)*PageSizeX)+1

  sql="Select TOP "&PageSizeX&" "&fldName&" From "&TblName&" Where "&id&" <= (Select max ("&id&") From (Select TOP  "&tempNum&" "&id&" From "&TblName&" order by "&id&" desc) as t) "&whereSTr&" order by "&id&" desc" 
  response.Write(sql)
 'response.End()
  
	'sql="select id,typeid,[name],body,rad,r_id,[time],ip from content  order by id desc"
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("��������")
	else
	do while not rs.eof
	
	set rs2=conn.execute("select count(id) from content")
	totalnumber=rs2(0)
	rs2.close()
	
	dim typeTitleList
	typeTitleList=""
	
	id=rs("id")
	typeid=rs("typeid")

	[name]=rs("name")

	id=rs("id")

	body=rs("body")

	r_id=rs("r_id")

	addTime=rs("time")

	ip=rs("ip")

	select case typeid
		case 1 typeTitleList="����"
		case 2 typeTitleList="ר��"
		case 3 typeTitleList="����"
	end select 
	
%>

  <tr>
    <td bgcolor="#FFFFFF"><font title="���۱��"><%=id%></font>,<font title="�����۵�ID"><%=r_id%></font></td>
    <td bgcolor="#FFFFFF"><%=typeTitleList%></td>
    <td bgcolor="#FFFFFF"><%=name%></td>
    <td bgcolor="#FFFFFF"><%=body%></td>
    <td bgcolor="#FFFFFF"><%=addTime%></td>
    <td bgcolor="#FFFFFF"><%=ip%></td>
    <td align="center" bgcolor="#FFFFFF">�� ��</td>
  </tr>
  
  	<%
	rs.movenext
	loop 
	end if
	rs.close
	%>


  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"></td>
  </tr>
</table>
<%showpage totalnumber,PageSizeX,fileName '���÷�ҳ����%>

</body>
</html>

<%
'showpage RecordCount,PageSizeX,fileName '���÷�ҳ����

'��ҳ����-----------------------------------------
function showpage(totalnumber,maxperpage,filename)
dim n
if totalnumber mod maxperpage=0 then
	n= totalnumber \ maxperpage
else
	n= totalnumber \ maxperpage+1
end if
%>
<form method=Post action="<%=filename%>?act=<%=act%>">
  <center>
  ��<font color="#ff0000"><b><%=totalnumber%></b></font>����¼/ÿҳ<%=PageSizeX%>��
  <%if pageNo<2 then%>
  &nbsp;��ҳ ��һҳ&nbsp;
  <%else%>
  &nbsp<a href="<%=filename%>?page=1&act=<%=act%>">��ҳ</a>&nbsp; <a href="<%=filename%>?page=<%=pageNo-1%>&act=<%=act%>">��һҳ</a>&nbsp;
  <%
end if
if n-pageNo<1 then
%>
  ��һҳ ĩҳ
  <%else%>
  <a href="<%=filename%>?page=<%=pageNo+1%>&act=<%=act%>">��һҳ</a> <a href="<%=filename%>?page=<%=n%>&act=<%=act%>">ĩҳ</a>
  <%end if%>
  &nbsp;ҳ��:<strong><font color="#ff0000"><%=pageNo%>/<%=n%></font></strong>ҳ
  ת��:
<select name="page" size="1" onChange="javascript:submit()">
    <%for i = 1 to n%>
    <option value="<%=i%>" <%if cint(pageNo)=cint(i) then%> selected <%end if%>>��<%=i%>ҳ</option>
    <%next%>
  </select>
</center>
</form>

<% 
end function
'��ҳ��������-------------------------------------------
%>

<%set rs=nothing : set rs2=nothing : Conn.Close : set Conn=nothing
%>
