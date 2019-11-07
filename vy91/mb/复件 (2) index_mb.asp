<!DOCTYPE html>
<html>
<head>
    <meta charset="gb2312"><link rel="stylesheet" href="/css/index.css" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title></title>
    <script type="text/javascript">
    	
   		document.addEventListener('plusready', function(){
   			//console.log("所有plus api都应该在此事件发生后调用，否则会出现plus is undefined。"
   			
   		});
   		
    </script>
</head>
<body>
	<div class="top">
    	<div class="top_l">
    		<span><img src="/img/1_06.gif"/>中国最大的H5游戏平台</span>
            <a href="#"><img src="/img/1_03.gif"/></a>
        </div>
        <div class="top_r">
        	<a href="#">收藏H5游戏窝 |</a> 
            <a href="#">保存到桌面</a>
        </div>
    </div>
    
    <div class="cen">
    	<div class="cen_l">
        	<img src="/img/1_12.gif"/>
        </div>
        <div class="cen_c">
        	<ul>
            	<li><a href="#">首页</a></li>
                <li><a href="#">H5游戏库</a></li>
                <li><a href="#">合集</a></li>
                <li><a href="#">新闻</a></li>
                <li><a href="#">攻略</a></li>
            </ul>
        </div>
        <div class="cen_r">
        	<form>
            	<input class="input" type="text" placeholder="找游戏">
            </form>
        </div>
    </div>
    
    
    <div class="banner"><a href="#"><img src="/img/banner_02.jpg"/></a></div>
    
    <div class="box">
	    <div class="content">
	    	<div class="content_t">
	        	<div class="content_t_l"><span><b>经典游戏</b></span></div>
	            <div class="content_t_r">
	            	<a href="#">更多</a>
	            </div>
	        </div>
	        
	        <div class="content_btm">
		    	<ul>
                                      <%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select top 6 * from flash where mpic<>'' and tag like '%html5%' order by geshou desc,hits desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
        	<li><a href="/gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" ><img src="<%=rs("mpic")%>" alt="<%=rs("flashname")%>"/><br /><%=rs("cnflashname")%><br /><span>开始游戏</span></a></li>
            <%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
		        </ul>
	        </div>
	        <div class="content_enter">
	         	<form>
	            	<input type="submit" value="全部游戏">
	            </form>
	        </div>
	    </div>
    </div>
    
    <div class="last">
		<div class="last_t">
        	<div class="last_t_l"><span><b>猜你喜欢</b></span></div>
            <div class="last_t_r">
            	<img src="/img/nn_23.jpg"/><a href="#">换一换</a>
            </div>
        </div>
        
        <div class="last_b">
        	<ul>
              <%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where mpic<>'' and tag like '%html5%' order by geshou desc,id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
               	<li><a href="/gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" ><img src="<%=rs("mpic")%>" alt="<%=rs("flashname")%>"/><%=rs("cnflashname")%><br /><h>益智休闲<br /></h><%=rs("hits")%><d>进入</d></a></li>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
            </ul>
            <div class="last_b_enter">
	         	<form>
	            	<input type="submit" value="展开全部">
	            </form>
        	</div>
        </div>
    </div>
    
    
    <div class="bottom">
    	<div class="bottom_t">
    		<a href="#">更多链接:www.H5.cn</a>
            <ul>
                <li><a href="#">友情提示：</a></li>
                <li><a href="#">H5游戏窝</a></li>
                <li><a href="#">开服表</a></li>
                <li><a href="#">G站八卦</a></li>
                <li><a href="#">G站论坛</a></li>
                <li><a href="#">G站</a></li>
                <li><a href="#">新手卡</a></li>
                <li><a href="#">玩游戏</a></li>
            </ul>
        </div>
        
        <div class="bottom_b">
        	<div class="bottom_b_t"><img src="/img/b_03.jpg"/></div>
            <div class="bottom_b_c">
            	<p>H5游戏窝温馨提示：抵制不良游戏拒绝盗版游戏注意自我保护谨防受骗上当适度游戏益脑沉迷游戏伤身</p>
                <p>合理安排时间享受健康生活 网站备案：闽ICP备12004588号-7 Copyright &copy; 2016~2017 <a href="#">H5游戏窝</a></p>
            </div>
            <div class="bottom_b_btn">
            	<ul>
                	<li><img src="/img/b_07.jpg"/><br />游戏窝手机版</li>
            		<li><img src="/img/b_09.jpg"/><br />游戏窝公众号</li>
                </ul>
            </div>
        </div>  
    </div>
    
    <div class="final">
    	<ul>
        	<li><a href="#"><img src="/img/01.png"/><br />首页</a></li>
            <li><a href="#"><img src="/img/02.png"/><br />游戏库</a></li>
            <li><a href="#"><img src="/img/03.png"/><br />合集</a></li>
            <li><a href="#"><img src="/img/04.png"/><br />我</a></li>
        </ul>
    </div>
    
    
</body>
</html>