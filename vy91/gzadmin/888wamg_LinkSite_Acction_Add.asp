<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'===========�뱣����Ȩ��Ϣ,���ȥ���������ṩ��ط���==============
' 888������ϵͳ V8.1 ��
' �ܷ���ַ��www.888wang.com
' ����֧��: QQ:56566918
' �ͷ�����www.888wang.com��վ�Ŀͷ�QQ
' �绰:15918529718
'==================================================================
%>
<link href="inc/Style.Css" rel="stylesheet" type="text/css">
<table width="95%" border="0" align="center" cellpadding="1" cellspacing="1" class="bordercolor">
  <tr>
    <td align=center valign=top>
     <table width="100%"height="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#F6F6F6" class="border">
      <form method="POST" action="888wang_LinkSite_Err.asp?id=<%=id%>">
          <tr class="bg1">
            <td height="22" colspan="3" align="center"><strong>�� �� �� �� վ ��</strong></td>
          </tr>
          <tr>
            <td width="15%" class=tdbg align="right">վ����</td>
            <td class=tdbg width="85%"><input class=input type="text" name="SiteName" size="20">
            ���� ��888�� </td>
          </tr>
          <tr>
            <td class=tdbg align="right">��ַ��</td>
            <td class=tdbg><input class=input  type="text" name="SiteUrl" size="20">
            ���� ��http://www.888wang.com</td>
          </tr>
          <tr>
            <td class=tdbg align="right">Logo·����</td>
            <td class=tdbg><input class=input  type="text" name="LogoUrl" size="20">  
            �ɲ���,��http://www.888wang.com/images/logo.jpg ���logo������վ�ռ䣬��·��Ҳ�е� </td>
          </tr>
          <tr>
            <td class=tdbg align="right">վ����</td>
            <td class=tdbg><input class=input  type="text" name="SiteAdmin" size="20">
            �ɲ���</td>
          </tr>
          <tr>
            <td class=tdbg align="right">��飺</td>
            <td class=tdbg><TEXTAREA class=input  name="SiteIntro" rows=5 cols="75"></TEXTAREA>
            �ɲ���</td>
          </tr>
          <tr>
            <td class=tdbg colspan=2 align=center>
              <input class=input  type="hidden" value="add" name="act">
              <input  class=input type="submit" value=" �� �� " name="cmdok">&nbsp; 
              <input  class=input type="reset" value=" ȡ �� "  name="cmdcancel">
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
<br>
<%

set rs=nothing
conn.close
set conn=nothing%>
</body>
</html>


