<%
'sqlconn 为0则链接Access数据库,为1则链接sql2000数据库,为2则链接sql2005数据库
sqlconn=1
set conn=server.createobject("adodb.connection")

	dim uid,pwd,database,ip,connStr
	uid="vy91"		'sql登陆用户
	pwd="mn6%daad3a#x7nsd"   		'sql登陆用户密码
	database="newgamedata"'sql数据库名
	ip="125.88.177.139"  'sql服务器IP 


select case sqlconn
	case 0
		DBPath = Server.MapPath("/data_acc/888wang_game.asa") 'Access数据库路径
		'connStr= "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & DBPath
		connStr= "driver={Microsoft Access Driver (*.mdb)};dbq=" & DBPath
	case 1
		connStr= "Provider=SQLOLEDB.1;Persist Security Info=False;User ID="&uid&";Initial Catalog="&database&";pwd="&pwd&";Data Source="&ip&"" 
	case 2
		connStr= "Provider=SQLOLEDB.1;Persist Security Info=False;User ID="&uid&";Initial Catalog="&database&";pwd="&pwd&";Data Source="&ip&"" 
end select

conn.open connStr
%>
