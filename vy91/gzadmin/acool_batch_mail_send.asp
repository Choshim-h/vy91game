<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>

<body>
<%
'******************请先设置以下内容******************
Dim Smtp,User,Pass,Address
Smtp="98.126.3.3"			'外部邮件地址如:smtp.163.com
User="noreply@acool.com"			'邮箱用户名如:ishell
Pass="admin8545"			'邮箱登录密码
Address="NoReply@acool.com"		'邮箱完整信息如:ishell@163.com
'******************请先设置以上内容******************


		acoolmail=request("acoolmail")

		
set rs=server.createobject("adodb.recordset")
Sql="Select * From acoolmail where id=1"
rs.open Sql,Conn,1,3
  mailinfo=rs("mailinfo")
  mailtitle=rs("mailtitle")
rs.close

  if mailinfo="" or mailtitle="" then
        response.write "内容为空"
        response.end
  else
  

				'发送代码
				Const cdoSendUsingMethod="http://schemas.microsoft.com/cdo/configuration/sendusing"
				Const cdoSendUsingPort=2
				Const cdoSMTPServer="http://schemas.microsoft.com/cdo/configuration/smtpserver"
				Const cdoSMTPServerPort="http://schemas.microsoft.com/cdo/configuration/smtpserverport"
				Const cdoSMTPConnectionTimeout="http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout"
				Const cdoSMTPAuthenticate="http://schemas.microsoft.com/cdo/configuration/smtpauthenticate"
				Const cdoBasic=1
				Const cdoSendUserName="http://schemas.microsoft.com/cdo/configuration/sendusername"
				Const cdoSendPassword="http://schemas.microsoft.com/cdo/configuration/sendpassword"

				Dim objConfig,objMessage,Fields

				Set objConfig = Server.CreateObject("CDO.Configuration")
				Set Fields = objConfig.Fields

				With Fields
					.Item(cdoSendUsingMethod) = cdoSendUsingPort
					.Item(cdoSMTPServer) = Smtp 			'外部邮件服务器域名
					.Item(cdoSendUserName) = User			'邮箱用户名
					.Item(cdoSendPassword) = Pass 			'邮箱密码
					.Item(cdoSMTPServerPort) = 25
					.Item(cdoSMTPConnectionTimeout) = 10
					.Item(cdoSMTPAuthenticate) = cdoBasic
					.Update
				End With

				Set objMessage = Server.CreateObject("CDO.Message")
				Set objMessage.Configuration = objConfig

				With objMessage
					.To = acoolmail 			                '接收者邮件完整地址
					.From = Address								'发送人完整邮件地址
					.Subject = mailtitle              			'邮件标题
					.htmlbody = mailinfo            			'邮件内容
					.Send
				End With

				Set objMessage = Nothing
				Set objConfig = Nothing
				Set Fields = Nothing
				
				Response.Write "已经送达"&acoolmail
				


  
  end if
set rs=nothing
conn.close
set conn=nothing
%>


</body>
</html>
