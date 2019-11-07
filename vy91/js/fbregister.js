checklogin();

function keyDown(){
     var e=event.srcElement;
     if(event.keyCode==13){
	document.all.acoolloginbtn.click(); 
     }
}

function checklogin(){
	$.ajax({
		url:"/user/ajaxlogin.asp?action=ajax_checklogin",
		type:'GET',
		success:function(){
			$('#acool_userinfo_info').html(arguments[0]);
		}
	});
}
function Sendacoollogin(){
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
			}
		}
	});
}


function Sendacoolloginout(){		
	$.ajax({
		url:"/user/ajaxlogin.asp?action=ajax_Sendacoolloginout",
		type:'GET',
		success:function(){
			$('#acool_userinfo_info').html(arguments[0]);
		}
	});
	acool_userloginwindow.style.display='none';
	checkLoginOut();
}

function Sendacoolsignup(){
	var $reg_Nickname	=$('#reg_Nickname').val();
	var $reg_Email   	=$('#reg_Email').val();
	var $reg_Gender  	=$('#reg_Gender').val();
	var $reg_password	=$('#reg_password').val();
	var $Confirm_Password	=$('#Confirm_Password').val();
	if ($.trim($reg_Nickname)=='')
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("Please input your Nickname adress");
			return false;
		}
	if ($reg_Nickname.length<5)
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("The nickname string you entered is too short.");
			return false;
		}
	if ($reg_Nickname.length>30)
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("The nickname string you entered is too long.");
			return false;
		}
	if ($.trim($reg_Email)=='')
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("Please input your Email adress");
			return false;
		}
	else
	    {
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if(myreg.test($reg_Email)){
            }else{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("Please enter a valid email address.");
			return false;
            }

		}

	if ($.trim($reg_password)=='')
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("Please input your password");
			return false;
		}
	if ($reg_password.length<6)
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("The Password string you entered is too short.");
			return false;
		}
	if ($reg_password.length>30)
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("The Password string you entered is too long.");
			return false;
		}
	if ($.trim($Confirm_Password)=='')
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("Please input your Confirm Password");
			return false;
		}
	if ($.trim($Confirm_Password)!=$.trim($reg_password))
		{
			newaccount_t_message.style.display='block';
			$('#newaccount_t_message').html("Two Entered passwords differ");
			return false;
		}
		
	$.ajax({
		url:"/user/ajaxlogin.asp?action=ajax_Sendacoolsignup&reg_Nickname="+$reg_Nickname+"&reg_Email="+$reg_Email+"&reg_Gender="+$reg_Gender+"&reg_password="+$reg_password+"&fbrz=1",
		type:'GET',
		success:function(){
			if (arguments[0]=='Nickname is already used.'||arguments[0]=='Email is already used.')
			{
				newaccount_t_message.style.display='block';
				$('#newaccount_t_message').html(arguments[0]);
			}else{
				newaccount_t_message.style.display='block';
				$('#newaccount_t_message').html(arguments[0]);
				reg_Nickname.value="";
				reg_Email.value="";
				reg_password.value="";
				Confirm_Password.value="";
			}
			
		}
	});
}



//======================fb js s================================
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      facebook_API();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.

} else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.

    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  function checkLoginOut() {
  FB.logout(function(response) {
        statusChangeCallback(response);// Person is now logged out
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '709751405708267',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.0' // use version 2.0
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
  
  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function facebook_API() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
						   
	  	$.ajax({
		url:"/user/ajaxlogin.asp?action=ajax_facebook_API&acool_Email="+response.email,
		type:'GET',
		success:function(){
			if (arguments[0]=='pserror')
			{
				reg_Email.value=response.email;
				reg_Nickname.value=response.name;
			}else if (arguments[0]=='fberror'){
				window.location.href="http://www.acool.com/user/fbbinding.html"; 
				}	
			else{
				$('#acool_userinfo_info').html(arguments[0]);
				acool_userloginwindow.style.display='none';

			}
		}
	});
    });
  }
  
  function acoolloginfb() { 
 FB.login(function(response) {
	FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
   // handle the response
 }, {scope: 'public_profile,email'});

 }
//======================fb js e================================