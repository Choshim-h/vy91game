<!--#include File="Conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="Style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../../jquery/xheditor/common.css" type="text/css" media="screen" />
<script type="text/javascript" src="../../jquery/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="../../jquery/xheditor/xheditor.js"></script>
<title>无标题文档</title>
</head>

<%
fileName="newsEdit.asp"
id=request("id")
act=request("act")
Set Rs=Server.Createobject("Adodb.Recordset")


if act="edit" then
Sql="SELECT *,newsclassname FROM [News] LEFT JOIN NewsClass on NewsClass.newsClassID=news.newsClassID  where newsID="&id
Rs.open Sql,Conn,1,1
	newsID=rs("newsID")
	newsClassID=rs("newsClassID")
	newsTitle=rs("newsTitle")
	newsurl=rs("newsurl")
	newsmiaosu=rs("newsmiaosu")
	newsContent=rs("newsContent")
	newsPic=rs("newsPic")
	isComment=rs("isComment")
	isActive=rs("isActive")
	addDate=rs("addDate")
	hits=rs("hits")
	isgood=rs("isGood")
	newsClassName=rs("newsClassName")
rs.close
end if


if act="add" then
	newsID=""
	newsClassID=""
	newsTitle=""
	newsurl=""
	newsmiaosu=""
	newsContent=""
	newsPic=""
	isComment=""
	isActive=""
	addDate=now()
	hits=0
	isgood=""
	newsclassname=""
end if



%>

<body>
<form id="form2" name="form2" method="post" action="NewsEditAction.asp">

<div style="width:99%; margin-left:10px;">
<table  border="0" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="width:99%; margin-left:10px;" >
<tr>  
    <td height="20" colspan="2" align="center" bgcolor="#0080C0">添加新闻 </td>
    </tr>
  
  <tr>
    <td width="25%" bgcolor="#FFFFFF">标题</td>
    <td width="75%" bgcolor="#FFFFFF"><input name="newsTitle" type="text" value="<%=newsTitle%>" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">所属分类</td>
    <td bgcolor="#FFFFFF"><select name="newsClassID">
              <%
Sql="Select * From newsClass"
Rs.open Sql,Conn,1,1
Do While not Rs.Eof
%>
          <option value="<%=rs("newsclassid")%>" <%if rs("newsClassName")=newsClassName then%>selected<%end if%>><%=rs("newsclassname")%></option>
          <%
Rs.Movenext
Loop
Rs.Close
%>

    </select></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">时间</td>
    <td bgcolor="#FFFFFF"><input name="adddate" type="text" value="<%=adddate%>" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">链接</td>
    <td bgcolor="#FFFFFF"><input name="newsurl" type="text" value="<%=newsurl%>" size="50" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">描述</td>
    <td bgcolor="#FFFFFF"><input name="newsmiaosu" type="text" value="<%=newsmiaosu%>" size="50" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">图片</td>
    <td bgcolor="#FFFFFF"><input name="newsPic" type="text" id="newsPic" value="<%=newsPic%>" size="45" /> 
    <a href=javascript:upwin("../userupload.asp?piclb=newsPic")>上传图片</a>首页FLASH图片大小450X256<br/>(可给此图片路径插入到"新闻内容"，点击“插入图片按扭”,给“图片地址”里http://去掉，复制、粘贴些路径到"新闻内容"里面)</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">内容</td>
    <td bgcolor="#FFFFFF"><textarea id="newsContent" name="newsContent" class="xheditor" rows="12" cols="80" style="width: 80%"><%=newsContent%></textarea>    </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">预留</td>
    <td bgcolor="#FFFFFF"><input name="isActive" type="checkbox" <%if isActive=true then %> checked <%end if%> /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">是否推荐</td>
    <td bgcolor="#FFFFFF"><input name="isGood" type="checkbox"  <%if isGood=true then %> checked <%end if%> /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">点击量</td>
    <td bgcolor="#FFFFFF"><input name="hits" type="text" value="<%=hits%>" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><input name="act" type="hidden" value="<%=act%>" /><input name="newsID" type="hidden" value="<%=newsID%>" /><input type="submit" name="button" id="button" value="提交" />
      <input type="reset" name="button2" id="button2" value="重置" /></td>
  </tr>
</table>
</div>
</form>
</body>
</html>


<script language="JavaScript" type="text/JavaScript">
function upwin(rem)
{ 
	window.open(rem,'vote','width=400,height=100,directories=no,top=300,left=200,toolbar=no,status=no,scrollbars=no,resizable=yes'); 
	}
function upwin1(rem)
{ 
	window.open(rem,'vote','width=400,height=100,directories=no,top=300,left=200,toolbar=no,status=no,scrollbars=no,resizable=yes'); 
	}

</script>
