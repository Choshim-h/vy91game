// JavaScript Document

	setTimeout("chg_adv();",16000);

    function chg_adv(){
        document.getElementById("adv").style.display='none';
        document.getElementById("player").style.display='';

    }



//loading S
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

//12-21ÐÞ¸Ä£¬Ôö¼Ógoogleä¯ÀÀÆ÷£¬Æ»¹ûä¯ÀÀÆ÷¼æÈÝ



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

//loading e