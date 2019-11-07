//cookie相关函数
function getCookieVal (offset) { 
	var endstr = document.cookie.indexOf (";", offset); 
	if (endstr == -1) endstr = document.cookie.length; 
    return unescape(document.cookie.substring(offset, endstr)); 
 } 
						 
 function getCookie (name) {
         var arg = name + "="; 
         var alen = arg.length; 
         var clen = document.cookie.length; 
         var i = 0; 
         while (i < clen) { 
             var j = i + alen; 
             if (document.cookie.substring(i, j) == arg) return getCookieVal (j); 
             i = document.cookie.indexOf(" ", i) + 1; 
             if (i == 0) break; 
         } 
	     return null; 
 } 
function setCookie (name, value) { 
       var exp = new Date(); 
       exp.setTime (exp.getTime()+3600000000); 
       document.cookie = name + "=" + value + "; expires=" + exp.toGMTString(); 
}
function glog(evt)
{
	
evt=evt?evt:window.event;var srcElem=(evt.target)?evt.target:evt.srcElement;
try
{
while(srcElem.parentNode&&srcElem!=srcElem.parentNode)
{
if(srcElem.tagName&&srcElem.tagName.toUpperCase()=="A")
{
linkname=srcElem.innerHTML;
address=srcElem.href+"_www.achome.cn_";
wlink=linkname+"+"+address;	
old_info=getCookie("history_info");
var insert=true;
if(old_info==null)     //判断cookie是否为空
{
	insert=true;
}
else
{	
var old_link=old_info.split("_www.achome.cn_");
for(var j=0;j<=5;j++)
  {
	if(old_link[j].indexOf(linkname)!=-1)
	insert=false;
	if(old_link[j]=="null")
	break;
	}
	}
/////////////////////////////
if(insert)  {
wlink+=getCookie("history_info");
setCookie("history_info",wlink);
history_show().reload();
break;
}
}
srcElem = srcElem.parentNode;
}
}
catch(e){}
return true;
}
document.onclick=glog;
function history_show()
{			
	var history_info=getCookie("history_info");
	var content="";	
	if(history_info!=null)
	{
	history_arg=history_info.split("_www.achome.cn_");
	var i;
	for(i=0;i<=5;i++)
	{
		if(history_arg[i]!="null")
		{
		  var wlink=history_arg[i].split("+");
			content+=("<font color='#ff000'></font>"+"<a href='"+wlink[1]+"' target='_blank'>"+wlink[0]+"</a>&nbsp;&nbsp;");
			}
			document.getElementById("history").innerHTML=content;
			}
}
else
	{document.getElementById("history").innerHTML="对不起，您没有任何浏览纪录";}
}
// JavaScript Document