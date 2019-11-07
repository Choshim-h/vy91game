<%
r_id=request("id")
typeid=request("typeid")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HTML>
<HEAD>
<LINK 
href="imamges//style.css" 
type=text/css rel=stylesheet>
<SCRIPT src="imamges/check.js"></SCRIPT>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<body style="margin:0">
<TABLE width="100%"  border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TR>
      <TD vAlign=top align=left bgColor=#ffffff><TABLE height=150 cellSpacing=0 cellPadding=0 width="100%" 
            align=center border=0>
          <TBODY>
            <TR>
              <TD  height="150" vAlign=top><IFRAME name=showpl align=left   src="showlyda.asp?r_id=<%=r_id%>&typeid=<%=typeid%>"  frameBorder=0  scrolling=yes height="150" width="100%" allowTransparency application="true"></IFRAME></TD>
            </TR>
          </TBODY>
        </TABLE>
        <TABLE width="100%"  border=0 align=left cellSpacing=2 bgColor=#f3f3f3>
          <FORM id=form1 name=form1 action=insert.asp method=post 
              target=showpl>
            <TBODY>
              <TR>
                <TD width="68%" align=left><P><STRONG><IMG height=12 hspace=2 
                  src="imamges/bllet_people.gif" 
                  width=9 align=absMiddle>用户名</STRONG>:
                    <INPUT class=input2 id=username maxLength=14 size=10 name=username>
                  </P></TD>
                <TD class=input2 align=middle width="30%" bgColor=#F7F3F7 
                rowSpan=2><TABLE width=98 
                    border=0 cellSpacing=1 bgcolor="#F7F3F7" style="CURSOR: hand">
                    <TBODY>
                      <TR align=middle>
                        <TD class=selected id=firstface onclick=icon(this) 
                      width=25 height=22><IMG id=11 height=20 
                        src="imamges/11.gif" 
                        width=20></TD>
                        <TD class=unselected onclick=icon(this) width=25><IMG 
                        id=12 height=20 
                        src="imamges/12.gif" 
                        width=20></TD>
                        <TD class=unselected onclick=icon(this) width=25><IMG 
                        id=13 height=20 
                        src="imamges/13.gif" 
                        width=20></TD>
                        <TD class=unselected onclick=icon(this) width=43><IMG 
                        id=14 height=20 
                        src="imamges/14.gif" 
                        width=20></TD>
                      </TR>
                      <TR align=middle>
                        <TD class=unselected onclick=icon(this) height=22><IMG 
                        id=15 height=20 
                        src="imamges/15.gif" 
                        width=20></TD>
                        <TD class=unselected onclick=icon(this)><IMG id=16 
                        height=20 
                        src="imamges/16.gif" 
                        width=20></TD>
                        <TD class=unselected onclick=icon(this)><IMG id=17 
                        height=20 
                        src="imamges/17.gif" 
                        width=20></TD>
                        <TD class=unselected onclick=icon(this)><IMG id=18 
                        height=20 
                        src="imamges/18.gif" 
                        width=20></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
              </TR>
              <TR>
                <TD width="68%" align=middle vAlign=top bgColor=#ffffff class=input2><TEXTAREA class=input2 id=content name=content rows=3  style="width:100%"></TEXTAREA></TD>
              </TR>
              <TR>
                <TD colspan="2" align=middle vAlign=top bgColor=#ffffff class=input2><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="4%"><IMG height=33 
                  src="imamges/send2.gif" 
                  width=9></td>
                      <td width="15%" background="imamges/send_bg.gif">&nbsp;</td>
                      <td width="81%"><img 
                  height=33 
                  src="imamges/send.gif" 
                  width=234 usemap=#Map2 border=0>
                        <map name=Map2>
                          <area 
  onClick=check() shape=RECT coords=33,4,133,28 href="javascript:;">
                          <area 
  onClick=check2(); shape=RECT coords=142,4,216,29>
                        </map></td>
                    </tr>
                  </table></TD>
              </TR>
            <INPUT id=rad type=hidden value=11 name=rad>
            <INPUT id=r_id type=hidden value="<%=r_id%>" name=r_id>
            <INPUT id=typeid type=hidden value="<%=typeid%>" name=typeid>

          </FORM>
        </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
</body>
</html>