<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta copy="�������� [������ QQ:56566918] ; ��Ȩ����!,www.888wang.com (888��)">
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<title></title>
<script language="javascript" type="text/javascript">
 function change(){
 if(form1.osource.value.indexOf("document.writeln")!=-1){
 form1.body.value=form1.osource.value
 }else
 form1.body.value="document.writeln(\""+form1.osource.value.replace(/\\/g,"\\\\").replace(/\//g,"\\/").replace(/\'/g,"\\\'").replace(/\"/g,"\\\"").split('\r\n').join("\");\ndocument.writeln(\"")+"\");"
 }
</script>
</head>
<%
id=request.QueryString("id")
c=trim(request("type"))
makeUrl="../otherhtml/"&c&"_"&id&".js"

%>
<%
dim objFSO
dim body
dim objCountFile
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
if request("save")="" then
  Set objCountFile = objFSO.OpenTextFile(Server.MapPath(makeUrl),1,True)
  If Not objCountFile.AtEndOfStream Then body = objCountFile.ReadAll
 else
  body=request("body")
  Set objCountFile=objFSO.CreateTextFile(Server.MapPath(makeUrl),True)
  objCountFile.Write body
 end if
 objCountFile.Close
 Set objCountFile=Nothing
 Set objFSO = Nothing
%> 
<body topmargin="1" leftmargin="1" onLoad="change()">
<form  name="form1" method="post">
  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="0" class="bordercolor">
   <tr class="bg1">
    <td>&nbsp;</td>
  </tr>
   <tr class="bg1">
    <td bgcolor="#DEE8FE">��ǰ�ļ�·����<b><%=makeUrl%>,��Ҳ������ftp���ش��ļ���ֱ�ӱ༭���ļ�</td>
  </tr>
  <tr class="bg1">
    <td bgcolor="#DEE8FE"><font color="red">������վ�ײ��ļ����˲���htmlתΪjs���룬�� [תΪjsǰ] ��Ŀ�༭������ ==> �ύ����</a></td>
  </tr>
  <tr>
    <td>[תΪjsǰ]����༭���</td>
  </tr>
  <tr>
    <td align="center"><textarea name="osource" cols="100" rows="10" id="osource" onpropertychange="change()"><%=body%></textarea></td>
  </tr>
  <tr>
    <td>[ת��js��],��Ϊ�Զ�������Ҫ�༭</td>
  </tr>
  <tr>
    <td align="center"><textarea name="body" cols="100" rows="10" id="oresult2" onload='this.select();oresult.createtextrange().execcommand("copy")'></textarea></td>
  </tr>
  <tr>
    <td align="center"><input type="submit" name="save" value="�ύ�޸�">
                  <input type="reset" name="Reset" value="����"></td>
  </tr>
</table>
</form>
</body>
</html>


