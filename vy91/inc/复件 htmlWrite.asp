<%
www_888wang_com_id=session("userid")
www_888wang_com_name=session("username")
IsUser=Session("IsUser")
if IsUser <>true then
%>
document.write("<script language=javascript>user.innerHTML='����δ��½ | <a href=/user/userlogin.asp target=_parent>��¼</a> | <a href=/user/reg.asp target=_parent>ע��</a>'</script>")
<%else%>
document.write("<script language=javascript>user.innerHTML='����:<a href=/user/usershow.asp?username=<%=www_888wang_com_name%> target=_parent> <%=www_888wang_com_name%></a> | <a href=/user/usershow.asp?username=<%=www_888wang_com_name%> target=_parent>�ҵ���Ϸ</a> | <a href=/user/logout.asp>�˳�</a>'</script>")
document.write("<script language=javascript>regMessage.innerHTML=''</script>")
<%
end if
%>


<!--#include file="../conn.asp"-->
<!--#include file="config_list.Asp"-->

<%

'�����ҳ�ӻ���
if IsUser=true then	
		
   ip=Request.ServerVariables("REMOTE_ADDR")
	set rs=server.createobject("adodb.recordset")	
	
	'������û�δ��������ִ�мӷֲ�д���¼��,1 ͨ��ID�����û������ֶ�
	       sql="select userWarning from [user] where id="&www_888wang_com_id
			rs.open sql,conn,1,3
				if not rs.eof then
					userWarning=rs("userWarning")
					rs.update
				end if
			rs.close

	if 	userWarning <> "yes" or isNull(userWarning) then

	'д���û������
	sql="select userScore from [user] where id="&www_888wang_com_id
			'res(sql)
			rs.open sql,conn,1,3
				if not rs.eof then
					rs("userScore")=rs("userScore")+scoreBrowse
					rs.update
				end if
			rs.close
	'��ӻ��ּ�¼
	    url=request.servervariables("HTTP_REFERER")		
	    sql="select * from ScoreRecord"
		rs.open sql,conn,1,3
					rs.addnew
					rs("userID")=www_888wang_com_id
					rs("userName")=www_888wang_com_name
					rs("scoreType")="�����ҳ"
					rs("score")=scoreBrowse
					rs("addDate")=now()
					rs("IP")=ip
					rs("url")=url
				rs.update
				rs.close	
		'ͳ�Ƶ�λʱ����Ƿ񳬳���������������û������ֶ�
		'sql��access��ͬ
		if sqlconn=0 then
				sql="select count(scoreID) from ScoreRecord where DATEDIFF('n',addDate,now())<"&warningTime&" and userID="&www_888wang_com_id&" and ip='"&ip&"' and scoreType='�����ҳ'"
			else
				sql="select count(scoreID) from ScoreRecord where DATEDIFF(n,addDate,getDATE())<"&warningTime&" and userID="&www_888wang_com_id&" and ip='"&ip&"' and scoreType='�����ҳ'"
		end if
		

			rs.open sql,conn,1,3
					userWarningNum=rs(0)
			rs.close
			
			'���������
			if userWarningNum>warningNum then
			
			'��ʶ���һ�μ�¼warningΪyes
			sql="select top 1  warning from ScoreRecord where DATEDIFF(n,addDate,getDATE())<"&warningTime&" and userID="&www_888wang_com_id&" and ip='"&ip&"' and scoreType='�����ҳ' order by addDate desc"
			rs.open sql,conn,1,3
			if not rs.eof then
				rs("warning")="yes"
				rs.update
			end if
			rs.close
			
			'�����û������ֶ�
				sql="select userWarning from [user] where id="&www_888wang_com_id
				rs.open sql,conn,1,3
					if not rs.eof then
						rs("userWarning")="yes"
						rs.update
					end if
				rs.close
				
			end if
			
	end if '�Ƿ񱨾�����	
end if '�Ƿ�����û�����

set rs=nothing
conn.close
set conn=nothing
%>