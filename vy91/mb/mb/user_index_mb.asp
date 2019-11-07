<!--#include file="../conn.asp"-->
<!--#include file="../inc/config_list.Asp"-->
<!--#include file="../inc/md5.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><title>{userName}的空间,{webName},{keywords}</title>
<meta http-equiv=Content-Type content="text/html; charset=gbk">
<META name="Author" content="888网小游戏:www.wpez.cn">
<meta name="description" content="888网小游戏,小游戏,在线小游戏,原创小游戏,flash小游戏">
<meta name="keywords" content="888网小游戏,在线小游戏,原创小游戏,flash小游戏">
<link href="/images/public.css" rel="stylesheet" type="text/css" />
<link href="/images/888wang_index.css" rel="stylesheet" type="text/css" />
</head>
<body>

<!--顶部开始-->
<!--#include file="../mb/top_user.asp"-->
<!--顶部结束-->
<!--主体开始-->
<div class="width960">
  <!--左开始-->
  <div class="rightMain width702 left margin_top5"> <SPAN class=Name >欢迎来到 {userName} 的主页</SPAN>
    <div class=" user1 left"><img src="/images/home.gif" /></div> 
	<div class="user3 margin_left5 left">
      <ul>
        <li>空间地址：<script language="javascript" type="text/javascript">
				    function copyInBoard(s) { 			
	window.clipboardData.setData("text",s);
	alert("网址复制成功啦!");}	
				  document.write("<input onclick=\"javascript:copyInBoard(url);\" name=\"urlText\" id=\"urlText\" style=\"width:300px; height:18px;\" value=\"");document.write(location.href);document.write("\"  size=\"40\" />");var url = location.href;url +="\r\n这flash很好玩，过来玩玩。。。^_^";</script>
      <input name="Input" value="复制给好友" type="button" class="btn" onclick="javascript:copyInBoard(url);"/>
</li>
		
        <li>好评：500</li>
        <li>收藏游戏：500个</li>
		<li><input name="vote" type="submit" value="喜欢这里投一票" /> 复制上面的地址，叫朋友也来看看你的空间
		</li>
      </ul>
    </div>
  <div style="height:20px; width:100%;background: url(/images/user_bg.gif) repeat-x 0 0px;"></div>
   
   <div class="margin_top10">
      
    <H3><span style="float:right; padding-top:8px; padding-right:2px; background:none; font-size:12px; font-weight:normal;"> <a href="#">更多收藏>></a></span><SPAN class=Name>我的收藏</SPAN></H3>
	
	   <span id="userAdd"></span>
	 
        </div>



<div class="margin_top10" style="width:98%;">
    <H3><span style="float:right; padding-top:8px; padding-right:2px; background:none; font-size:12px; font-weight:normal;"> <a href="#">更多最近玩过的>></a></span><SPAN class=Name>最近玩过的小游戏</SPAN></H3>
	
    <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">日期：12-29 </div>
      </div>
     <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">12-29 删除</div>
      </div>
	    <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">12-29 删除</div>
      </div>
	    <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">12-29 删除</div>
      </div>
	    <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">12-29 删除</div>
      </div>
	  
	  <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">12-29 删除</div>
      </div>
	 <div class="favList"><img src="/1.jpg"/>
        <div class="margin_top7">仔仔巧逗许俏</div>
		<div class="margin_top7">12-29 删除</div>
      </div>
   </div>
   
  </div>

  <!--左结束-->
  <!--右开始-->
  <div class="leftMain margin_top5 left  border2 margin_left5">
   <H3><span style="float:right; padding-top:8px; padding-right:2px; background:none; font-size:12px; font-weight:normal;"> <a href="#">更改资料>></a></span><SPAN class=Name>{userName}</SPAN></H3>
    <div class=" user1 left"><img class="userMessageImg left" src="/1.jpg" /></div>
    <div class=" user2 margin_left5 left">
      <ul>
        <li>性别：保密</li>
        <li>在线时间：500</li>
        <li>上次登陆：1000Kb</li>
       
        <li>当前状态：在线</li>
      </ul>
    </div>
	
	
	<div class="onlie  margin_top5">
      <H3><span style="float:right; padding-top:8px; padding-right:2px; background:none; font-size:12px; font-weight:normal;"> <a href="#">更多>></a></span><SPAN class=Name>大家正在玩</SPAN></H3>
      <ul>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
        <li>经典小游戏动(888个人在玩)</li>
      </ul>
    </div>
	
	
  </div>
  
  <!--右end-->
</div>
<!--主体结束-->
<div class="clearfix"></div>
<!-- 清除浮动 -->
<div class="width960 foot"> <a href="#">关于我们</a> | <a href="#">免责声明</a> | <a href="#">使用帮助</a> | <a href="#">人才招聘</a> | <a href="#">联系我们</a>  | <a href="/sitemap.html">网站地图</a> <br/>
  {copyright}<script src="/jscount.js"></script><br/>
</div>
<SCRIPT language="JavaScript" src="/inc/htmlWrite.asp"></SCRIPT>
</body>
</html>
