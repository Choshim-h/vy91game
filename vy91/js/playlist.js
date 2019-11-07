//定义显示浏览记录数
var displayamount = 8;

function glog2(address,linkname)
{


    address=address+"_splitchar_";//取出事件发生源的href值，并用_splitchar_分割
wlink=linkname+"+"+address; //将链接名称和链接地址整合到一个变量当中
old_info=getCookie("history_info");//从Cookies中取出以前纪录的浏览历史
    //以下判断新的浏览动作是否和已有的历史重复，如果不重复则写入cookies
var insert=true; 
if(old_info==null)          //判断cookie是否为空
{
 insert=true;
}
else
{ 
    var old_link=old_info.split("_splitchar_");
    for(var j=0;j<old_link.length;j++)
      {
         if(old_link[j].indexOf(linkname)!=-1)
            insert=false;
         if(old_link[j]=="null")
            break;
     }
 }


if(insert)                //如果符合条件则重新写入数据
{
    wlink+=getCookie("history_info");
    setCookie("history_info",wlink);
}

}






//读取cookie中指定的内容
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
//读取cookie中指定的内容的了函数
function getCookieVal (offset) { 
 var endstr = document.cookie.indexOf (";", offset); 
 if (endstr == -1) endstr = document.cookie.length; 
    return unescape(document.cookie.substring(offset, endstr)); 
 } 
       
//将浏览动作写入cookie
function setCookie (name, value) { 
       var exp = new Date(); 
       exp.setTime (exp.getTime()+3600000000); 
       document.cookie = name + "=" + value + "; expires=Thu, 21 Sep 2099 05:27:00 GMT; path=/"; 
}


//显示浏览记录
function history_show()
{   
 var history_info=getCookie("history_info");
 var content=""; 
 if(history_info!=null)
 {
 history_arg=history_info.split("_splitchar_");

 var factdisplayamount = history_arg.length < displayamount ? history_arg.length : displayamount;//如果记录数达不到指定的显示数,则显示所有
 
 var i;
 for(i=0;i<factdisplayamount;i++)//定义显示浏览的记录数
 {
  if(history_arg[i]!="null")
  {
    var wlink=history_arg[i].split("+");
   content+=("&nbsp;<a href='"+wlink[1]+"' target='_blank'>"+wlink[0]+"</a>&nbsp;");
   }
   document.getElementById("history").style.display='';
   document.getElementById("history").innerHTML="<div style='float:left; padding:3px; width:95px;'><img src='/images/played_bg2.gif' width='94' height='22' /></div>"+content;
   }
}
else
 {document.getElementById("history").innerHTML="您没有任何浏览纪录";}
 

}