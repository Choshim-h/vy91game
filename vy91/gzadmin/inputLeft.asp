<!--#include File="Conn.asp" -->

<Html>
<Head>
<Title>管理中心 - "& WebName &"</title>
<Meta Http-Equiv="Content-Type" Content="Text/Html; CharSet=Gb2312">
<Link Type="Text/Css" Rel="StyleSheet" Href="Inc/Style.css">
</Head>
<style type=text/css>
.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#D6DFF7; }
.menu_title span  {
	position:relative;
	top:2px;
	left:8px;
	color:#215DC6;
	font-weight:bold;
	width: 113px;
	height: 10px;
}
.menu_title2 span  { position:relative; top:2px; left:8px; color:#428EFF; font-weight:bold; }
</style>
<div style="display:none">
<script src="http://s62.cnzz.com/stat.php?id=1814315&web_id=1814315" language="JavaScript" charset="gb2312"></script>
</div>
<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>

<Body Bgcolor="#7B9AE7" Topmargin="20" Leftmargin="12">
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(2)" style="cursor:hand;"> 
          <span>小游戏编辑操作</span> </td>
  </tr>
  <tr>
    <td id='submenu2'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Addflash.asp">手工添加小游戏</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="flash.asp">小游戏管理</a>|<a target="Admin_Main" href="flash_good.asp">推荐</a>|<a target="Admin_Main" href="flash_class.asp">经典</a></font></td>
        </tr>
        
      </table></td>
    </tr>
  </table>
</div>

<div  style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=135>
<tr><td height=20></td></tr>
</table>
	  </div>
	</td>
  </tr>
</table>


<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(5)" style="cursor:hand;"> 
          <span>生成HTML管理</span> </td>
  </tr>
  <tr>
    <td id='submenu5'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Html_MakeIndex.asp">生成首页</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">生成分类 <a target="Admin_Main" href="Html_MakeClassAll.asp">一级</a> <a target="Admin_Main" href="Html_MakeClassAll2.asp">二级</a></font></td>
        </tr>
				   <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">播放载入<a target="Admin_Main" href="Html_MakeflashAll_load.asp?type=all"> 按最新</a> <a target="Admin_Main" href="Html_MakeflashAll_all_load.asp">按ID</a></font></td>
        </tr>
		
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">播放<a target="Admin_Main" href="Html_MakeflashAll.asp?type=all"> 按最新</a> <a target="Admin_Main" href="Html_MakeflashAll_all.asp">按ID</a></font></td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>
<div  style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=135>
<tr><td height=20></td></tr>
</table>
	  </div>
	</td>
  </tr>
</table>


<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(9)" style="cursor:hand;"> 
          <span>版权所有</span> </td>
  </tr>
  <tr>
    <td style="display" id='submenu9'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="2" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="94%"><font face="Arial" color="#416BDC">&nbsp;&nbsp;<a target="_top" href="Logout.asp">退出管理</a></font></td>
        </tr>
        
      </table></td>
    </tr>
  </table>
</div>
<div  style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=135>
<tr><td height=20></td></tr>
</table>
	  </div>
	</td>
  </tr>
</table>





</Body>
</Html>