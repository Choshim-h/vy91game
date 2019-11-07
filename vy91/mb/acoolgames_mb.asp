<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Play Free Online Games at Acoolh5.com</title>
<link href="/css/boilerplate.css" rel="stylesheet" type="text/css">
<link href="/css/acoolh5_index_2015.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {
	background-color: #131313;
}
</style>
<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="/js/respond.min.js"></script>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-0996510625872678",
    enable_page_level_ads: true
  });
</script>
</head>
<body>
<div class="gridContainer clearfix">
  <div id="acool_head"><a href="http://www.acoolh5.com"><img src="images/acool_logo.png"></a></div>
  <div id="acool_index_body">
      <div id="playinfo_top_gg"><script language="javascript" src="/otherhtml/play_load_1.js"></script></div>
   <%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 9 * from flash where mpic<>'' and androidurl<>'' order by id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
			<div id="acool_index_gamelist"><a  href="<%=rs("androidurl")%>" title="<%=rs("flashname")%>" target="_blank" ><img class="gamelist_icon" src="http://m.acool.com/<%=rs("mpic")%>" alt="<%=rs("flashname")%>"/><img class="gamelist_down" src="http://h.acool.com/images/btn_freedown.png"/></a></div>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
    <div id="playinfo_top_gg1"><script language="javascript" src="/otherhtml/play_load_2.js"></script></div>
      
  <%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 24 * from flash where mpic<>'' and iosurl='' and tag like '%html5%' order by geshou desc,id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
			<div id="acool_index_gamelist"><a  href="/gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" ><img class="gamelist_icon" src="http://m.acool.com/<%=rs("mpic")%>" alt="<%=rs("flashname")%>"/><img class="gamelist_down" src="http://h.acool.com/images/btn_playnow.png"/></a></div>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
    <div id="playinfo_top_gg1"><script language="javascript" src="/otherhtml/play_load_2.js"></script></div>
</div>
</div>
<div style="display:none;">
<script src="http://s4.cnzz.com/stat.php?id=1255837001&web_id=1255837001" language="JavaScript"></script>
</div>
</body>
</html>
