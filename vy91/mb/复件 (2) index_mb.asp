<!DOCTYPE html>
<html>
<head>
    <meta charset="gb2312"><link rel="stylesheet" href="/css/index.css" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title></title>
    <script type="text/javascript">
    	
   		document.addEventListener('plusready', function(){
   			//console.log("����plus api��Ӧ���ڴ��¼���������ã���������plus is undefined��"
   			
   		});
   		
    </script>
</head>
<body>
	<div class="top">
    	<div class="top_l">
    		<span><img src="/img/1_06.gif"/>�й�����H5��Ϸƽ̨</span>
            <a href="#"><img src="/img/1_03.gif"/></a>
        </div>
        <div class="top_r">
        	<a href="#">�ղ�H5��Ϸ�� |</a> 
            <a href="#">���浽����</a>
        </div>
    </div>
    
    <div class="cen">
    	<div class="cen_l">
        	<img src="/img/1_12.gif"/>
        </div>
        <div class="cen_c">
        	<ul>
            	<li><a href="#">��ҳ</a></li>
                <li><a href="#">H5��Ϸ��</a></li>
                <li><a href="#">�ϼ�</a></li>
                <li><a href="#">����</a></li>
                <li><a href="#">����</a></li>
            </ul>
        </div>
        <div class="cen_r">
        	<form>
            	<input class="input" type="text" placeholder="����Ϸ">
            </form>
        </div>
    </div>
    
    
    <div class="banner"><a href="#"><img src="/img/banner_02.jpg"/></a></div>
    
    <div class="box">
	    <div class="content">
	    	<div class="content_t">
	        	<div class="content_t_l"><span><b>������Ϸ</b></span></div>
	            <div class="content_t_r">
	            	<a href="#">����</a>
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
        	<li><a href="/gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" ><img src="<%=rs("mpic")%>" alt="<%=rs("flashname")%>"/><br /><%=rs("cnflashname")%><br /><span>��ʼ��Ϸ</span></a></li>
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
	            	<input type="submit" value="ȫ����Ϸ">
	            </form>
	        </div>
	    </div>
    </div>
    
    <div class="last">
		<div class="last_t">
        	<div class="last_t_l"><span><b>����ϲ��</b></span></div>
            <div class="last_t_r">
            	<img src="/img/nn_23.jpg"/><a href="#">��һ��</a>
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
               	<li><a href="/gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" title="<%=rs("flashname")%>" ><img src="<%=rs("mpic")%>" alt="<%=rs("flashname")%>"/><%=rs("cnflashname")%><br /><h>��������<br /></h><%=rs("hits")%><d>����</d></a></li>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
            </ul>
            <div class="last_b_enter">
	         	<form>
	            	<input type="submit" value="չ��ȫ��">
	            </form>
        	</div>
        </div>
    </div>
    
    
    <div class="bottom">
    	<div class="bottom_t">
    		<a href="#">��������:www.H5.cn</a>
            <ul>
                <li><a href="#">������ʾ��</a></li>
                <li><a href="#">H5��Ϸ��</a></li>
                <li><a href="#">������</a></li>
                <li><a href="#">Gվ����</a></li>
                <li><a href="#">Gվ��̳</a></li>
                <li><a href="#">Gվ</a></li>
                <li><a href="#">���ֿ�</a></li>
                <li><a href="#">����Ϸ</a></li>
            </ul>
        </div>
        
        <div class="bottom_b">
        	<div class="bottom_b_t"><img src="/img/b_03.jpg"/></div>
            <div class="bottom_b_c">
            	<p>H5��Ϸ����ܰ��ʾ�����Ʋ�����Ϸ�ܾ�������Ϸע�����ұ���������ƭ�ϵ��ʶ���Ϸ���Գ�����Ϸ����</p>
                <p>������ʱ�����ܽ������� ��վ��������ICP��12004588��-7 Copyright &copy; 2016~2017 <a href="#">H5��Ϸ��</a></p>
            </div>
            <div class="bottom_b_btn">
            	<ul>
                	<li><img src="/img/b_07.jpg"/><br />��Ϸ���ֻ���</li>
            		<li><img src="/img/b_09.jpg"/><br />��Ϸ�ѹ��ں�</li>
                </ul>
            </div>
        </div>  
    </div>
    
    <div class="final">
    	<ul>
        	<li><a href="#"><img src="/img/01.png"/><br />��ҳ</a></li>
            <li><a href="#"><img src="/img/02.png"/><br />��Ϸ��</a></li>
            <li><a href="#"><img src="/img/03.png"/><br />�ϼ�</a></li>
            <li><a href="#"><img src="/img/04.png"/><br />��</a></li>
        </ul>
    </div>
    
    
</body>
</html>