<!-- #include File="function_www_888wang_com.asp" -->
<!--#include file="function.asp"-->
<!--#include file="conn.asp"-->
<HTML>
<HEAD>
<TITLE>888wang.comС��Ϸ�ɼ�����ϵͳ</TITLE>
<META content=www.x0746.com name=author>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<link href="inc/Style.Css" rel="stylesheet" type="text/css">
</HEAD>
<script langguage="javascript">
function check(){
	if(id.EndPage.value.length<1){
	alert("��ʼID����Ϊ��");
	id.EndPage.select;
	return false;
	}else if(id.StarPage.value.length<1){
	alert("����ID����Ϊ��");
	id.StarPage.select;
	return false;
	}
	else if(id.StarPage.value-id.EndPage.value<1){
	alert("����ID�������ڿ�ʼID");
	id.StarPage.select;
	return false;
	}
	return true;
}
</script>
<%

	set rs2=server.createobject("adodb.recordset")
	sql="SELECT * from flash ORDER BY ysID DESC"
	rs2.Open sql,conn,1,1
		if rs2.eof and rs2.bof then
		www_888wang_com_sid=2433
		else
		www_888wang_com_sid=rs2("ysID")
		end if

	rs2.close
	set rs2=nothing
	conn.close
	set conn=nothing
	
	'ȡ������ID
	URL="http://www.gameyes.com/index/billboard1.htm"
	zlp=GetHttp(URL)
	'zlp=Replace(Replace(zlp,Chr(34),""),Chr(39),"")'����"
	www_888wang_com_eid=GetStr(zlp,"<td height=""25"" align=""center"" bgcolor=""#FFFFFF"">1</td>","</td>")
	www_888wang_com_eid=GetStr(zlp,"../swf/",".htm")
	tempid=www_888wang_com_eid-www_888wang_com_sid
		%>
<BODY  leftMargin=8 topMargin=11>
<div align="center">
<table width="80%"  border="0" align="center" cellpadding="5" cellspacing="1" bordercolor="#0066FF" style="border:#AAD2F6 1px solid;padding:10px;">

<tr class="bg1" color="">
  <td height="22" bgcolor="#B7D8FD"><strong>888wang.comС��Ϸ���ݸ���ϵͳ</strong></td>
</tr>

    <TR>
      <TD align=middle><FORM action=888wamg.com_musiccj.asp method=post name=id OnSubmit="return check()">
          ��ʼҳID
          <INPUT name=EndPage size=8   value="<%=www_888wang_com_sid%>">
          ����ֹ��ֹҳID
          <INPUT name=StarPage size=8 value="<%=www_888wang_com_eid%>">
          <INPUT class=buttonface name=change type=submit value=�ɼ���ʼ>
          <input name="picsave" type="checkbox" value="picsave" checked>
          ����ͼƬ
          <input name="mp3save" type="checkbox" value="mp3save">
          ��������
        </FORM></TD>
    </TR> 
	    <TR><td>888wang.com��ʾ��:��<font color="red"><%=tempid%></font>��С��Ϸ�ȴ���ɼ�</TD>
    </TR> 
  </TBODY> 
</TABLE>
<p>
<div> 
<table width="80%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
  <font color="red">�˲ɼ����Զ��������ɼ���ID����ֻ��������ʼ�ɼ�������</font><br>
  <a href="http://www.gameyes.com/index/billboard1.htm" target="_blank">��Ȼ����Ҳ�����ֹ��Ķ�ID������Ҫ��ɼ�,����鿴�ɼ���վר��ID>>></a><br>
  </tr>
</table>

</div>

