checkuserlogin();

function checkuserlogin(){
	$.ajax({
		url:"/user/ajaxuser.asp?action=ajax_checkuserlogin",
		type:'GET',
		success:function(){
				if (arguments[0]=='nodata')
			{
				$('#acooluserinfoview').html("<div class='user_avatar'><img src='/images/user_toux.png' /></div><div class='user_data'><ul><li>Nickname: NODATA</li><li>E-Mail: NODATA</li><li>Gender: NODATA</li><li>Registered: NODATA</li><li>Form: NODATA</li></ul></div>");
			}
			else{
				$('#acooluserinfoview').html(arguments[0]);
				userfavlist();
				userhistorylist();
			}			
		}
	});
}


function userfavlist(){
	$.ajax({
		url:"/user/ajaxuser.asp?action=ajax_userfavlist",
		type:'GET',
		success:function(){
				if (arguments[0]=='nodata')
			{
				$('#acool_favlist').html("NODATA");
			}
			else{
				$('#acool_favlist').html(arguments[0]);
			}			
		}
	});
}

function userhistorylist(){
	$.ajax({
		url:"/user/ajaxuser.asp?action=ajax_userhistorylist",
		type:'GET',
		success:function(){
				if (arguments[0]=='nodata')
			{
				$('#acool_historylist').html("NODATA");
			}
			else{
				$('#acool_historylist').html(arguments[0]);
			}			
		}
	});
}


function delfavlistid($favlistid){
	$.ajax({
		url:"/user/ajaxuser.asp?action=ajax_delfavlistid&favlistid="+$favlistid,
		type:'GET',
		success:function(){
				if (arguments[0]=='dataerr')
			{
			}
			else{
				userfavlist();
			}			
		}
	});
}