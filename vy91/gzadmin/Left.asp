<!--#include File="Conn.asp" -->

<Html>
<Head>
<Title>�������� - "& WebName &"</title>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(1)" style="cursor:hand;"> 
          <span>ϵͳ��Ϣ����</span> </td>
  </tr>
  <tr>
    <td style="display" id='submenu1'>
<div class=sec_menu style="width:158">
  <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_admin.asp">����Ա����</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_user_main.asp">�û�����</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="system_edit.asp">ϵͳ��Ϣ����</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_LinkSite.asp">�������ӹ���</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_indexPic.asp">��ҳ����ͼƬ</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_url.asp">С��Ϸ����·��</a></font></td>
    </tr>
	
	 <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="acool_batch_mail.asp">�ʼ�Ⱥ��</a></font></td>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(16)" style="cursor:hand;"> 
          <span>���Ź���</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu16'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="news/NewsClass.asp" target="Admin_Main">���ŷ���</a>  <a href="news/newsClassEdit.asp?act=add" target="Admin_Main">���</a></td>
        </tr>
          <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="news/news.asp" target="Admin_Main">�����б�</a>  <a href="news/newsEdit.asp?act=add" target="Admin_Main">���</a></td>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(12)" style="cursor:hand;"> 
          <span>�û����ֹ���</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu12'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_score.asp" target="Admin_Main">���л��ּ�¼</a></td>
        </tr>
          <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_score_count.asp" target="Admin_Main">���û����ִ���</a></td>
        </tr>
		
		  <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_score_warning.asp" target="Admin_Main">�ѱ��������û�</a></td>
        </tr>
		
		  <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_scoreTo.asp" target="Admin_Main">����һ�����</a></td>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(2)" style="cursor:hand;"> 
          <span>С��Ϸ�༭����</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu2'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <!--  <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang.com.asp" target="Admin_Main">С��Ϸ�Զ��ɼ�</a></td>
        </tr>
        <tr>-->
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Addflash.asp">���С��Ϸ</a></font></td>
        </tr>
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="indexflashpx.asp">��������</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="flash.asp">С��Ϸ����</a>|<a target="Admin_Main" href="flash_good.asp">�Ƽ�</a>|<a target="Admin_Main" href="flash_class.asp">����</a>|<a target="Admin_Main" href="flash_mobile.asp">�ƶ�</a>|<a target="Admin_Main" href="flash_html5.asp">HTML5</a></font></td>
        </tr>
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Managetag.asp">��ǩ����</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Class.asp">������</a></font></td>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(3)" style="cursor:hand;"> 
          <span>ģ�����</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu3'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/index_mb.asp&amp;mbName=��ҳ">��ҳģ��</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/class.html&amp;mbName=����ҳ">����ģ��</a></font></td>
        </tr>
            <tr>
              <td align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/tag.html&amp;mbName=��ǩҳ">��ǩģ��</a></font></td>
            </tr>
            <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/play_load.html&amp;mbName=��������ҳ">��������ģ��</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/play.html&amp;mbName=����ҳ">����ģ��</a></font></td>
        </tr>
        
		<tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/top.asp&amp;mbName=����ģ��(�������ࡢ���š��û�����)">����ģ��(��ҳ����öࡢ���ۺ�)</a></font></td>
        </tr>
		
		<tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/top.asp&amp;mbName=����ģ��(������ҳ����öࡢ���ۺ�)">����ģ��(�û�����)</a></font></td>
        </tr>
		
		  <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/foot.asp&amp;mbName=�ײ�ģ��(���������벥��)">�ײ�ģ��(��ҳ����öࡢ���ۺá��û�����)</a></font></td>
        </tr>
		  <tr>



            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/hot_mb.asp&amp;mbName=����С��Ϸ">����С��Ϸ</a></font></td>
		    </tr>
		  <tr>
            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/new_mb.asp&mbName=����С��Ϸ">����С��Ϸ</a></font></td>
		    </tr>
		  <tr>
            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/tj_mb.asp&amp;mbName=Beauty��Ϸ">Beauty��Ϸ</a></font></td>
		    </tr>
		  <tr>
            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/moregames_mb.asp&amp;mbName=moregames">moregames</a></font></td>
		    </tr>
		  <tr>
            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/acoolgames_mb.asp&amp;mbName=acoolgames">Android</a></font></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/mindex_mb.asp&amp;mbName=�ƶ���ҳģ��">�ƶ���ҳģ��</a></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/m_game_load.html&amp;mbName=�ƶ�����ģ��ҳ">�ƶ�����ģ��</a></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/m_play.html&amp;mbName=�ƶ�����ģ��">�ƶ�����ģ��</a></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/index_mb.asp&amp;mbName=��ҳ">�ƶ���ǩģ��</a></td>
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
          <span>����HTML����</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu5'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Html_MakeIndex.asp">������ҳ</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">���ɷ��� <a target="Admin_Main" href="Html_MakeClassAll.asp">һ��</a> <a target="Admin_Main" href="Html_MakeClassAll2.asp">����</a></font></td>
        </tr>
				   <tr>
                     <td align="center"><img border="0" src="images/yellowli.gif" /></td>
				     <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Html_MaketagAll.asp">�������б�ǩ</a></font></td>
		        </tr>
				   <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">��������<a target="Admin_Main" href="Html_MakeflashAll_load.asp?type=all"> ������</a> <a target="Admin_Main" href="Html_MakeflashAll_all_load.asp">��ID</a></font></td>
        </tr>
		
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">����<a target="Admin_Main" href="Html_MakeflashAll.asp?type=all"> ������</a> <a target="Admin_Main" href="Html_MakeflashAll_all.asp">��ID</a></font></td>
        </tr>

		
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makehot.asp">����DOWNLOADS</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makelove.asp">����ONLINE GAMES</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="make_count.asp">����ȫվͳ��</a></font></td>
        </tr>
		<tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Html_MakeIndex_pic.asp">������ҳ����ͼƬ</a></font></td>
        </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makehot.asp">��������С��Ϸ</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makenew.asp">��������С��Ϸ</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_maketj.asp">����Beauty��Ϸ</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makemoregames.asp">����moregames</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makeacoolgames.asp">����Android</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="Html_MakemIndex.asp">�����ƶ���ҳ</a></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="Html_MakemflashAll_load.asp">�����ƶ�����</a></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="Html_MakemflashAll.asp">�����ƶ�����</a></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/index_mb.asp&amp;mbName=��ҳ">�����ƶ���ǩ</a></td>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(6)" style="cursor:hand;"> 
          <span>������</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu6'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
        <tr>
          <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
			
				
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=user&id=1">�û�һ 960*����</a> </font></td>
            </tr>
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=user&id=2">�û��� 960*����</a> </font></td>
            </tr>
            
            
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC">----------------------</font></td>
            </tr>
			
            
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=newsclass&id=1">���ŷ���1 960*����</a> </font></td>
            </tr>
            
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=newsclass&id=2">���ŷ���2 700*����</a> </font></td>
            </tr>
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=newsclass&id=3">���ŷ���3 960*����</a> </font></td>
            </tr>
            
            
             <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC">----------------------</font></td>
            </tr>
			
            
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=news&id=1">������ϸ1 960*����</a> </font></td>
            </tr>
            
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=news&id=2">������ϸ2 900*����</a> </font></td>
            </tr>
          
            
            
          </table></td>
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
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(11)" style="cursor:hand;"> 
          <span>���۹���</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu11'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
          <td width="183%"><a href="commentadmin/comment_list.asp" target="Admin_Main">��������</a></td>
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
    <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle2 onClick="showsubmenu(8)" style="cursor:hand;"><span>���ݿ����</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu8'><div class=sec_menu style="width:158">
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
      <%if sqlconn=0 then%>
      <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
          <td width="100%"><a href="888wang_acc_bak.asp" target="Admin_Main">access���ݿⱸ��</a></td>
        </tr>
        <%else%>
        <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
              <td width="100%"><a href="888wang_sql.asp" target="Admin_Main">SQL���ݿⱸ�ݻ�ԭ</a></td>
        </tr>
            
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
              <td width="100%"><a href="888wang_data_sql.asp" target="Admin_Main">ֱ��ִ��SQL���</a><a href="z-z-musicmb.asp?type=zhuanji" target="main"></a></td>
            </tr>
            <%end if%>
      </table></td>
  </tr>
</table>
</td>
  </tr>
</table>
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle1 onClick="showsubmenu(9)" style="cursor:hand;"> 
          <span>��Ȩ����</span> </td>
  </tr>
  <tr>
    <td style="display" id='submenu9'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="2" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td><font face="Arial" color="#416BDC">&nbsp;&nbsp;<a target="_top" href="Logout.asp">�˳�����</a></font></td>
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