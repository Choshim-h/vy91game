<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#include file="Cls_Upfile.asp" -->
<%CheckAdmin3%>
<html>
<head>


<%piclb=request("piclb")%>
<title>�ϴ��ļ�</title>
<STYLE TYPE="text/css">
<!--
BODY { FONT-SIZE: 12px; COLOR:  #3366CC; font-family: "����"; LINE-HEIGHT:20px;} 
DIV { FONT-SIZE: 12px; 
COLOR: #333333; LINE-HEIGHT:20px; } 
select { FONT-SIZE: 12px;} 
input { FONT-SIZE: 12px;} 
TD { FONT-SIZE: 
12px; COLOR:  #3366CC ; font-family: "����"; LINE-HEIGHT:20px;} 
TH { FONT-SIZE: 12px; COLOR: #333333 
; font-family: "����"} 
A:link { COLOR:  #3366CC; TEXT-DECORATION: underline ; font-family: 
"����"; LINE-HEIGHT:18px;} 
A:visited { COLOR: #3366CC; TEXT-DECORATION: underline; LINE-HEIGHT:18px; } 
A:active { COLOR:  #3366CC; 
TEXT-DECORATION: none; LINE-HEIGHT:18px; } 
A:hover { COLOR:  #FF0000; TEXT-DECORATION: none; LINE-HEIGHT:18px; } 
/*Top����*/
a.tops:link { color: #000000; TEXT-DECORATION: none;}
a.tops:hover { color: #FF0000; TEXT-DECORATION: underline}
a.tops:visited { color: #000000; TEXT-DECORATION: none}
a.tops:active { color: #000000}
/*Top�Ƽ�*/
a.tj:link { color: #FF3300; TEXT-DECORATION: none; LINE-HEIGHT: 20px;}
a.tj:hover { color: #000000; TEXT-DECORATION: underline; LINE-HEIGHT: 20px}
a.tj:visited { color: #FF3300; TEXT-DECORATION: none; LINE-HEIGHT: 20px}
a.tj:active { color: #FF3300; LINE-HEIGHT: 20px}
/*ͷ���Ƽ�*/
a.tttj:link { color: #FF0000; font-family: "����";FONT-SIZE: 20px;TEXT-DECORATION: none; LINE-HEIGHT: 30px;}
a.tttj:hover {color: #FF0000; font-family: "����";FONT-SIZE: 20px;TEXT-DECORATION: none; LINE-HEIGHT: 30px;}
a.tttj:visited { color: #000000; font-family: "����";FONT-SIZE: 20px;TEXT-DECORATION: none; LINE-HEIGHT: 30px;}
a.tttj:active {color: #FF0000; font-family: "����";FONT-SIZE: 20px;TEXT-DECORATION: none; LINE-HEIGHT: 30px;}
/*ͷ���б�*/
a.tttj1:link { color: #FF0000;TEXT-DECORATION: none; LINE-HEIGHT: 20px;}
a.tttj1:hover {color: #FF0000; TEXT-DECORATION: none; LINE-HEIGHT: 20px;}
a.tttj1:visited { color: #FF0000; ;TEXT-DECORATION: none; LINE-HEIGHT: 20px;}
a.tttj1:active {color: #000000; TEXT-DECORATION: none; LINE-HEIGHT: 20px;}

.date1{ color: #FF0000; TEXT-DECORATION: none; FONT-SIZE: 10px;}
.daohang{ color: #000000; TEXT-DECORATION: none; FONT-SIZE: 14px;}
-->
</STYLE>
<meta name="keywords">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <form name="FileForm" method="post" enctype="multipart/form-data" action="UpFileSave.asp?piclb=<%=piclb%>">
    <tr> 
      <td width="64%"> <div align="center"> 
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr> 
              <td width="91%" height="30"> <div align="center">
                  <input name="file" id="File1" type="file">
                  <input type="submit" id="BtnSubmit" onClick="PromptInfo();" name="Submit" value=" ȷ �� ">
                  ���10240k (10M)</div></td>
            </tr>
          </table>
        </div></td>
    </tr>
  </form>
</table>
</body>
</html>


