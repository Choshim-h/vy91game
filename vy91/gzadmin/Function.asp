<%
Response.Expires = 0  
Response.expiresabsolute = Now() - 1  
Response.addHeader "pragma", "no-cache"  
Response.addHeader "cache-control", "private"  
Response.CacheControl = "no-cache" 
Response.Buffer = True 
Response.Clear
Server.ScriptTimeOut=999999999
'***************************************************************
'*			定义 Function 函数
'***************************************************************
Function GetPage(url) 
	Set Retrieval = CreateObject("Micro"&"soft.XML"&"HTTP") 
	With Retrieval 
	.Open "Get", url, False, "", "" 
	.Send 
	GetPage = BytesToBstr(.ResponseBody)
	End With 
	Set Retrieval = Nothing 
End Function

Function BytesToBstr(body)
	dim objstream
	set objstream = Server.CreateObject("ado"&"db.str"&"eam")
	objstream.Type = 1
	objstream.Mode =3
	objstream.Open
	objstream.Write body
	objstream.Position = 0
	objstream.Type = 2
	objstream.Charset = "GB2312"
	BytesToBstr = objstream.ReadText 
	objstream.Close
	set objstream = nothing
End Function

Function GetContent(str,start,last,n)
	If Instr(lcase(str),lcase(start))>0 then
		select case n
		case 0	'左右都截取（都取前面）（去处关键字）
		GetContent=Right(str,Len(str)-Instr(lcase(str),lcase(start))-Len(start)+1) 
		GetContent=Left(GetContent,Instr(lcase(GetContent),lcase(last))-1)
		case 1	'左右都截取（都取前面）（保留关键字）
		GetContent=Right(str,Len(str)-Instr(lcase(str),lcase(start))+1)
		GetContent=Left(GetContent,Instr(lcase(GetContent),lcase(last))+Len(last)-1)
		case 2	'只往右截取（取前面的）（去除关键字）
		GetContent=Right(str,Len(str)-Instr(lcase(str),lcase(start))-Len(start)+1)
		case 3	'只往右截取（取前面的）（包含关键字）
		GetContent=Right(str,Len(str)-Instr(lcase(str),lcase(start))+1)
		case 4	'只往左截取（取后面的）（包含关键字）
		GetContent=Left(str,InstrRev(lcase(str),lcase(start))+Len(start)-1)
		case 5	'只往左截取（取后面的）（去除关键字）
		GetContent=Left(str,InstrRev(lcase(str),lcase(start))-1)
		case 6	'只往左截取（取前面的）（包含关键字）
		GetContent=Left(str,Instr(lcase(str),lcase(start))+Len(start)-1)
		case 7	'只往右截取（取后面的）（包含关键字）
		GetContent=Right(str,Len(str)-InstrRev(lcase(str),lcase(start))+1)
		case 8	'只往左截取（取前面的）（去除关键字）
		GetContent=Left(str,Instr(lcase(str),lcase(start))-1)
		case 9	'只往右截取（取后面的）（包含关键字）
		GetContent=Right(str,Len(str)-InstrRev(lcase(str),lcase(start)))
		end select
	Else
		GetContent=""
	End if
End function

