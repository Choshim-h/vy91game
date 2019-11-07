<!--#include file="Conn.Asp"-->
<!--#include file="../inc/config_list.Asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="Top.Asp"-->
<link href='inc/Style.css' rel='stylesheet' type='text/css'>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border"> 
  <tr class="title">
    <td height="30">
      <table cellpadding=3 cellspacing=1 border=0 width=100%>      
        <tr class="title">
        <td height="22" colspan="3" align="center">路径管理页面</td>
        </tr>       
            <tr >              
          <td width="100%" valign=top class=tdbg>
<%
dim objFSO
dim fdata
dim objCountFile
filename="../url.js"
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
if request("save")="" then
  Set objCountFile = objFSO.OpenTextFile(Server.MapPath(""&filename&""),1,True)
  If Not objCountFile.AtEndOfStream Then fdata = objCountFile.ReadAll
 else
  fdata=request("fdata")
  Set objCountFile=objFSO.CreateTextFile(Server.MapPath(""&filename&""),True)
  objCountFile.Write fdata
  mkfootmb="ok"
 end if
 objCountFile.Close
 Set objCountFile=Nothing
 Set objFSO = Nothing
%> 
<form method=post  height="100%">
            <table width="100%" border="0" cellspacing="1" cellpadding="2">
			<%if mkfootmb="ok" then%>
			  <tr> 
                <td class=tdbg width="100%" height="23">·成功修改<font color="#FF0000">数据路径</font>,时间<%=Now()%><br><font color="#FF0000">·<a target="_blank" href="<%=filename%>"><%=filename%></a></font></td>
              </tr>
			  <%end if%>
              <tr> 
                <td class=tdbg width="100%" height="23"> 注意：文件将被保存在你安装目录下的<font color=red><%=filename%></font>文件里，你也可直接编辑该文件！<br>
                　　　</td>
              </tr>
           <tr> 
                <td class=tdbg width="100%"> 
                  <textarea textarea style="width:100%; height:100%" cols="102" rows="19" name="fdata"><%=fdata%></textarea>
                </td>
              </tr>
              <tr> 
                <td width="100%" align="center" class=tdbg>
                  当前文件路径：<b><%=Server.MapPath(""&filename&"")%></b>
                  <input type="submit" name="save" value="提交修改"> <input type="reset" name="Reset" value="重置">
                </td>
              </tr>
            </table>
</form>
            <p> </p>
            </td>
            </tr>
        </table>
        </td>
    </tr>
      </table>

