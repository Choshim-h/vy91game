function $$$(item){
	return document.getElementById(item);
}
var B=BigNews={
	current:0,
	next:0,
	scrollInterval:0,
	autoScroller:0,
	smallpic:"SwitchSmaPic"
};
BigNews.turn=function(index,obj){
	clearInterval(BigNews.autoScroller);
	BigNews.scroll(index,obj);
}
BigNews.scroll=function(index,obj){
	var count=0;
	var step=obj.step;
	var duration=8; //&micro;&yen;&Otilde;&Aring;&Iacute;&frac14;&AElig;&not;&sup1;&ouml;&para;&macr;&Euml;&Ugrave;&para;&Egrave; &Auml;&not;&Egrave;&Iuml;&Ecirc;&Ccedil;16
	var b=BigNews;
	b.next=index;
	if(index==b.current){
		return;
	}

	clearInterval(b.scrollInterval);
	for(var i=0;i<obj.totalcount;i++){
		$$$(obj.smallpic+"_"+i).className='';
	}
	$$$(obj.smallpic+"_"+index).className=obj.selectstyle;
	var span=index-b.current;
	var begin_value=$$$(obj.bigpic).scrollTop;
	var chang_in_value=span*step+(b.current*step-begin_value);
	b.scrollInterval=setInterval(function(){doit(begin_value,chang_in_value)},10);
	function doit(b,c){
		$$$(obj.bigpic).scrollTop=cpu(count,b,c,duration);
		count++;
		if(count==duration){
			clearInterval(BigNews.scrollInterval);
			scrollInterval=0;
			count=0;
			$$$(obj.bigpic).scrollTop=b+c;
			BigNews.current=index;
		}
	}
	function cpu(t,b,c,d) {return c*((t=t/d-1)*t*t+1)+b;};
}
BigNews.auto=function(obj){
	clearInterval(BigNews.autoScroller);
	BigNews.autoScroller=setInterval(function(){
		BigNews.scroll(BigNews.current==(obj.totalcount-1)?0:BigNews.current+1,obj);
	},obj.autotimeintval);
	$$$("SwitchBigPic").onmouseover=function(){clearInterval(BigNews.autoScroller);}
	$$$("SwitchBigPic").onmouseout=function(){
		BigNews.autoScroller=setInterval(function(){
		BigNews.scroll(BigNews.current==(obj.totalcount-1)?0:BigNews.current+1,obj);
	},obj.autotimeintval);
		}
}
BigNews.pauseSwitch = function() {	
	clearInterval(BigNews.autoScroller);
}
BigNews.init=function(obj){
	$$$(obj.bigpic).onmouseover = new Function("BigNews.pauseSwitch();") ;		
	$$$(obj.bigpic).onmouseout = new Function("BigNews.auto("+obj.objname+");") ;
	for (i=0;i<obj.totalcount;i++) {	
		if(obj.smallpic!=null && obj.smallpic!="") {
		 $$$(obj.smallpic+"_"+i).onmouseover = new Function("BigNews.turn("+i+","+obj.objname+");BigNews.pauseSwitch();") ;		
		 $$$(obj.smallpic+"_"+i).onmouseout = new Function("BigNews.auto("+obj.objname+");") ;	
		}
	}
	BigNews.auto(obj);
}

/*&para;&yen;&sup2;&iquest;&raquo;&not;&para;&macr;&sup1;&atilde;&cedil;&aelig;*/
var intervalId = null;
function slideAd(id,nStayTime,sState,nMaxHth,nMinHth){
stayTime=nStayTime*3000 || 3000;
maxHeigth=nMaxHth || 230;
minHeigth=nMinHth || 1;
state=sState || "down" ;
var obj = document.getElementById(id);
if(intervalId != null)window.clearInterval(intervalId);
    function openBox(){
        var h = obj.offsetHeight;
        obj.style.height = ((state == "down") ? (h + 10) : (h - 10))+"px";
        if(obj.offsetHeight>maxHeigth){
        window.clearInterval(intervalId);
        intervalId=window.setInterval(closeBox,stayTime);
        }
		if (obj.offsetHeight<minHeigth){
		window.clearInterval(intervalId);
		obj.style.display="none";
		}
}
	function closeBox(){
	slideAd(id,stayTime,"up",nMaxHth,nMinHth);
	}
intervalId = window.setInterval(openBox,1);
}


/*&Ccedil;&ETH;&raquo;&raquo;¡À¨º&Ccedil;&copy;*/

function scrollDoor(){
	this.value = 0;
	
}
scrollDoor.prototype = {
	sd : function(menus,divs,openClass,closeClass){// two class
		var _this = this;
		var fodTime = 0;
		if(menus.length != divs.length)
		{
			alert("&sup2;&Euml;&micro;&yen;&sup2;&atilde;&Ecirc;&yacute;&Aacute;&iquest;&ordm;&Iacute;&Auml;&Uacute;&Egrave;&Yacute;&sup2;&atilde;&Ecirc;&yacute;&Aacute;&iquest;&sup2;&raquo;&Ograve;&raquo;&Ntilde;¨´!");
			return false;
		}				
		for(var i = 0 ; i < menus.length ; i++)
		{	
			_this.$$$(menus[i]).flag = ++this.value;
			_this.$$$(menus[i]).value = i;
			_this.$$$(menus[i]).onmouseover = function (){
				//swTabs(this);
				var _thisz=this;
				clearTimeout(fodTime);
				fodTime=0;
				fodTime = setTimeout(function(){swTabs(_thisz)},100);
				}
			_this.$$$(menus[i]).onmouseout = function (){
				clearTimeout(fodTime);
				fodTime=0;
				}
		}
		function swTabs(this_m){										
				for(var j = 0 ; j < menus.length ; j++)
				{						
					_this.$$$(menus[j]).className = closeClass;
					_this.$$$(divs[j]).style.display = "none";					
				}				
				_this.$$$(menus[this_m.value]).className = openClass;	
				_this.$$$(divs[this_m.value]).style.display = "block";				
			}
		},
	$$$ : function(oid){
		if(typeof(oid) == "string")
		return document.getElementById(oid);
		return oid;
	}
}

//SDmodel.sd(["mmm01","mmm02","mmm03"],["ccc01","ccc02","ccc03"],"at","");