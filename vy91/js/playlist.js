//������ʾ�����¼��
var displayamount = 8;

function glog2(address,linkname)
{


    address=address+"_splitchar_";//ȡ���¼�����Դ��hrefֵ������_splitchar_�ָ�
wlink=linkname+"+"+address; //���������ƺ����ӵ�ַ���ϵ�һ����������
old_info=getCookie("history_info");//��Cookies��ȡ����ǰ��¼�������ʷ
    //�����ж��µ���������Ƿ�����е���ʷ�ظ���������ظ���д��cookies
var insert=true; 
if(old_info==null)          //�ж�cookie�Ƿ�Ϊ��
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


if(insert)                //�����������������д������
{
    wlink+=getCookie("history_info");
    setCookie("history_info",wlink);
}

}






//��ȡcookie��ָ��������
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
//��ȡcookie��ָ�������ݵ��˺���
function getCookieVal (offset) { 
 var endstr = document.cookie.indexOf (";", offset); 
 if (endstr == -1) endstr = document.cookie.length; 
    return unescape(document.cookie.substring(offset, endstr)); 
 } 
       
//���������д��cookie
function setCookie (name, value) { 
       var exp = new Date(); 
       exp.setTime (exp.getTime()+3600000000); 
       document.cookie = name + "=" + value + "; expires=Thu, 21 Sep 2099 05:27:00 GMT; path=/"; 
}


//��ʾ�����¼
function history_show()
{   
 var history_info=getCookie("history_info");
 var content=""; 
 if(history_info!=null)
 {
 history_arg=history_info.split("_splitchar_");

 var factdisplayamount = history_arg.length < displayamount ? history_arg.length : displayamount;//�����¼���ﲻ��ָ������ʾ��,����ʾ����
 
 var i;
 for(i=0;i<factdisplayamount;i++)//������ʾ����ļ�¼��
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
 {document.getElementById("history").innerHTML="��û���κ������¼";}
 

}