function GetPyChar(Char)
	tmp=65536+asc(Char)
	if(tmp>=45217 and tmp<=45252) or (tmp=65601) or (tmp=65633) or (tmp=37083) then
	 GetPyChar= "A"
	elseif(tmp>=45253 and tmp<=45760) or (tmp=65602) or (tmp=65634) or (tmp=39658) then
	 GetPyChar= "B"
	elseif(tmp>=45761 and tmp<=46317) or (tmp=65603) or (tmp=65635) or (tmp=33405) then
	 GetPyChar= "C"
	elseif(tmp>=46318 and tmp<=46930) or (tmp>=61884 and tmp<=61884) or (tmp=65604) or (tmp>=36820 and tmp<=38524) or (tmp=65636) then
	 GetPyChar= "D"
	elseif(tmp>=46931 and tmp<=47009) or (tmp=65605) or (tmp=65637) or (tmp=61513) then
	 GetPyChar= "E"
	elseif(tmp>=47010 and tmp<=47296) or (tmp=65606) or (tmp=65638) or (tmp=61320) or (tmp=63568) or (tmp=36281) then
	 GetPyChar= "F"
	elseif(tmp>=47297 and tmp<=47613) or (tmp=65607) or (tmp=65639) or (tmp=35949) or (tmp=36089) or (tmp=36694) or (tmp=34808) then
	 GetPyChar= "G"
	elseif(tmp>=47614 and tmp<=48118) or (tmp>=59112 and tmp<=59112) or (tmp=65608) or (tmp=65640) then
	 GetPyChar= "H"
	elseif(tmp=65641) or (tmp=65609) or (tmp=65641) then
	 GetPyChar="I"
	elseif(tmp>=48119 and tmp<=49061 and tmp<>48739) or (tmp>=62430 and tmp<=62430) or (tmp=65610) or (tmp=65642) or (tmp=39048) then
	 GetPyChar= "J"
	elseif(tmp>=49062 and tmp<=49323) or (tmp=65611) or (tmp=65643) then
	 GetPyChar= "K"
	elseif(tmp>=49324 and tmp<=49895) or (tmp>=58838 and tmp<=58838) or (tmp=65612) or (tmp=65644) or (tmp=62418) or (tmp=48739) then
	 GetPyChar= "L"
	elseif(tmp>=49896 and tmp<=50370) or (tmp=65613) or (tmp=65645) then
	 GetPyChar= "M"
	elseif(tmp>=50371 and tmp<=50613) or (tmp=65614) or (tmp=65646) then
	 GetPyChar= "N"
	elseif(tmp>=50614 and tmp<=50621) or (tmp=65615) or (tmp=65647) then
	 GetPyChar= "O"
	elseif(tmp>=50622 and tmp<=50905) or (tmp=65616) or (tmp=65648) then
	 GetPyChar= "P"
	elseif(tmp>=50906 and tmp<=51386) or (tmp>=62659 and tmp<=63172) or (tmp=65617) or (tmp=65649) then
	 GetPyChar= "Q"
	elseif(tmp>=51387 and tmp<=51445) or (tmp=65618) or (tmp=65650) then
	 GetPyChar= "R"
	elseif(tmp>=51446 and tmp<=52217) or (tmp=65619) or (tmp=65651) or (tmp=34009) then
	 GetPyChar= "S"
	elseif(tmp>=52218 and tmp<=52697) or (tmp=65620) or (tmp=65652) then
	 GetPyChar= "T"
	elseif(tmp=65621) or (tmp=65653) then
	 GetPyChar="U"
	elseif(tmp=65622) or (tmp=65654) then
	 GetPyChar="V"
	elseif(tmp>=52698 and tmp<=52979) or (tmp=65623) or (tmp=65655) then
	 GetPyChar= "W"
	elseif(tmp>=52980 and tmp<=53688) or (tmp=65624) or (tmp=65656) then
	 GetPyChar= "X"
	elseif(tmp>=53689 and tmp<=54480) or (tmp=65625) or (tmp=65657) then
	 GetPyChar= "Y"
	elseif(tmp>=54481 and tmp<=62383 and tmp<>59112 and tmp<>58838) or (tmp=65626) or (tmp=65658) or (tmp=38395) or (tmp=39783) then
	 GetPyChar= "Z"
	elseif(tmp=65584) then
	 GetPyChar="0-9"
	elseif(tmp=65585) then
	 GetPyChar="0-9"
	elseif(tmp=65586) then
	 GetPyChar="0-9"
	elseif(tmp=65587) then
	 GetPyChar="0-9"
	elseif(tmp=65588) then
	 GetPyChar="0-9"
	elseif(tmp=65589) then
	 GetPyChar="0-9"
	elseif(tmp=65590) then
	 GetPyChar="0-9"
	elseif(tmp=65591) then
	 GetPyChar="0-9"
	elseif(tmp=65592) then
	 GetPyChar="0-9"
	elseif(tmp=65593) then
	 GetPyChar="0-9"
	else
	 GetPyChar="0-9"
	end if
end function

function GetPy(Str)
for i=1 to len(Str)
GetPy=GetPy&GetPyChar(mid(Str,i,1))
next
end function 

