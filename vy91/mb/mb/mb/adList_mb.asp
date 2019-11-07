<style type="text/css">

<!--

body 												{font-size:12px;padding:0; margin:0; height:auto;}

a img 											{border:0;}



#focuseFrom									{width:246px;}

#focuseFrom #imgObj					{width:246px;height:160px;}

#focuseFrom #imgObj	img			{display:block;width:246px;height:160px;margin:0 auto;padding:0;}



#imgTitle_down 							{FILTER:ALPHA(opacity=70);position:relative;left:0px;top:-13px!important;top:-16px;text-align:left;overflow: hidden;left:0px;text-align:right;margin:0;}

#imgTitle_down a 						{font:bold 11px sans-serif;color:#FFF;height:16px;padding:4px 8px!important;padding:1px 7px;text-decoration:none;background:#000; border-left:1px solid #FFF;}

#imgTitle_down a.trans			{width:120px;height:14px;background-color:#000;filter:progid:DXImageTransform.Microsoft.Alpha(startX=0, startY=0, finishX=100, finishY=100,style=1,opacity=0,finishOpacity=40);}

#imgTitle_down a:hover			{background:#FF9900}

#imgtitle_down a.now				{background:#FF6600;}

#imgtitle_down a.now:hover	{background:#FF6600;}



#focuseFrom #itext					{text-align:center;margin:-2px 0 0 0;}

#focuseFrom #itext a				{12px "宋体";color:#0865bf;}

-->

</style>
<body onLoad="changeimg('1')">
<div id="prdLoad" style="display:none"> <img src="http://www.56.com/images/index/0712/wow1220.jpg" /> <img src="http://www.56.com/images/index/0712/si12201.jpg" /> <img src="http://www.56.com/images/index/0712/hejie1220.jpg" /> <img src="http://www.56.com/images/index/0712/happygo.jpg" /> </div>
<script language="javascript" type="text/javascript">

var TimeOut=5000;               //每张图切换时间 (单位毫秒);

var theTimer;

var imgUrl=new Array(); 

var imgLink=new Array();

var imgtext=new Array();

var imgAlt=new Array();

var adNum=0;

//焦点字框高度样式表 开始

document.write('<div id="focuseFrom">');

//焦点字框高度样式表 结束
<%
set rs = createobject("ADODB.recordset")
SQL = "select indexPic from system"
rs.open SQL,conn
if not rs.eof then
indexPicAll=Split(rs("indexPic"),"$$$") '保存为数组 
indexPicAllOverID=ubound(indexPicAll) '获得上标
for indexPicAllStartID=1 to indexPicAllOverID
	indexPicSmall=Split(indexPicAll(indexPicAllStartID),"%%%")
%>
	imgUrl[<%=indexPicAllStartID%>]='<%=indexPicSmall(1)%>';imgLink[<%=indexPicAllStartID%>]='<%=indexPicSmall(2)%>';imgAlt[<%=indexPicAllStartID%>]='<%=indexPicSmall(3)%>';
<%
next
end if
	rs.close
	set rs=nothing
	%>

function changeimg(n)

{

	adNum=n;

	window.clearInterval(theTimer);

	adNum=adNum-1;

	nextAd();

}

function goUrl(){

window.open(imgLink[adNum],'_blank');

}

//NetScape开始

if (navigator.appName == "Netscape")

{

document.write('<style type="text/css">');

document.write('.buttonDiv{height:4px;width:21px;}');

document.write('</style>');

function nextAd(){

	if(adNum<(imgUrl.length-1))adNum++;

	else adNum=1;

	theTimer=setTimeout("nextAd()",TimeOut);

	document.getElementById('imgObj').getElementsByTagName('img')[0].src=imgUrl[adNum];

	document.getElementById('imgObj').getElementsByTagName('img')[0].alt=imgAlt[adNum];

	document.getElementById('imgLink').href = imgLink[adNum];

	document.getElementById('itext').innerHTML = '<a href="'+imgLink[adNum]+'" target="_blank">'+imgAlt[adNum]+'</a>';

		

		document.getElementById('link'+adNum).className='now';

		for (var i=1;i<=4;i++)

		{

			 if (i!=adNum){document.getElementById('link'+i).className='';}

		}		

}

	document.write('<div id="imgObj"><a id="imgLink" href="'+imgLink[1]+'" target="_blank" ><img src="'+imgUrl[1]+'" name="imgInit" alt="'+imgAlt[1]+'"></a>')

	document.write('<div id="imgTitle_down">');

	//数字按钮代码开始

	for(var i=1;i<imgUrl.length;i++){document.write('<a id="link'+i+'" href="javascript:changeimg('+i+')" title="'+imgAlt[i]+'">'+i+'</a>');}

	//数字按钮代码结束

	document.write('</div>');

	document.write('<p id="itext"><a href="'+imgLink[1]+'" target="_blank">'+imgAlt[1]+'</a></p>')

	document.write('</div>');

	nextAd();

}

//NetScape结束

//IE开始

else

{

var count=0;

for (i=1;i<imgUrl.length;i++) {

	if( (imgUrl[i]!="") && (imgLink[i]!="")&&(imgAlt[i]!="") ) {

		count++;

	} else {

		break;

	}

}

function playTran(){

	if (document.all)

		//imgInit.filters.play();		

		document.getElementById('imgObj').filters[0].play();	

}

var key=0;

function nextAd(){

	if(adNum<count)adNum++ ;

	else adNum=1;

	

	if( key==0 ){

		key=1;

	} else if (document.all){

		//imgInit.filters.revealTrans.Transition=6;

		//imgInit.filters.revealTrans.apply();

		//imgInit.filters.apply();

		document.getElementById('imgObj').filters[0].apply();

    playTran();

    }

	document.images.imgInit.src=imgUrl[adNum];

	document.images.imgInit.alt=imgAlt[adNum];	

	document.getElementById('link'+adNum).className='now';

	

	for (var i=1;i<=count;i++)

	{

	   if (i!=adNum){document.getElementById('link'+i).className="";}

	}	

    //focustext.innerHTML=imgtext[adNum];

		//itext.innerHTML=linktext[adNum];

		itext.innerHTML='<a href="'+imgLink[adNum]+'" target="_blank">'+imgAlt[adNum]+'</a>';

	theTimer=setTimeout("nextAd()", TimeOut);

}

document.write('<div id="imgObj" style="filter: progid:DXImageTransform.Microsoft.Pixelate(MaxSquare=2);"><a target=_self href="javascript:goUrl()"><img src="javascript:nextAd()" name=imgInit></a></div>');

document.write('<div id="imgTitle_down"><a class="trans"></a>');

//数字按钮代码开始

for(var i=1;i<imgUrl.length;i++){document.write('<a id="link'+i+'"  href="javascript:changeimg('+i+')" class="button" style="cursor:hand" title="'+imgAlt[i]+'" onFocus="this.blur()">'+i+'</a>');}

//数字按钮代码结束

document.write('</div>');

document.write('<p id="itext"></p>')

document.write('</div>');

}

//IE结束
</script>
</body>
