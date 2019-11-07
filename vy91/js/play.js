// JavaScript Document
//===========================================S

url0="http://swfurl.acool.com/"
url1="http://swfurl.acool.com/"

//===========================================E
//===========================================S

$(document).ready(function() {
    if($("#player").width()>800)
	{
		$("#right_gg").css("display", "none");
		$("#if1").css("width", "980px");
	};

});
//===========================================E
//===========================================Play S

function GetPlayId($GetPlayId){
GetStarVote($GetPlayId);
GetComment($GetPlayId,1);
addthisid($GetPlayId);
}


function addthisid($GetPlayId){
	$.ajax({
		url:"/user/ajaxplay.asp?action=ajax_addthisid&GetPlayId="+$GetPlayId,
		type:'GET',
		success:function(){
			if (arguments[0]=='repeat')
			{
				$('#addfav').html("<img src='/images/youadded.png' />");
			}
		}
	});
}

function add_favlist($GetPlayId){
	$('#addfav').html("<img style='padding-top:10px; padding-left:50px;' src='/images/loader.gif'>");
	$.ajax({
		url:"/user/ajaxplay.asp?action=ajax_add_favlist&GetPlayId="+$GetPlayId,
		type:'GET',
		success:function(){
			if (arguments[0]=='ok')
			{
				$('#addfav').html("<img src='/images/youadded.png' />");
			}
			else
			{
				$('#addfav').html("Please?<a href='#' onclick=\"acool_userloginwindow.style.display='block'\">login</a>");
			}
		}
			
	});
}
//===========================================Play E

//===========================================S
	setTimeout("chg_adv();",16000);

    function chg_adv(){
        document.getElementById("adv").style.display='none';
        document.getElementById("player").style.display='';

    }
//===========================================E


//===========================================loading S
var flashloadcomplete = 0;

function loadingFlash(){
	var objThisFlash = getFlashObj();
	var intPercentage=0;
	
	try {if (objThisFlash) intPercentage = objThisFlash.PercentLoaded();}
	catch(e){}
	
	if (intPercentage < 0) intPercentage = 100;
	document.getElementById("loadtext").innerHTML = "Loading:" + intPercentage + "%";

	if (intPercentage == 100) {
		document.getElementById("loadtext").style.display = "none";
		flashloadcomplete = 1;
		return;
	}
	window.setTimeout(loadingFlash,300);
}

function getFlashObj() {
	if(isIE()){
		return document.getElementById("flashgame");	
	}else{
		return document.getElementById("flashgame1");
	}
}

//12-21修改，增加google浏览器，苹果浏览器兼容



function isIE6(){
	return !!window.ActiveXObject && !window.XMLHttpRequest;	
}

function isIE(){
	return 	!!window.ActiveXObject;
}
var isslide = false;

var _gameMark="1|0|1";
var arrTemp = _gameMark.split("|");
var _playMode = arrTemp[0];

//===========================================loading e



//===========================================S AjaxStar

function GetStarVote($ID){
	$.ajax({
		url:"/AjaxStar/update_Star.asp?action=ajax_getstar&id="+$ID,
		type:'GET',
		success:function(){
			$('#StarVote').html(arguments[0]);
		}
	});
}

function get_rate(rate){
	rate=rate.toString();
	var s;
	var g;
	$("#g").show();
	if (rate.length>=3){
		s=10;	
		g=0;
		$("#g").hide();
	}else if(rate=="0"){
		s=0;
		g=0;
	}else{
		s=rate.substr(0,1);
		g=rate.substr(1,1);
	}
	$("#s").text(s);
	$("#g").text("."+ g);
	$(".big_rate_up").animate({width:(parseInt(s)+parseInt(g)/10) * 14,height:26},1000);
	$(".big_rate_bak b").each(function(){
		$(this).mouseover(function(){
			$(".big_rate_up").width($(this).attr("rate") * 14 );
			$("#s").text($(this).attr("rate"));
			$("#g").text("");
		}).click(function(){
			$("#f").text($(this).attr("rate"));
			$("#my_rate").show();
		})
	})
	$(".big_rate_bak").mouseout(function(){
		$("#s").text(s);
		$("#g").text("."+ g);
		$(".big_rate_up").width((parseInt(s)+parseInt(g)/10) * 14);
	})
}
function up_rate($rate,$love,$nolove,$id){
	var rate = parseInt($rate);
    var love = parseInt($love);
	var nolove = parseInt($nolove);
        var newrate=  parseInt((love+rate)/(nolove + 1))

	$.ajax({
		url:"/AjaxStar/update_Star.asp?action=ajax_sendStarVote&rate="+$rate+"&love="+$love+"&nolove="+$nolove+"&starid="+$id,
		type:'GET'
		});

	$('#votes').html('votes:'+(nolove+1));
	$(".big_rate_up").width("0");
	get_rate(newrate);
}

//===========================================E AjaxStar


//===========================================S AjaxComment


