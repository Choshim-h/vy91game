//弹出窗口
function openwin(url,width,height) { 
　　window.open (url, "newwindow", "height="+height+", width="+width+", toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") //写成一行
} 
//==============================
//程序制作888网,www.888wang.com
//如有不明白之处，请联系官方网站
//谢谢您使用888网小游戏系统
//为保证你的权益，请在官方网站购买程序
//请保留此信息，删除将不提代任何技术支持
//===============================
  
  function   RunOnBeforeUnload()   {   
  window.event.returnValue   =  '关闭浏览器将退出系统.';   
  }   
  
  
  function   RunOnUnload()   {   
  alert('呵呵~');   
  }   
  
    //判断是刷新还是关闭   
  function CloseOpen(){   
  if(event.clientX<=0 && event.clientY<0)     
  {   
  alert("关闭")  
  }   
  else   {   
  alert("刷新");   
  }   
  } 
  
var xmlHttp;
/************** 1 创建xhr实例 **************/
function createXMLHttpRequest(){
   if(window.ActiveXObject){
      xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
   }
   else if(window.XMLHttpRequest){
      xmlHttp=new XMLHttpRequest();
   }
}
/*************** 2 提交验证 ****************/
function validate(action,flashID,flashName){
   createXMLHttpRequest(); // 创建实例
   var date=document.getElementById("userName");
   var url="/inc/onLine_play.asp?action="+action+"&flashid="+flashID+"&flashname="+flashName+"";
   //alert(url);
   xmlHttp.open("GET",url,true);
  // xmlHttp.onreadystatechange=callback;// 当状态改变时，自动调用callback
   xmlHttp.send(null);
}
//onunload="方法()" onload="方法()
//播放页有调用validate(action,flashID,flashName)