// JavaScript Document
function Resize(width,height){
	if(width){
		document.getElementById('flashgame').width=width;
		document.getElementById('flashgame').height=height;
	}
	if(width==800||width==1024){
	 document.getElementById("flash_play").style.position='absolute';
	 document.getElementById("flash_play").style.paddingLeft='5px';
	 document.getElementById("flash_play").style.paddingTop='85px';
	}
	else
	{
	document.getElementById("flash_play").style.position='';
	document.getElementById("flash_play").style.paddingLeft='';
	document.getElementById("flash_play").style.paddingTop='';
	}
}


<!--
//重玩函数，flashgame要html才能找到
function rePlay(){
//alert('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
document.getElementById('flashgame').StopPlay();
document.getElementById('flashgame').GotoFrame(0);
document.getElementById('flashgame').Play();
}

//播放器载入

setTimeout("showswf();",10000);

	//此程序为商业版本，不明白的请联系QQ:56566918
    //-->
	function showswf(){
            document.getElementById("www_888wang_com_playTool").style.display='';
			chg_adv();

    }
    function chg_adv(){
        document.getElementById("adv").style.display='none';
        document.getElementById("flash_play").style.display='';

    }
   // var chg_adv_ = setTimeout('chg_adv()',3000);
	
