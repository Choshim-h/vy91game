//连带文件有images/openDiv2.css
//调用方法<a href="#" onClick="sexyBOX('标题','这里是一个弹出窗口!<br><a href=\'#\'>URL</a><p>dddddddddddddd','500'); return false;">sexy box</a>

function $(v) { return(document.getElementById(v)); }
function $S(v) { return($(v).style); }
function agent(v) { return(Math.max(navigator.userAgent.toLowerCase().indexOf(v),0)); }
function isset(v) { return((typeof(v)=='undefined' || v.length==0)?false:true); }
function XYwin(v) { var z=agent('msie')?Array(document.body.clientHeight,document.body.clientWidth):Array(window.innerHeight,window.innerWidth); return(isset(v)?z[v]:z); }

function sexyTOG() { document.onclick=function(){ $S('sexyBG').display='none'; $S('sexyBOX').display='none'; document.onclick=function(){}; }; }
function sexyBOX(t,v,b) { 
$S('sexyBG').height=XYwin(0)+'px'; 
$S('sexyBG').display='block'; 
$('sexyBOX').innerHTML="<div class=\"sexyT\">&nbsp;&nbsp;"+t+"<\/div>"+v+"<div class=\"sexyX\" onMouseMove=\"setTimeout('sexyTOG()',1);\" onMouseOut=\"setTimeout('document.onclick=function(){}',1);\" style=\"cursor:pointer;\">(关闭)"+"<\/div>"; 
$S('sexyBOX').left=Math.round((XYwin(1)-b)/2)+'px'; 
$S('sexyBOX').width=b+'px'; 
$S('sexyBOX').display='block'; }

window.onload=function(){
document.body.innerHTML="<div id=\"sexyBG\"></div><div id=\"sexyBOX\"></div>"+document.body.innerHTML;
}

