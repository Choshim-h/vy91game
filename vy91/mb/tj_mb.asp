<!doctype html>
<html>
<head>
<meta charset="gb2312">
<title>Free Online Games</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/index.css">
    <!-- &#65533;&#65533;&#65533;&#65533;&#65533;&#65533; -->
    <link rel="stylesheet" href="../css/component.css">
    <script src="../js/jquery-1.8.3.min.js"></script>
    <style>
    .allnav .newnav ul li.active{background: #002E46;}
    .allnav .newnav ul li.active a{color:#FE9E09;}
    </style>
</head>

<body style="background: #0e93cb;">
<div class="wrapper">
        <!-- header -->
        <div class="header" id="sticky_top">
            <div class="left">
                <a href="./index.html" target="_bock">
                    <img src="./img/logo.png" alt="Free Online Games">
                </a>
            </div>
            <div class="allnav">
                <div class="newnav">
                    <ul>
                        <li><a href="/new-games.html" target="_bock"><img src="./img/header-newgames.png" alt="">New</a></li>
                        <li class="active"><a href="/beauty-games.html" target="_bock"><img src="./img/header-bestgames.png" alt="">Best</a></li>
                        <li><a href="/hot-games.html" target="_bock"><img src="./img/header-hotgames.png" alt="">Hot</a></li>
                        <li><a href="/moregames.html" target="_bock"><img src="./img/header-gametags.png" alt="">Tags</a></li>
                    </ul>
                </div>
            </div>
            <div class="right">
                <div class="button">
                    <form action="/search.asp" method="post"  >
                        <div class="sreach no">
                            <input type="text" name="www_888wang_com_gameName" id="www_888wang_com_gameName"  onclick="this.value='';this.style.color='#fff'" value="Search Game Name..." >

                            <span class="bock">
                                <button type="submit" name="submit" ></button>
                                <img src="./img/search.png" alt="GO" class="btn">
                            </span>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <!-- header  end -->
        <!-- nav&#65533;&#65533;&#357; -->
        <div class="wrapperhovertree">
            <div class="container">
                <header>
                    <h1><a href="javascript:;" class="slide-menu" target="_self"><img src="./img/setting-home.png" alt=""></a></h1>
                </header>
            </div>
        </div>
        <div class="slide-mask"></div>
        <aside class="slide-wrapper">
            <div>
                <ul>
                    <li><a href="/new-games.html" target="_bock"><img src="./img/header-newgames.png" alt="">New</a></li>
                    <li class="active"><a href="/beauty-games.html" target="_bock"><img src="./img/header-bestgames.png" alt="">Best</a></li>
                    <li><a href="/hot-games.html" target="_bock"><img src="./img/header-hotgames.png" alt="">Hot</a></li>
                    <li><a href="/moregames.html" target="_bock"><img src="./img/header-gametags.png" alt="">Tags</a></li>
                </ul>
            </div>
        </aside>

        <div class="button w100">
            <form action="/search.asp" method="post"  >
                <div class="sreach">
                    <input type="text" name="www_888wang_com_gameName" id="www_888wang_com_gameName"  onclick="this.value='';this.style.color='#fff'" value="Search Game Name..." >
                    <span>
                        <button type="submit" name="submit" ></button>
                    </span>
                </div>
            </form>
        </div>
        <!-- allgames -->
        <div class="allgames">
            <div class="games container">
                <ul class="grid effect-2" id="grid">
                      <%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where mpic<>'' and tag like '%html5%' and tag like '%Beauty%' order by geshou desc,id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF
	  %>
                    <li>
                        <a href="/gameinfo/<%=Replace(rs("flashname")," ","-")%>.html" class="game" target="_bock"
                            title="
                            <%=rs("cnflashname")%>">
                            <img src="<%=rs("mpic")%>" alt="
                            <%=rs("cnflashname")%>">
                            <div class="name">
                                <span>
                                    <%=rs("cnflashname")%></span>
                            </div>
                        </a>
                    </li>
<%
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %> 
                </ul>

            </div>
        </div>
        <!-- allgames  end -->
        <div class="footer">
            <a href="">Random Game</a>
        </div>
        <div class="toTop"></div>
    </div>

    <script src="./js/masonry.pkgd.min.js"></script>
    <script src="./js/AnimOnScroll.js"></script>
    <script src="./js/index.js"></script>
    <script>
        new AnimOnScroll( document.getElementById( 'grid' ), {
            minDuration : 0.4,
            maxDuration : 0.7,
            viewportFactor : 0.2
        });
        </script>
</body>
</html>
