<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->


<%CheckAdmin3%>
<link href='inc/Style.css' rel='stylesheet' type='text/css'>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border"> 
  <tr class="title">
    <td height="30">
      <table cellpadding=3 cellspacing=1 border=0 width=100%>      
        <tr class="title">
        <td height="22" colspan="3" align="center" bgcolor="#B7D8FD"><%=mbName%> 广告管理页面</td>
        </tr>       
            <tr >              
          <td width="100%" valign=top class=tdbg>
<%
dim mbUrl
dim objFSO
dim fdata
dim objCountFile
mbUrl=request("mbUrl")
mbName=request("mbName")
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
if request("save")="" then
  Set objCountFile = objFSO.OpenTextFile(Server.MapPath(mbUrl),1,True)
  If Not objCountFile.AtEndOfStream Then fdata = objCountFile.ReadAll
 else
  fdata=request("fdata")
  Set objCountFile=objFSO.CreateTextFile(Server.MapPath(mbUrl),True)
  objCountFile.Write fdata
  response.write("<script>alert('修改"&mbName&"广告成功');</script>")
 end if
 objCountFile.Close
 Set objCountFile=Nothing
 Set objFSO = Nothing
%> 
<form method=post>
            <table width="100%" border="0" cellspacing="1" cellpadding="2">
              <tr> 
                <td class=tdbg width="100%" height="23"> 注意：文件将被保存在你安装目录下的<font color=red><%=mbUrl%></font>文件里，你也可直接编辑该文件！<br>
                　　　</td>
              </tr>
           <tr> 
                <td class=tdbg width="100%"> 
                  <textarea style="width:100%;" cols="102" rows="30" name="fdata"><%=fdata%></textarea>
                </td>
              </tr>
              <tr> 
                <td width="100%" align="center" class=tdbg>
                  当前文件路径：<b><%=Server.MapPath("index_mb.asp")%></b>
                  <input type="submit" name="save" value="修改<%=mbName%>广告"> <input type="reset" name="Reset" value="重置">
                </td>
              </tr>
            </table>
</form>
            <p> 
            </td>
            </tr>
        </table>
        </td>
    </tr>
      </table>
<% 
set rs=nothing
conn.close
set conn=nothing
%>


