//��ӭʹ��[888��]С��Ϸ����
//���в�������ģ����½www.888wang.com��ϵ����QQ
function checkPWD( me ){
	_( 'chkPwd' ).style.display = 'none';
	if (me == "") {
		_( "chkpswd" ).className = "PSW_P_0";
		_("chkpswdcnt").innerHTML = "";
		_( 'chkPwd' ).style.display = '';
	} else if (me.length < 6) {
		_( "chkpswd" ).className = "PSW_P_1";
		_("chkpswdcnt").innerHTML = "̫��";
	} else if( ! isPassword( me ) || !/^[^%&]*$/.test( me )) {
		_( "chkpswd" ).className = "PSW_P_0";
		_("chkpswdcnt").innerHTML = "";
		_( 'chkPwd' ).style.display = '';
	}
	else {
		var csint = checkStrong(me);
		switch (csint) {
		case 1:
			_("chkpswdcnt").innerHTML = "����";
			_( "chkpswd" ).className = "PSW_P_"+(csint + 1);
			break;
		case 2:
			_("chkpswdcnt").innerHTML = "һ��";
			_( "chkpswd" ).className = "PSW_P_"+(csint + 1);
			break;
		case 3:		
			_("chkpswdcnt").innerHTML = "��ǿ";
			_( "chkpswd" ).className = "PSW_P_"+(csint + 1);
			break;
		}
	}
}
function isPassword( str ){
	if (str.length < 6 || str.length > 16) return false;
	var len;
	var i;
	len = 0;
	for (i=0;i<str.length;i++){
		if (str.charCodeAt(i)>255) return false;
	}
	return true;
}
function checkNumber( num ,max){
    if( /^[0-9]+$/.test( num ) && num <=max && num > 0)
		return true;
	else return false;
}
function birthPress(){
	var k = window.event.keyCode;
	if (k < 48 || k > 57)
		window.event.keyCode = 0 ;
}
function confirmPwd( me ){
	var oPassword = _( "password" );
	if (oPassword.value == "") {
		return;
	}
	if( ! ( me.value == oPassword.value ) || ! isPassword( me.value ) ) _( "pwdConfirm" ).style.display = "";
}

function checkBirthday() {
	if (!checkNumber(_("year").value,new Date().getFullYear()) || !checkNumber(_("month").value,12) || !checkNumber(_("date").value,31)){
		_( "birthdayConfirm" ).style.display = "";
	} else if (parseInt(_("year").value) < new Date().getFullYear() - 100) {
		_( "birthdayConfirm" ).style.display = "";
	}
	if (new Date(parseInt(_("year").value), parseInt(_("month").value)-1, parseInt(_("date").value)).getTime() > new Date().getTime()) {
		_( "birthdayConfirm" ).style.display = "";
	}
}
function isAnswer( answer ){
	return /^[^%&]{1,30}$/.test( answer );
}
function checkGender(){
	for( var i = 0; i < document.getElementsByName("gender").length; i++ )	{
		if(document.getElementsByName("gender")[i].checked) return true;
	}
	return false;
}
function checkQuestion()
{
    if ( _("question").value == "cus" )
    {
    	_("cus_question").style.display="";
    }else{  
    	_("cus_question").style.display="none";
    	showCQChk( "no" );
    }
	
		var tempquestion=_("question").selectedIndex;
	//alert(tempquestion);
	if((_("question").selectedIndex)>=1){
		//alert("����");
		//_("questionMsg").innerHTML = "��ѡ��������ʾ����";
		_("questionMsg").style.display="none";
		
	}
}
function showCQChk(show)
{
    if(show=="yes")
    { 
    	_("questionConfirm").style.display="";
    }else{  
    	_("questionConfirm").style.display="none";
    }
}
function checkCustomQuestion( customquestion )
{
    var oCQ = _( 'questionConfirm' );
    showCQChk( "yes" );
    if ( customquestion == null || customquestion == "" )
    {
    	oCQ.innerHTML = "����д�Զ�����ʾ����";
    	return;
    }
    if ( customquestion.length > 30 )
    {
    	oCQ.innerHTML = "��ʾ�����Ӧ������30���ַ�";
    	return;
    }
    if(! /^[^%&]+$/.test( customquestion ) )
    {
    	oCQ.innerHTML = "��ʾ�����в��ܰ���'%'��'&'�������ַ�";
    	return;
    }
    showCQChk( "no" );
}
function isMobile( mobile ){
    return /^13\d{9}$/.test( mobile ) | /^15\d{9}$/.test( mobile );
}
function isAlt_email( alt_email ){
    return ( /^[^@]+@[^@]+\.[^@]+$/.test( alt_email ) && alt_email.length<128 );
}
function checkAltEmail( me ){
	if( ! isAlt_email( me.value ) ) _( "altConfirm" ).style.display = "";
}
function checkMobile( me ){
	if( ! isMobile( me.value ) ) _( "mobileConfirm" ).style.display = "";
}
function checkUser( me ){
	if (me.value == "") {
		_("userMsg").innerHTML = "����Ϊ��";
		//_( "answerConfirm" ).style.display = "";
		return;
	}
	if( ! isAnswer( me.value ) )  {
		_("userMsg").innerHTML = "���ó���30λ�ַ�";
		//_( "userMsg" ).style.display = "";
	}
}

