//��������
function openwin(url,width,height) { 
����window.open (url, "newwindow", "height="+height+", width="+width+", toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") //д��һ��
} 
//==============================
//��������888��,www.888wang.com
//���в�����֮��������ϵ�ٷ���վ
//лл��ʹ��888��С��Ϸϵͳ
//Ϊ��֤���Ȩ�棬���ڹٷ���վ�������
//�뱣������Ϣ��ɾ����������κμ���֧��
//===============================
  
  function   RunOnBeforeUnload()   {   
  window.event.returnValue   =  '�ر���������˳�ϵͳ.';   
  }   
  
  
  function   RunOnUnload()   {   
  alert('�Ǻ�~');   
  }   
  
    //�ж���ˢ�»��ǹر�   
  function CloseOpen(){   
  if(event.clientX<=0 && event.clientY<0)     
  {   
  alert("�ر�")  
  }   
  else   {   
  alert("ˢ��");   
  }   
  } 
  
var xmlHttp;
/************** 1 ����xhrʵ�� **************/
function createXMLHttpRequest(){
   if(window.ActiveXObject){
      xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
   }
   else if(window.XMLHttpRequest){
      xmlHttp=new XMLHttpRequest();
   }
}
/*************** 2 �ύ��֤ ****************/
function validate(action,flashID,flashName){
   createXMLHttpRequest(); // ����ʵ��
   var date=document.getElementById("userName");
   var url="/inc/onLine_play.asp?action="+action+"&flashid="+flashID+"&flashname="+flashName+"";
   //alert(url);
   xmlHttp.open("GET",url,true);
  // xmlHttp.onreadystatechange=callback;// ��״̬�ı�ʱ���Զ�����callback
   xmlHttp.send(null);
}
//onunload="����()" onload="����()
//����ҳ�е���validate(action,flashID,flashName)