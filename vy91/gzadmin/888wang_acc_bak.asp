<!-- #include File="conn.asp" -->
<% 
currFile="888wang_acc_bak.asp"
sub backupdata() 
Dbpath=request.form("Dbpath") 
bkfolder=request.form("bkfolder") 
bkdbname=request.form("bkdbname") 
Set Fso=server.createobject("scripting.filesystemobject") 
if fso.fileexists(dbpath) then 
If CheckDir(bkfolder) = True Then 
fso.copyfile dbpath,bkfolder& "\"& bkdbname 
else 
MakeNewsDir bkfolder 
fso.copyfile dbpath,bkfolder& "\"& bkdbname 
end if 
response.write "�������ݿ�ɹ��������ݵ����ݿ�·��Ϊ" &bkfolder& "\"& bkdbname 
Else 
response.write "�Ҳ���������Ҫ���ݵ��ļ���" 
End if 
end sub 
'------------------���ĳһĿ¼�Ƿ����------------------- 
Function CheckDir(FolderPath) 
folderpath=Server.MapPath("..")&"\"&folderpath 
Set fso1 = CreateObject("Scripting.FileSystemObject") 
If fso1.FolderExists(FolderPath) then 
'���� 
CheckDir = True 
Else 
'������ 
CheckDir = False 
End if 
Set fso1 = nothing 
End Function 
'-------------����ָ����������Ŀ¼--------- 
Function MakeNewsDir(foldername) 
Set fso1 = CreateObject("Scripting.FileSystemObject") 
Set f = fso1.CreateFolder(foldername) 
MakeNewsDir = True 
Set fso1 = nothing 
End Function 
%>

 <table width="550" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="25">
<div align="center"><strong>�������ݿ�</strong></div><%
if request("action")="Backup" then
call backupdata()
else

%></td>
        </tr>
        <tr> 
          <form method="post" action="<%=currFile%>?action=Backup">
      <td><br>
              <table width="80%" border="0" align="center" cellpadding="0" cellspacing="2">
                <tr> 
                  <td height="25"><strong>�����̳������ļ�</strong>[��ҪFSOȨ��]</td>
                </tr>
                <tr> 
                  <td height="22"> ��ǰ���ݿ�·��</td>
                </tr>
                <tr> 
                  <td height="22"><input type=text size=50 name=DBpath value="<%=DBPath%>"></td>
                </tr>
                <tr> 
                  <td height="22"> �������ݿ�Ŀ¼[��Ŀ¼�����ڣ������Զ�����]</td>
                </tr>
                <tr> 
                  <td height="22"><input type=text size=50 name=bkfolder value="data_acc"></td>
                </tr>
                <tr> 
                  <td height="22">�������ݿ�����[�籸��Ŀ¼�и��ļ��������ǣ���û�У����Զ�����]</td>
                </tr>
                <tr> 
                  <td height="22"><input type=text size=30 name=bkDBname value="<%=date()%>.mdb"></td>
                </tr>
                <tr> 
                  <td height="22"><div align="center">
                      <input type=submit value="ȷ��">
                    </div></td>
                </tr>
                <tr> 
                  <td height="22"><br>
                    <br>
                    �������Ĭ�����ݿ��ļ�Ϊ<%=DBPath%><br>
                    ������������������������ķ������ݣ��Ա�֤�������ݰ�ȫ��<br>
                    ע�⣺����·��������������ռ��Ŀ¼�����·��</td>
                </tr>
                <tr> 
                  <td height="22">&nbsp;</td>
                </tr>
              </table></td>
          </form>
        </tr>
      </table>
      <%end if%>