Function GenerateRandomFileName(szFilename) '根据原文件名，自动以日期YYYY-MM-DD-RANDOM格式生成新文件名
    Randomize
    ranNum = Int(90000 * Rnd) + 10000
    If Month(Now) < 10 Then c_month = "0" & Month(Now) Else c_month = Month(Now)
    If Day(Now) < 10 Then c_day = "0" & Day(Now) Else c_day = Day(Now)
    If Hour(Now) < 10 Then c_hour = "0" & Hour(Now) Else c_hour = Hour(Now)
    If Minute(Now) < 10 Then c_minute = "0" & Minute(Now) Else c_minute = Minute(Now)
    If Second(Now) < 10 Then c_second = "0" & Second(Now) Else c_second = Minute(Now)
    fileExt_a = Split(szFilename, "")
    FileExt = LCase(fileExt_a(UBound(fileExt_a)))
    GenerateRandomFileName ="" & ranNum & ""
End Function

'************************************************************************************************************************
Function GetPage(url) 
on error resume next 
dim oSend
set oSend=createobject("MSXML2.XMLHTTP")
oSend.open "GET",url,false 
oSend.send() 
if oSend.readystate<>4 then exit function 
GetPage = BytesToBstr(oSend.responseBody)
set oSend=nothing
if err.number<>0 then err.Clear  
End Function 

Function BytesToBstr(body)
	dim objstream
	set objstream = Server.CreateObject("ado"&"db.str"&"eam")
	objstream.Type = 1
	objstream.Mode =3
	objstream.Open
	objstream.Write body
	objstream.Position = 0
	objstream.Type = 2
	objstream.Charset = "GB2312"
	BytesToBstr = objstream.ReadText 
	objstream.Close
	set objstream = nothing
End Function

Function GetImg(url) 
on error resume next 
dim oSend
set oSend=createobject("Micro"&"soft.XML"&"HTTP")
SourceCode = oSend.open ("GET",url,false)
oSend.send() 
if oSend.readystate<>4 then exit function
GetImg = oSend.responseBody
set oSend=nothing
if err.number<>0 then err.Clear
End Function

function saveimage(from,tofile)
dim geturl,objStream,imgs
geturl=trim(from)
imgs=GetImg(from)
Response.Write "<font color=red>"&formatnumber(len(imgs)/1024*2,2)&"</font>Kb<br>"
if formatnumber(len(imgs)/1024*2,2)>1 then
	Set objStream = Server.CreateObject("ado"&"db.str"&"eam")
	objStream.Type =1
	objStream.Mode=3  
	objStream.Open
	objstream.write imgs
	objstream.SaveToFile server.mappath(tofile),2
	objstream.Close()
	set objstream=nothing
else
Response.Write "保存失败：<font color=red>文件大小"&formatnumber(len(imgs)/1024*2,2)&"Kb，小于1K</font><br>"
end if
end function


Function IsExists(filespec) 
	Dim fso
	Set fso = CreateObject("Scripting.FileSystemObject")
	If (fso.FileExists(server.MapPath(filespec))) Then
	IsExists = True
	Else
	IsExists = False
	End If
End Function

Function IsFolder(Folder)
	Set  objFSO  =  Server.CreateObject("Scripting.FileSystemObject")  
	If  objFSO.FolderExists(server.MapPath(Folder))  Then  
	IsFolder = True
	Else
	IsFolder = False
	End If
End Function

Function IsFolder1(Folder1)
	Set  objFSO  =  Server.CreateObject("Scripting.FileSystemObject")  
	If  objFSO.FolderExists(server.MapPath(Folder1))  Then  
	IsFolder1 = True
	Else
	IsFolder1 = False
	End If
End Function

Function CreateFolder(fldr) 
	Dim fso, f
	Set fso = CreateObject("Scripting.FileSystemObject")
	Set f = fso.CreateFolder(Server.MapPath(fldr))
	CreateFolder = f.Path
	Set f=nothing
	Set fso=nothing
End Function



Function NoHtml(Str)
	Str1=""
	Str2=""
	while instr(Str,"<")>0
	Str1=left(Str,instr(Str,"<")-1)
	Str2=right(Str,len(Str)-instr(Str,">"))
	Str=Str1+Str2
	wend
	NoHtml=Str
End Function

Function Nonbsp(fString)
	if fString<>"" and not isnull(fstring) then
	fString = Replace(fString, "&nbsp;", "")
	Nonbsp=fString
else
	Nonbsp=""
end if
End Function



%>

