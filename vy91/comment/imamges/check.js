  var prevIcon;
  function icon(num){
  num.className="selected";
	if(typeof(prevIcon)!="undefined"){
		prevIcon.className="unselected";
	}else{
	document.all.firstface.className="unselected";
	}
	if(num.className=="unselected"){
		num.className="selected";
	}
  prevIcon=num;
  document.form1.rad.value=num.childNodes(0).id;
  }
function check()
{
	if(document.form1.username.value=="")
	{
		alert("请填写留言用户名!");
		document.form1.username.focus();
		return false;
	}
		
	if(document.form1.content.value=="")
	{
		alert("请填写留言内容...");
		document.form1.content.focus();
		return false;
	}
	if(document.form1.content.value.length>60)
	{
		alert("您的留言内容大于30个字...");
		document.form1.content.focus();
		return false;
	}
	document.form1.submit();
	
}
function check2()
{
document.form1.reset();
}

