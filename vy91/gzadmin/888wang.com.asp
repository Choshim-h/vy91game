<!-- #include File="function_www_888wang_com.asp" -->
<!--#include file="function.asp"-->
<!--#include file="conn.asp"-->
<HTML>
<HEAD>
<TITLE>888wang.com小游戏采集更新系统</TITLE>
<META content=www.x0746.com name=author>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<link href="inc/Style.Css" rel="stylesheet" type="text/css">
</HEAD>
<script langguage="javascript">
function check(){
	if(id.EndPage.value.length<1){
	alert("起始ID不能为空");
	id.EndPage.select;
	return false;
	}else if(id.StarPage.value.length<1){
	alert("结束ID不能为空");
	id.StarPage.select;
	return false;
	}
	else if(id.StarPage.value-id.EndPage.value<1){
	alert("结束ID不能少于开始ID");
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
	
	'取得最新ID
	URL="http://www.gameyes.com/index/billboard1.htm"
	zlp=GetHttp(URL)
	'zlp=Replace(Replace(zlp,Chr(34),""),Chr(39),"")'过滤"
	www_888wang_com_eid=GetStr(zlp,"<td height=""25"" align=""center"" bgcolor=""#FFFFFF"">1</td>","</td>")
	www_888wang_com_eid=GetStr(zlp,"../swf/",".htm")
	tempid=www_888wang_com_eid-www_888wang_com_sid
		%>
<BODY  leftMargin=8 topMargin=11>
<div align="center">
<table width="80%"  border="0" align="center" cellpadding="5" cellspacing="1" bordercolor="#0066FF" style="border:#AAD2F6 1px solid;padding:10px;">

<tr class="bg1" color="">
  <td height="22" bgcolor="#B7D8FD"><strong>888wang.com小游戏数据更新系统</strong></td>
</tr>

    <TR>
      <TD align=middle><FORM action=888wamg.com_musiccj.asp method=post name=id OnSubmit="return check()">
          开始页ID
          <INPUT name=EndPage size=8   value="<%=www_888wang_com_sid%>">
          到终止终止页ID
          <INPUT name=StarPage size=8 value="<%=www_888wang_com_eid%>">
          <INPUT class=buttonface name=change type=submit value=采集开始>
          <input name="picsave" type="checkbox" value="picsave" checked>
          保存图片
          <input name="mp3save" type="checkbox" value="mp3save">
          保存数据
        </FORM></TD>
    </TR> 
	    <TR><td>888wang.com提示你:有<font color="red"><%=tempid%></font>个小游戏等待你采集</TD>
    </TR> 
  </TBODY> 
</TABLE>
<p>
<div> 
<table width="80%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
  <font color="red">此采集已自动计算出需采集的ID，您只需点击“开始采集”即可</font><br>
  <a href="http://www.gameyes.com/index/billboard1.htm" target="_blank">当然，您也可以手工改动ID，按您要求采集,点击查看采集网站专辑ID>>></a><br>
  </tr>
</table>

</div>

