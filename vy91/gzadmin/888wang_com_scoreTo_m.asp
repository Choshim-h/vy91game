<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("action")="pay" then
	backUrl=request.ServerVariables("HTTP_REFERER")
	scoreToID=Request("scoreToID")
	userID=Request("userID")
	scoreTo=Request("scoreTo")
	
	'��ȥuser��ǰ����һ�Q����,��ȥuser������
	set rs=server.CreateObject("ADODB.RecordSet")
	sql="select userScore,currToScore from [user] where id="&userID
			rs.open sql,conn,3,3
				if not rs.eof then
					rs("userScore")=rs("userScore")-scoreTo
					rs("currToScore")=rs("currToScore")-scoreTo
					rs.update
				end if
			rs.close
			
		'����״̬Ϊ��֧��
		sql="select state,payDate from userScoreTo where scoreToID="&scoreToID
			rs.open sql,conn,3,3
				if not rs.eof then
					rs("state")="��֧��"
					rs("payDate")=now()
					rs.update
				end if
			rs.close
		
set rs=nothing
conn.close
set conn=nothing
	'ת��ҳ
	Response.write("<script>alert('ɾ���ɹ������ּ�¼��ɾ��������û������Ѽ���!');location.href='"&backUrl&"'</script>")
End if

%>






