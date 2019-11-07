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
          <span>系统信息管理</span> </td>
  </tr>
  <tr>
    <td style="display" id='submenu1'>
<div class=sec_menu style="width:158">
  <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_admin.asp">管理员管理</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_user_main.asp">用户管理</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="system_edit.asp">系统信息管理</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_LinkSite.asp">友情链接管理</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_indexPic.asp">首页轮显图片</a></font></td>
    </tr>
    <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_url.asp">小游戏数据路径</a></font></td>
    </tr>
	
	 <tr>
      <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
      <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="acool_batch_mail.asp">邮件群发</a></font></td>
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
          <span>新闻管理</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu16'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="news/NewsClass.asp" target="Admin_Main">新闻分类</a>  <a href="news/newsClassEdit.asp?act=add" target="Admin_Main">添加</a></td>
        </tr>
          <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="news/news.asp" target="Admin_Main">新闻列表</a>  <a href="news/newsEdit.asp?act=add" target="Admin_Main">添加</a></td>
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
          <span>用户积分管理</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu12'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_score.asp" target="Admin_Main">所有积分记录</a></td>
        </tr>
          <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_score_count.asp" target="Admin_Main">按用户积分次数</a></td>
        </tr>
		
		  <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_score_warning.asp" target="Admin_Main">已报警锁定用户</a></td>
        </tr>
		
		  <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang_com_scoreTo.asp" target="Admin_Main">申请兑换管理</a></td>
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
          <span>小游戏编辑操作</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu2'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <!--  <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><a href="888wang.com.asp" target="Admin_Main">小游戏自动采集</a></td>
        </tr>
        <tr>-->
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Addflash.asp">添加小游戏</a></font></td>
        </tr>
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="indexflashpx.asp">经典排序</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="flash.asp">小游戏管理</a>|<a target="Admin_Main" href="flash_good.asp">推荐</a>|<a target="Admin_Main" href="flash_class.asp">经典</a>|<a target="Admin_Main" href="flash_mobile.asp">移动</a>|<a target="Admin_Main" href="flash_html5.asp">HTML5</a></font></td>
        </tr>
        <tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Managetag.asp">标签管理</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Class.asp">类别管理</a></font></td>
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
          <span>模板管理</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu3'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/index_mb.asp&amp;mbName=首页">首页模板</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/class.html&amp;mbName=分类页">分类模版</a></font></td>
        </tr>
            <tr>
              <td align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/tag.html&amp;mbName=标签页">标签模板</a></font></td>
            </tr>
            <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/play_load.html&amp;mbName=播放载入页">播放载入模版</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/play.html&amp;mbName=播放页">播放模版</a></font></td>
        </tr>
        
		<tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/top.asp&amp;mbName=顶部模板(不含分类、播放、用户中心)">顶部模板(首页、玩得多、评价好)</a></font></td>
        </tr>
		
		<tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/top.asp&amp;mbName=顶部模板(不含首页、玩得多、评价好)">顶部模板(用户中心)</a></font></td>
        </tr>
		
		  <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/foot.asp&amp;mbName=底部模板(不含分类与播放)">底部模板(首页、玩得多、评价好、用户中心)</a></font></td>
        </tr>
		  <tr>



            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/hot_mb.asp&amp;mbName=热门小游戏">热门小游戏</a></font></td>
		    </tr>
		  <tr>
            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/new_mb.asp&mbName=热门小游戏">最新小游戏</a></font></td>
		    </tr>
		  <tr>
            <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/tj_mb.asp&amp;mbName=Beauty游戏">Beauty游戏</a></font></td>
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
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/mindex_mb.asp&amp;mbName=移动首页模板">移动首页模板</a></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/m_game_load.html&amp;mbName=移动载入模板页">移动载入模板</a></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/m_play.html&amp;mbName=移动播放模板">移动播放模板</a></td>
		    </tr>
		  <tr>
		    <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		    <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/index_mb.asp&amp;mbName=首页">移动标签模版</a></td>
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
    <td style="display:none" id='submenu5'>
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
                     <td align="center"><img border="0" src="images/yellowli.gif" /></td>
				     <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Html_MaketagAll.asp">生成所有标签</a></font></td>
		        </tr>
				   <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">播放载入<a target="Admin_Main" href="Html_MakeflashAll_load.asp?type=all"> 按最新</a> <a target="Admin_Main" href="Html_MakeflashAll_all_load.asp">按ID</a></font></td>
        </tr>
		
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC">播放<a target="Admin_Main" href="Html_MakeflashAll.asp?type=all"> 按最新</a> <a target="Admin_Main" href="Html_MakeflashAll_all.asp">按ID</a></font></td>
        </tr>

		
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makehot.asp">生成DOWNLOADS</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makelove.asp">生成ONLINE GAMES</a></font></td>
        </tr>
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="make_count.asp">生成全站统计</a></font></td>
        </tr>
		<tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
          <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="Html_MakeIndex_pic.asp">生成首页轮显图片</a></font></td>
        </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makehot.asp">生成热门小游戏</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makenew.asp">生成最新小游戏</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_maketj.asp">生成Beauty游戏</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makemoregames.asp">生成moregames</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><font face="Arial" color="#416BDC"><a target="Admin_Main" href="html_makeacoolgames.asp">生成Android</a></font></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="Html_MakemIndex.asp">生成移动首页</a></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="Html_MakemflashAll_load.asp">生成移动载入</a></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="Html_MakemflashAll.asp">生成移动播放</a></td>
		  </tr>
		<tr>
          <td align="center"><img border="0" src="images/yellowli.gif" /></td>
		  <td><a target="Admin_Main" href="888wang_mb.asp?mbUrl=../mb/index_mb.asp&amp;mbName=首页">生成移动标签</a></td>
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
          <span>广告管理</span> </td>
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
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=user&id=1">用户一 960*任意</a> </font></td>
            </tr>
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=user&id=2">用户二 960*任意</a> </font></td>
            </tr>
            
            
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC">----------------------</font></td>
            </tr>
			
            
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=newsclass&id=1">新闻分类1 960*任意</a> </font></td>
            </tr>
            
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=newsclass&id=2">新闻分类2 700*任意</a> </font></td>
            </tr>
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=newsclass&id=3">新闻分类3 960*任意</a> </font></td>
            </tr>
            
            
             <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC">----------------------</font></td>
            </tr>
			
            
			 <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=news&id=1">新闻详细1 960*任意</a> </font></td>
            </tr>
            
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif" /></td>
              <td width="183%"><font face="Arial" color="#416BDC"><a target="Admin_Main" href="888wang.com_Ads.Asp?type=news&id=2">新闻详细2 900*任意</a> </font></td>
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
          <span>评论管理</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu11'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
          <td width="183%"><a href="commentadmin/comment_list.asp" target="Admin_Main">所有评论</a></td>
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
    <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="Images/Admin_Left_001.gif" id=menuTitle2 onClick="showsubmenu(8)" style="cursor:hand;"><span>数据库管理</span> </td>
  </tr>
  <tr>
    <td style="display:none" id='submenu8'><div class=sec_menu style="width:158">
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
      <%if sqlconn=0 then%>
      <tr>
          <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
          <td width="100%"><a href="888wang_acc_bak.asp" target="Admin_Main">access数据库备份</a></td>
        </tr>
        <%else%>
        <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
              <td width="100%"><a href="888wang_sql.asp" target="Admin_Main">SQL数据库备份还原</a></td>
        </tr>
            
            <tr>
              <td width="17%" align="center"><img border="0" src="images/yellowli.gif"></td>
              <td width="100%"><a href="888wang_data_sql.asp" target="Admin_Main">直接执行SQL语句</a><a href="z-z-musicmb.asp?type=zhuanji" target="main"></a></td>
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
          <span>版权所有</span> </td>
  </tr>
  <tr>
    <td style="display" id='submenu9'>
<div class=sec_menu style="width:158">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#DEE7FF" width="100%">
    <tr>
      <td width="100%" bgcolor="#D6DFF7"><table border="0" cellpadding="2" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
        <tr>
          <td><font face="Arial" color="#416BDC">&nbsp;&nbsp;<a target="_top" href="Logout.asp">退出管理</a></font></td>
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