function checkAnswer( me ){
	if (me.value.length <1) {
		_("answerConfirm").innerHTML = "����Ϊ��";
		_( "answerConfirm" ).style.display = "";
		return;
	}
	if( ! isAnswer( me.value ) )  {
		_("answerConfirm").innerHTML = "���ó���30λ�ַ�";
		_( "answerConfirm" ).style.display = "";
	}
}

function _(id) {
	return document.getElementById(id);
}

function fCheck(){

	/*something wrong*/
	/*form.txtName.trim();*/
	if(_("userName").value==""){
   	userMsg.innerHTML="<font color='red'>�û�������Ϊ��!</font>";
	//_("userName").focus();
	return false;
   }
      var cu = _("userName").value;
		var unlen = cu.replace(/[^\x00-\xff]/g, "**").length;
   if(unlen < 3) {
		 userMsg.innerHTML="<font color='red'>�����3���ַ�!</font>";
			return false;
		}
		if(unlen >15) {
		 userMsg.innerHTML="<font color='red'>���ܳ���15���ַ�!</font>";
			return false;
		}
		    if(! /^[^%&]+$/.test( cu ) )
    {
    	userMsg.innerHTML = "<font color='red'>���ܰ���'%'��'&'�ַ�</font>";
    	return false;
    }
	
	if( ! isPassword( _("password").value ) || !/^[^%&]*$/.test( _("password").value )) {
		window.scroll(0,50);
		//_("password").focus();
		_( "chkPwd" ).style.display = "";
		return false;
	}
	if( _("password_cf").value =="" ) {
		window.scroll(0,50);
		//_( "password_cf" ).focus();
		_( "pwdConfirm" ).style.display = "";
		return false;
	}
	if( _("password_cf").value != _("password").value ) {
		window.scroll(0,50);
		//_( "password_cf" ).focus();
		_( "pwdConfirm" ).style.display = "";
		return false;
	}
	/*
	if(_("alt_email").value !="") {
		if(!isAlt_email(_("alt_email").value)) {
			window.scroll(0,150);
			//_( "alt_email" ).focus();
			_( "altConfirm" ).style.display = "";
			return false;
		}
	}
	if(_("mobile").value !="") {
		if(!isMobile(_("mobile").value)) {
			window.scroll(0,170);
			//_( "mobile" ).focus();
			_( "mobileConfirm" ).style.display = "";
			return false;
		}
	}
	*/
	
	var tempquestion=_("question").selectedIndex;
	//alert(tempquestion);
	if((_("question").selectedIndex)<1){
		//alert("����");
		//_("questionMsg").innerHTML = "��ѡ��������ʾ����";
		_("questionMsg").style.display="";
		return false;
	}
	
	if( _("question").value !="" ) {
		if (_("question").value == "cus"){
			var customquestion = _("custom_question").value;
			if ( customquestion == null || customquestion == "" ){
				_("questionConfirm").innerHTML = "����д�Զ�����ʾ����";
				window.scroll(0,200);
				//_( "custom_question" ).focus();
				_("questionConfirm").style.display="";
				return false;
			}
			if ( customquestion.length > 30 ){
				_("questionConfirm").innerHTML = "��ʾ�����Ӧ������30���ַ�";
				window.scroll(0,200);
				//_( "question" ).focus();
				_("questionConfirm").style.display="";
				return false;
			}
			if(! /^[^%&]+$/.test( customquestion ) ){
				_("questionConfirm").innerHTML = "��ʾ�����в��ܰ���'%'��'&'�������ַ�";
				window.scroll(0,200);
				//_( "question" ).focus();
				_("questionConfirm").style.display="";
				return false;
			}
		}
		
		if( ! isAnswer( _("answer").value )  ) {
			window.scroll(0,200);
			//_( "answer" ).focus();
			_( "answerConfirm" ).style.display = "";
			return false;
		}
		if( (_("answer").value.indexOf( "&" ) != -1) || (_("answer").value.indexOf( "%" ) != -1) ) {
			window.scroll(0,200);
			//_( "answer" ).focus();
			_( "answerConfirm" ).style.display = "";
			return false;
		}
	} else {
		_("answer").value = "";
	}
	/* ���뱣�����ñ��������� 
	var mc = 0;
	if(_("alt_email").value !="") {
		mc++;
	}
	if(_("mobile").value !="") {
		mc++;
	}
	if( _("question").value !="" ) {
		mc++;
	}
	if(mc < 2){
		window.scroll(0,170);
		//_( "alt_email" ).focus();
		_('rppassconfirm').style.display='';
		return false;
	}
	if (!checkNumber(_("year").value,new Date().getFullYear()) || !checkNumber(_("month").value,12) || !checkNumber(_("date").value,31)){
		//_( "year" ).focus();
		window.scroll(0,450);
		_( "birthdayConfirm" ).style.display = "";
		return false;
	}
	if( !checkGender() ) {
		//_( "gender" ).focus();
		window.scroll(0,450);
		_('genderConfirm').style.display='';
		return false;
	}
	*/
	if( _("verifycode").value.length<1) {
		verifyConfirm.innerHTML="<font color='red'>��������֤��!</font>";
		_( "verifyConfirm" ).style.display = "";
		_("verifycode").focus();
		return false;
	}

	_("errMsg").innerHTML = "";
	_("errMsgTitle").style.display = "none";
	_("errMsg").style.display = "none";
	return true;
}
function addErrMsg(msg) {
	var nmsg = "<div style=\"text-align:left;padding-left:180px;\" class=\"error_explain font_space\">"+msg+"</div>";
	_("errMsg").innerHTML = _("errMsg").innerHTML + nmsg;
	_("errMsgTitle").style.display = "";
	_("errMsg").style.display = "";
	_('vadimg').src='/magic126v2.jsp?t='+(new Date().getTime());
	_('verify_code').value = "";
	window.scroll(0,0);
	//location.href="#";
}

function CharMode(iN){ 
	if (iN>=48 && iN <=57) //���� 
	return 1; 
	if (iN>=65 && iN <=90) //��д��ĸ 
	return 2; 
	if (iN>=97 && iN <=122) //Сд 
	return 4; 
	else 
	return 8; //�����ַ� 
} 

//bitTotal���� 
//�������ǰ���뵱��һ���ж�����ģʽ 
function bitTotal(num){ 
	modes=0; 
	for (i=0;i<4;i++){ 
		if (num & 1) modes++; 
		num>>>=1; 
	} 
	return modes; 
} 

//checkStrong���� 
//���������ǿ�ȼ��� 
function checkStrong(sPW){ 
	Modes=0; 
	for (i=0;i<sPW.length;i++){ 
		//����ÿһ���ַ������ͳ��һ���ж�����ģʽ. 
		Modes|=CharMode(sPW.charCodeAt(i)); 
	} 
	return bitTotal(Modes);
}
//*************************************
//��ӭʹ��[888��]С��Ϸ����
//���в�������ģ����½www.888wang.com��ϵ����QQ