function StopButton(){
	document.getElementById(arguments[0]).disabled=true;
	document.getElementById(arguments[0]).value="Wait..("+arguments[1]+")";
	if(--arguments[1]>0){
		window.setTimeout("StopButton('"+arguments[0]+"',"+arguments[1]+")",1000);
	}
	if(arguments[1]<=0){
		document.getElementById(arguments[0]).value='Submit';
		document.getElementById(arguments[0]).disabled=false;
	}
}
function GetComment($ID,$Page){
	$.ajax({
		url:"/AjaxComment/Comment.asp?action=ajax_getcomment&id="+$ID+"&page="+$Page+"&time"+new Date().toString(),
		type:'GET',
		success:function(){
			$('#comment').html(arguments[0]);
		
		}
	});
	GetCommentlogin()
}
function SendCommentding($commentid,$commentding){
	var myid = 'pl_'+$commentid;
    var a = document.getElementById(myid).innerHTML;
    a = parseInt(a);
    a++;
    document.getElementById(myid).innerHTML = a;
	$.ajax({
		url:"/AjaxComment/Comment.asp?action=ajax_sendcommentding&commentid="+$commentid+"&commentding="+$commentding,
		type:'GET'
		});
}
function SendComment(){	
		var $CommentParentID	=arguments[0];
		var $CommentText		=$('#CommentText').val();
		var $Commentpic     	=$('#uppic').val();
		if ($.trim($CommentText)=='')
		{
			alert('Please write your reply!');
			$('#CommentText').focus();
			return false;
		}
		if ($CommentText.length<5||$CommentText.length>200)
		{
			alert('It must be 5 to 200 words.');		
			return false;
		}
		StopButton('CommentSubmit',10);
	$.ajax({
		url:"/AjaxComment/Comment.asp?action=ajax_sendcomment&commentparentid="+$CommentParentID+"&commentpic="+escape($Commentpic)+"&commenttext="+escape($CommentText),
		type:'GET',
		success:function(){
			if (arguments[0]=='loginout')
			{
				alert('Login Timeout!');
				GetCommentlogin()
			}else{
				GetComment($CommentParentID,0);
				$("#CommentText").val("");
			}
		}
	});
//SetCookie("CommentUser",$CommentUser,3);
}
function Sendreply(){	
		var $CommentParentID	=arguments[0];
		var $commentchildid 	=arguments[1];
		var $commentreply   	=arguments[2];
		var mytext = '#CommentreplyText'+arguments[1];
		var $CommentUser		='甘蔗网玩家';
		var $CommentText	=$(mytext).val();
		if ($.trim($CommentText)=='')
		{
			alert('Please write your reply!');
			$('#CommentText').focus();
			return false;
		}
		if ($CommentText.length<5||$CommentText.length>200)
		{
			alert('It must be 5 to 200 words. ');		
			return false;
		}
	$.ajax({
		url:"/AjaxComment/Comment.asp?action=ajax_Sendreply&commentparentid="+$CommentParentID+"&commentchildid="+$commentchildid+"&commentuser="+escape($CommentUser)+"&commentreply="+escape($commentreply)+"&commenttext="+escape($CommentText),
		type:'GET',
		success:function(){
				GetComment($CommentParentID,0);
				alert(arguments[0]);
				$("#CommentText").val("");
		}
	});
//SetCookie("CommentUser",$CommentUser,3);
}
function Openreply(){
	var Openreply = 'comment-replyk'+arguments[0];
	document.getElementById(Openreply).style.display='block';

}
function closereply(){
	var Openreply = 'comment-replyk'+arguments[0];
	document.getElementById(Openreply).style.display='none';

}
function add_face(id){
    var o = document.getElementById('CommentText');
    if (o.value == '在这里输入您的评论...') o.value = '';
    var s = o.value;
    var reg = new RegExp("FA:[0-9][0-9]", "gm");

    if (s.match(reg) == null)
        var a = 1;
    else
        if (s.match(reg).length >= 3) { alert("You can only choose 3 expressions at most in every comment.");return;}
    o.value = o.value+"[FA:"+id+"]";
    o.focus();
 }


//===========================================E AjaxComment

//===========================================S Acoolplaylogin

function Sendacoolplaylogin(){
	var $acool_Email	=$('#acool_Email').val();
	var $acool_password	=$('#acool_password').val();
	if ($.trim($acool_Email)=='')
		{
			acool_userlogin_message.style.display='block';
			$('#acool_userlogin_message').html("Please input your Email adress");
			return false;
		}		
	if ($.trim($acool_password)=='')
		{
			acool_userlogin_message.style.display='block';
			$('#acool_userlogin_message').html("Please input your password");
			return false;
		}
		
	$.ajax({
		url:"/user/ajaxlogin.asp?action=ajax_Sendacoollogin&acool_Email="+$acool_Email+"&acool_password="+$acool_password,
		type:'GET',
		success:function(){
					if (arguments[0]=='pserror')
			{
				acool_userlogin_message.style.display='block';
				$('#acool_userlogin_message').html("Email or Password is incorrect.");
			    return false;
			}else{
				$('#acool_userinfo_info').html(arguments[0]);
				acool_userloginwindow.style.display='none';
				acool_Email.value="";
				acool_password.value="";
				acool_userlogin_message.style.display='none';
				GetCommentlogin()
			}
		}
	});
}
function GetCommentlogin(){
	$.ajax({
		url:"/AjaxComment/Comment.asp?action=ajax_getcommentlogin",
		type:'GET',
		success:function(){
			if (arguments[0]=='')
			{flash_comments_loginin.style.display='none';
			flash_comments_loginout.style.display='block';
			
			}
			else
			{flash_comments_loginout.style.display='none';
			flash_comments_loginin.style.display='block';
			flash_comments_avatarpic.src='/images/avatars/60/'+arguments[0]+'.png';
			}
		}
	});
}


//===========================================E Acoolplaylogin