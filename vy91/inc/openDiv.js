//�����ļ���images/openDiv.css
//���÷���<a href="#none" onclick="testMessageBox(event);">��������</a>


var isIe=(document.all)?true:false;
//����select�Ŀɼ�״̬
function setSelectState(state)
{
var objl=document.getElementsByTagName('select');
for(var i=0;i<objl.length;i++)
{
objl[i].style.visibility=state;
}
}
function mousePosition(ev)
{
if(ev.pageX || ev.pageY)
{
return {x:ev.pageX, y:ev.pageY};
}
return {
x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,y:ev.clientY + document.body.scrollTop - document.body.clientTop
};
}
//��������
function showMessageBox(wTitle,content,pos,wWidth)
{
closeWindow();
var bWidth=parseInt(document.documentElement.scrollWidth);
var bHeight=parseInt(document.documentElement.scrollHeight);
if(isIe){
setSelectState('hidden');}
var back=document.createElement("div");
back.id="back";
var styleStr="top:0px;left:0px;position:absolute;background:#666;width:"+bWidth+"px;height:"+bHeight+"px;";
styleStr+=(isIe)?"filter:alpha(opacity=40);":"opacity:0.40;";
back.style.cssText=styleStr;
document.body.appendChild(back);
var mesW=document.createElement("div");
mesW.id="mesWindow";
mesW.className="mesWindow";
mesW.innerHTML="<div class='mesWindowTop'><table width='100%' height='100%'><tr><td>"+wTitle+"</td><td style='width:1px;'><input type='button' onclick='closeWindow();' title='�رմ���' class='close' value='�ر�' /></td></tr></table></div><div class='mesWindowContent' id='mesWindowContent'>"+content+"</div><div class='mesWindowBottom'></div>";
styleStr="left:"+(((pos.x-wWidth)>0)?(pos.x-wWidth):pos.x)+"px;top:"+(pos.y)+"px;position:absolute;width:"+wWidth+"px;";
mesW.style.cssText=styleStr;
document.body.appendChild(mesW);
}
function showBackground(obj,endInt)
{
obj.filters.alpha.opacity+=1;
if(obj.filters.alpha.opacity<endInt)
{
setTimeout(function(){showBackground(obj,endInt)},8);
}
}
//�رմ���
function closeWindow()
{
if(document.getElementById('back')!=null)
{
document.getElementById('back').parentNode.removeChild(document.getElementById('back'));
}
if(document.getElementById('mesWindow')!=null)
{
document.getElementById('mesWindow').parentNode.removeChild(document.getElementById('mesWindow'));
}
if(isIe){
setSelectState('');}
}
//���Ե���
function testMessageBox(ev)
{
var objPos = mousePosition(ev);
messContent="<div style='padding:20px 0 20px 0;text-align:center;z-index:1;position:absolute;'>��Ϣ����<br>sdfsdfs</div>";
showMessageBox('���ڱ���',messContent,objPos,350);
}
