<%
'sqlconn Ϊ0������Access���ݿ�,Ϊ1������sql2000���ݿ�,Ϊ2������sql2005���ݿ�
sqlconn=1
set conn=server.createobject("adodb.connection")

	dim uid,pwd,database,ip,connStr
	uid="vy91"		'sql��½�û�
	pwd="mn6%daad3a#x7nsd"   		'sql��½�û�����
	database="newgamedata"'sql���ݿ���
	ip="125.88.177.139"  'sql������IP 


select case sqlconn
	case 0
		DBPath = Server.MapPath("/data_acc/888wang_game.asa") 'Access���ݿ�·��
		'connStr= "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & DBPath
		connStr= "driver={Microsoft Access Driver (*.mdb)};dbq=" & DBPath
	case 1
		connStr= "Provider=SQLOLEDB.1;Persist Security Info=False;User ID="&uid&";Initial Catalog="&database&";pwd="&pwd&";Data Source="&ip&"" 
	case 2
		connStr= "Provider=SQLOLEDB.1;Persist Security Info=False;User ID="&uid&";Initial Catalog="&database&";pwd="&pwd&";Data Source="&ip&"" 
end select

conn.open connStr
%>
