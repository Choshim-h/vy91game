<%
dim showTitle
showTitle="评价最好的游戏100个"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><title><%=showTitle%>,<%=webname%></title>
<meta http-equiv=Content-Type content="text/html; charset=gbk">
<link href="/myimg/61133.css" rel="stylesheet" type="text/css" />
<style type="text/css">
/*玩得多的与评价好的*/
.loveList{
width:200px;
height:220px;
margin-top:3px;
margin-left:28px;
float:left  ;
text-align:center;
}
.loveListImg{
width:200px;
height:150px;
margin-top:2px;
}

</style>
</head>
<body>
<!--#include file="top.asp"-->
<div class="width960">

<!--主体开始-->
<div class="box"><script language="javascript" src="/otherhtml/love_1.js"></script></div>
<div class="box " style="background:#fff; border:solid 1px #CDCDCD">
  <!--左开始-->
  <div class="box path"> 
    <a href="/">网站首页</a>--><%=showTitle%></div>
	<div class="box"> 
	 <%
		i=1
		maxList=100
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 100 id,flashname,classid,classname,pic,love,nolove from flash order by love desc"
		rs.open sql,conn,1,1
		do while not rs.EOF
		id=rs("id")
		flashname=rs("flashname")
		classid=rs("classid")
		classname=rs("classname")
		pic=rs("pic")
		love=rs("love")
		nolove=rs("nolove")
	  %>
    <div class="loveList" style="float:left;margin-left:20px;"><a href="/<%=makeUrl_flash%>/<%=left(md5(id&md5Str),1)&id%>/" target="_blank"><img class="loveListImg" src="/flashpic/<%=pic%>"/></a>
        <div class="margin_top7"><a href="/<%=makeUrl_flash%>/<%=left(md5(id&md5Str),1)&id%>/"  target="_blank"><%=left(flashname,7)%></a> 类别:<a href="/<%=makeUrl_class%>/<%=left(md5(rs("classid")&md5Str),1)&rs("classid")%>_1/"><%=classname%></a></div>
		<div class="margin_top7"><img src="/images/faceg.gif" alt="好评"/><%=love%> <img src="/images/faceb.gif" alt="差评"/><%=nolove%></a></div>
      </div>
      

	  <%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
	  %>
       <div class="clearfix"></div>
   </div>     

  <!--内容结束-->
</div>
<!--主体结束-->
<div class="clearfix"></div>
<!-- 清除浮动 -->
<div class="box"><script language="javascript" src="/otherhtml/love_2.js"></script></div>
<!--#include file="foot.asp"-->
</div>
<SCRIPT language="JavaScript" src="/inc/htmlWrite.asp"></SCRIPT>
</body>
</html>
<%
set rs=nothing
conn.close
set conn=nothing
%>
<SCRIPT language="javascript" src="/Std_StranJF.Js"></SCRIPT>