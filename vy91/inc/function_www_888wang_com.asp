<%
'强制浏览器重新访问服务器下载页面，而不是从缓存读取页面
Response.Buffer = True 
Response.Expires = -1
Response.ExpiresAbsolute = Now() - 1
Response.CacheControl = "no-cache"
%>
<%
'===========请保留版权信息,如果去除，将不提供相关服务==============
' 888网音乐系统 V8.1 版
' 管方网址：www.888wang.com
' 技术支持: QQ:56566918
' 客服：见www.888wang.com网站的客服QQ
' 电话:15918529718
'==================================================================
%>
<%
'调试代码
Sub Res(Str)
	Response.Write Str
	Response.End
End Sub

Sub Rw(Str)
	Response.Write Str & vbCrLf
	Response.Flush
End Sub

'取得网址
function getWebUrl()
getWebUrl="http://"&Cstr(Request.ServerVariables("SERVER_NAME"))
end function
'得到文件二进制数据
Function GetWebData(byval strUrl)
dim curlpath
dim Retrieval
  Set Retrieval = Server.CreateObject("Mic"&"roso"&"ft.XML"&"HTTP")
  Set Retrieval = Server.CreateObject("Mic"&"roso"&"ft.XML"&"HTTP")
  With Retrieval
    .Open "Get", strUrl, False,"",""
    .Send
    GetWebData =.ResponseBody
  End With
  Set Retrieval = Nothing
End Function


'将数据保存成文件
Sub SaveFile(FileName,Data,Path)
Dim Ads
  Set ads=server.CreateObject("Ad"&"odb"&"."&"St"&"re"&"am")
  With ads
    .Type=1
    .Open
    .Write Data
    .SaveToFile server.MapPath(Path&"/"&FileName),2
    .Cancel()
    .Close()
  End With
  Set Ads=nothing
End Sub

'检查目录是否存在musiccode,技术支持电话:15918529718
Function CheckDir(FolderPath)
	folderpath1=Server.MapPath("..")&"/gamecode/"&folderpath
	folderpath1=replace(replace(folderpath1,"//","/"),"/","\")
    Set fso1 = CreateObject("Scripting.FileSystemObject")
    If fso1.FolderExists(FolderPath1) then
       '存在
       CheckDir = True
    Else
       '不存在
       CheckDir = False
    End if
    Set fso1 = nothing
End Function

'检查目录是否存在,FolderPath不要传入带/的绝对路径，
Function CheckDir1(FolderPath)
	folderpath1=Server.MapPath("..")&"/"&folderpath
	'folderpath1=Server.MapPath(folderpath)
	folderpath1=replace(replace(folderpath1,"//","/"),"/","\")
    Set fso1 = CreateObject("Scripting.FileSystemObject")
    If fso1.FolderExists(FolderPath1) then
       '存在
       CheckDir1 = True
    Else
       '不存在
       CheckDir1 = False
    End if
    Set fso1 = nothing
End Function

'========================================================
'-------------根据指定名称生成目录-----------------------
'如有不明白的请联系QQ：56566918
'========================================================
Function MakeNewsDir(foldername)
	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
        Set f = fso1.CreateFolder(Server.MapPath("..")&"/gamecode/"&foldername)
        MakeNewsDir = True
    Set fso1 = nothing
End Function

'-------------生成目录，传入生成路径是相对的，生成到上一级目录，技术QQ：56566918 888wang.com-----------------------
Function MakeNewsDir1(foldername)

	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
		 Set f = fso1.CreateFolder(Server.MapPath("..")&"/"&foldername)
       ' Set f = fso1.CreateFolder(Server.MapPath(foldername))
        MakeNewsDir1 = True
    Set fso1 = nothing
End Function


'取得文件地址
Function GetFile(FileUrl,FilePath)
Dim AryFileName,Ary
  AryFileName=split(FileUrl,"/")
  Call  SaveFile(AryFileName(Ubound(AryFileName)),GetWebData(FileUrl),FilePath)
End Function

'取网页数据
Function GetHttp(url) 
Dim Retrieval,GetBody
  Set Retrieval = CreateObject("Mic"&"roso"&"ft.XML"&"HTTP") 
  Retrieval.Open "Get", url, False
  Retrieval.Send
  GetBody=Retrieval.ResponseBody 
  GetHttp=BytesToBstr(GetBody)
  Set Retrieval = Nothing 
End function

'二进制转文本
Function BytesToBstr(body)
  Dim objstream
  Set objstream = Server.CreateObject("Ad"&"odb"&"."&"St"&"re"&"am")
  objstream.Type = 1
  objstream.Mode =3
  objstream.Open
  objstream.Write body
  objstream.Position = 0
  objstream.Type = 2
  objstream.Charset = "GB2312"
  'objstream.Charset = "UTF-8"
  BytesToBstr = objstream.ReadText 
  objstream.Close
set objstream = Nothing
End function

function DeHttpdata(sStr,Ptrn)
Dim regEx,aData,RetStr,Match   ' 建立变量。
  Set regEx = New RegExp   ' 建立规范表达式。
  regEx.IgnoreCase = False   ' 设置是否区分字母的大小写。
  regEx.Global = True   ' 设置全程性质。
  regEx.Pattern = Ptrn  ' 设置模式。
  Set Matches = regEx.Execute(sStr)
  For Each Match in Matches   ' 遍历 Matches 集合 
     RetStr = RetStr & Replace(Match.Value,"""","")&"||"
  Next
  DeHttpData =RetStr
  set regEx=nothing
End function
'取得汉字的拼音首个字母
function getpychar(char)
Dim tmp,C
        C=asc(char)
        if c<0 Then C=C+65536
		If c>255 Then
           tmp=65536+asc(char) 
           if(tmp>=45217 and tmp<=45252) then getpychar= "A" 
           if(tmp>=45253 and tmp<=45760) then getpychar= "B" 
           if(tmp>=45761 and tmp<=46317) then getpychar= "C" 
           if(tmp>=46318 and tmp<=46825) then getpychar= "D" 
           if(tmp>=46826 and tmp<=47009) then getpychar= "E" 
           if(tmp>=47010 and tmp<=47296) then getpychar= "F" 
           if(tmp>=47297 and tmp<=47613) then getpychar= "G" 
           if(tmp>=47614 and tmp<=48118) then getpychar= "H" 
           if(tmp>=48119 and tmp<=49061) then getpychar= "J" 
           if(tmp>=49062 and tmp<=49323) then getpychar= "K" 
           if(tmp>=49324 and tmp<=49895) then getpychar= "L" 
           if(tmp>=49896 and tmp<=50370) then getpychar= "M" 
           if(tmp>=50371 and tmp<=50613) then getpychar= "N" 
           if(tmp>=50614 and tmp<=50621) then getpychar= "O" 
           if(tmp>=50622 and tmp<=50905) then getpychar= "P" 
           if(tmp>=50906 and tmp<=51386) then getpychar= "Q" 
           if(tmp>=51387 and tmp<=51445) then getpychar= "R" 
           if(tmp>=51446 and tmp<=52217) then getpychar= "S" 
           if(tmp>=52218 and tmp<=52697) then getpychar= "T" 
           if(tmp>=52698 and tmp<=52979) then getpychar= "W" 
           if(tmp>=52980 and tmp<=53688) then getpychar= "X" 
           if(tmp>=53689 and tmp<=54480) then getpychar= "Y" 
           if(tmp>=54481 and tmp<=56289) then getpychar= "Z" 
        Else
		   getpychar=Char
	    End If
end function 

'on error resume next

Function GetStr(TmpBody,Str1,Str2)
Dim TmpStr
BStr=Instr(TmpBody,Str1)
if bstr<1 then exit function
EStr=Instr(BStr+1,TmpBody,Str2)
if EStr<1 then exit function
TmpStr=Mid(TmpBody,Bstr+Len(Str1),EStr-BStr-Len(Str1))
GetStr=TmpStr
End Function


Function GetRStr(RTmpBody,RStr1,RStr2)
Dim RTmpStr,RBstr,REStr
RBstr=InstrRev(RTmpBody,RStr1)
REStr=Instr(RBStr+1,RTmpBody,RStr2)
RTmpStr=Mid(RTmpBody,RBstr+Len(RStr1),REStr-RBStr-Len(RStr1))
GetRstr=RTmpStr
End Function



Function HttpGet(lresolveTimeout,lconnectTimeout,lsendTimeout,lreceiveTimeout,Method,Url,Referer,Data,SetCookie,Language,CONTENT,Agent,Encoding,Accept,CodeBase)
		DoGet.lresolveTimeout 	= lresolveTimeout
		DoGet.lconnectTimeout 	= lconnectTimeout
		DoGet.lsendTimeout    	= lsendTimeout
		DoGet.lreceiveTimeout 	= lreceiveTimeout
		DoGet.Method 		= Method
		DoGet.Url 		= Url
		DoGet.Referer		= Referer
		DoGet.Data		= Data
		DoGet.SetCookie 	= SetCookie
		DoGet.Language 		= Language
		DoGet.CONTENT 		= CONTENT
		DoGet.Agent 		= Agent
		DoGet.Encoding 		= Encoding
		DoGet.Accept 		= Accept
		DoGet.CodeBase 		= CodeBase
		HttpGet = DoGet.HttpGet()
	End Function

    	' ============================================
    	' 取得cookie头
    	' ============================================
   	Function GetCookie(ByVal strHead, ByVal sBound)
       		If strHead = "" Then
            		GetCookie = ""
            		Exit Function
        	End If
        	Dim strCookie, iCookie, bNum
        	strCookie = strHead
        
        	If strCookie <> "" And InStr(strCookie, "Set-Cookie") > 0 Then
            		strCookie = Replace(strCookie, "Set-Cookie: ", "〔")
            		strCookie = Replace(strCookie, ";", "〕")
            		Patrn = "〔[^〕]+〕"
           		strCookie = RegExpSearch(Patrn, strCookie, 0, "`")
            		strCookie = Replace(strCookie, "〔", "")
            		strCookie = Replace(strCookie, "〕", "")
           		strCookie = Split(strCookie, "`")
			bNum = sBound	
			If bNum=-1 Then
				For I=0 To UBound(strCookie)
					If iCookie = "" Then
						iCookie = strCookie(i)
					Else
						iCookie = iCookie & "; " & strCookie(i)
					End If
				Next
			Else
				If bNum > UBound(strCookie) Then
					bNum = UBound(strCookie)
				End If
            			iCookie = strCookie(bNum)
			End If
        	End If
        	GetCookie = iCookie
    	End Function

    	' ============================================
    	' 按照指定的正则表达式返回字符
    	' ============================================
	Function RegExpSearch(Patrn, Str, sType, Spacer)
        	Dim RegEx, Match, Matches, RetStr, i
        	i = 0
        	Set RegEx = New RegExp
        	RegEx.Pattern = Patrn
        	RegEx.IgnoreCase = True
        	RegEx.Global = True
        	Set Matches = RegEx.Execute(Str)
        	For Each Match In Matches
            		i = i + 1
            		If sType = 0 Then
                		RetStr = RetStr & Match.Value
                		If i < Matches.Count Then RetStr = RetStr & Spacer
            		Else
                		RetStr = RetStr & Match.Value
                		If i < Matches.Count Then RetStr = RetStr & Spacer
                		If sType = i Then Exit For
            		End If
        	Next
        	RegExpSearch = RetStr
    	End Function


    	'*****************************************************************
    	'   function（私有）
    	'   作用 ：利用流保存文件
		'   888网，为您提供优质的采集系统，突破防盗链
    	'*****************************************************************
	Function SaveFiles(ByVal GetUrl, ByVal ToFile, ByVal sCookie, ByVal Agent, ByVal SaveShow)
            	Dim Datas, dSize
            	GetUrl = Replace(GetUrl, "\", "/")
            	Datas = HttpGet(10000, 10000, 20000, 20000, "GET", GetUrl, "", "", sCookie, "zh-cn", "", Agent, "", "*/*", "")
            	iSize = LenB(Datas)
            	dSize = FormatNumber(iSize / 1024 / 1024, 2)'取M，保留1位
            	If iSize > 1 Then
			Set Ados = Server.CreateObject("ADODB.Stream")
                	Ados.Type = 1
                	Ados.Mode = 3
                	Ados.Open
                	Ados.Write Datas
                	Ados.SaveToFile Server.MapPath(ToFile), 2
                	Ados.Close
			Set Ados = Nothing
                	SaveFiles = True
                	If SaveShow = 1 Then
                    		Response.Write "保存成功：<font color=red>" & dSize & "</font>MB"
                	End If
            	Else
                	SaveFiles = False
                	If SaveShow = 1 Then
                    		Response.Write "保存失败：<font color=red>文件大小" & iSize & "K，小于1K</font>"
                	End If
            	End If
    	End Function
    	' ============================================
    	' 检测文件夹是否存在 如果不存在就自动创建多级文件夹
    	' ============================================
	Function CreatePath(strPath)
        	Dim fldr, FristStr
        	strPath = Replace(strPath, "\", "/")
        	strPath = Replace(strPath, Chr(0), "")
        	strPath = Replace(strPath, "//", "/")
        	If Left(strPath, 1) = "/" Then
            		FristStr = "/"
            		strPath = Right(strPath, Len(strPath) - 1)
        	Else
            		FristStr = ""
            		strPath = strPath
        	End If
        	If Right(strPath, 1) = "/" Then
            		strPath = Left(strPath, Len(strPath) - 1)
        	Else
            		strPath = strPath
        	End If
        	GetNewsFold = Split(strPath, "/")
        	fldr = ""
		Set FSO = Server.CreateObject("Scripting.FileSystemObject")
        	For i = 0 To UBound(GetNewsFold)
            		If fldr = "" Then
                		fldr = FristStr & GetNewsFold(i)
            		Else
                		fldr = fldr & "\" & GetNewsFold(i)
            		End If
            		If FSO.FolderExists(Server.MapPath(fldr)) = False Then
                		Call FSO.CreateFolder(Server.MapPath(fldr))
            		End If
        	Next
		Set FSO = Nothing
        	If Err.Number = 0 Then
            		Err.Clear
           	 	CreatePath = Replace(fldr, "\", "/") & "/"
        	Else
            		CreatePath = ""
        	End If
    	End Function
    	' ============================================
    	'   function（公有）
    	'   作用 ：保存文件，并自动创建多级文件夹
    	' ============================================
	Function SaveData(FromUrl, ToFiles, sCookie, sAgent, SaveType, SaveShow)
        	Dim strFile, NewPath
        	strFile = Replace(ToFiles, "\", "/")
        	strFile = Replace(strFile, Chr(0), "")
        	strFile = Replace(strFile, "//", "/")
        	NewPath = Mid(strFile, 1, InStrRev(strFile, "/"))
		Set FSO = Server.CreateObject("Scripting.FileSystemObject")
        	If FSO.FileExists(Server.MapPath(strFile)) = False Then
            		If FSO.FolderExists(Server.MapPath(NewPath)) = False Then
                    		Call CreatePath(NewPath)
            		End If
            		SaveData = SaveFiles(FromUrl, strFile, sCookie, sAgent ,SaveShow)
        	Else
            		' 覆盖文件
            		If SaveType = 1 Then
                		SaveData = SaveFiles(FromUrl, strFile, sCookie, sAgent ,SaveShow)
            		Else
                		SaveData = True
            		End If
        	End If
		Set FSO = Nothing
    	End Function
		
'=====================================
'取文件后缀
'有问题找：888网 888wang.com
'=====================================
Public Function GetFileExt(ByVal FullPath) 
    'on error resume next 
    Dim pos, pvs 
    pos = InStrRev(FullPath, ".") 
    pvs = InStrRev(FullPath, "?") - pos 
    If pvs < pos Then pvs = InStrRev(FullPath, "?") 
    If pos > 0 Then 
        If pvs > 0 Then 
            GetFileExt = Mid(FullPath, pos, pvs) 
        Else 
            GetFileExt = Mid(FullPath, pos) 
        End If 
    End If 
End Function 

		
'正则表达式	
Function RemoveHTML(strHTML,Pattern1) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True 
objRegExp.Global = False 
'取闭合的<> 
objRegExp.Pattern = Pattern1
'进行匹配 
set Matches = objRegExp.Execute(strHTML) 

' 遍历匹配集合，并替换掉匹配的项目 
For Each Match in Matches 
strHTML1=Match.Value'Replace(strHTML,Match.Value,"2") 
Next 
RemoveHTML=strHTML1 
Set objRegExp = Nothing 
End Function 

'图片正则表达式	
Function RemoveHTML1(strHTML,Pattern1) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True 
objRegExp.Global = True 
'取闭合的<> 
objRegExp.Pattern = Pattern1
'进行匹配 
set Matches = objRegExp.Execute(strHTML) 

' 遍历匹配集合，并替换掉匹配的项目 
For Each Match in Matches 
i=i+1
if i=1 then
strHTML1=Match.Value'Replace(strHTML,Match.Value,"2") 
else
strHTML1=strHTML1&"|"&Match.Value
end if
Next 
RemoveHTML1=strHTML1 
Set objRegExp = Nothing 
End Function 


'******************************************************************
'CheckFileType 函数用来检查文件是否为图片文件
'参数filename是本地文件的路径
'如果是文件jpeg,gif,bmp,png图片中的一种，函数返回true，否则返回false
'******************************************************************

const adTypeBinary=1

dim jpg(1):jpg(0)=CByte(&HFF):jpg(1)=CByte(&HD8)
dim bmp(1):bmp(0)=CByte(&H42):bmp(1)=CByte(&H4D)
dim png(3):png(0)=CByte(&H89):png(1)=CByte(&H50):png(2)=CByte(&H4E):png(3)=CByte(&H47)
dim gif(5):gif(0)=CByte(&H47):gif(1)=CByte(&H49):gif(2)=CByte(&H46):gif(3)=CByte(&H39):gif(4)=CByte(&H38):gif(5)=CByte(&H61)

function CheckFileType(filename)
'on error resume next
CheckFileType=false
dim fstream,fileExt,stamp,i
fileExt=mid(filename,InStrRev(filename,".")+1)
set fstream=Server.createobject("Ad"&"odb"&"."&"St"&"re"&"am")
fstream.Open
fstream.Type=adTypeBinary
fstream.LoadFromFile filename
fstream.position=0
select case LCase(fileExt)
case "jpg","jpeg"
stamp=fstream.read(2)
for i=0 to 1
if ascB(MidB(stamp,i+1,1))=jpg(i) then CheckFileType=true else CheckFileType=false
next
case "gif"
stamp=fstream.read(6)
for i=0 to 5
if ascB(MidB(stamp,i+1,1))=gif(i) then CheckFileType=true else CheckFileType=false
next
case "png"
stamp=fstream.read(4)
for i=0 to 3
if ascB(MidB(stamp,i+1,1))=png(i) then CheckFileType=true else CheckFileType=false
next
'case "bmp"
'stamp=fstream.read(2)
'for i=0 to 1
'if ascB(MidB(stamp,i+1,1))=bmp(i) then CheckFileType=true else CheckFileType=false
'next
end select
fstream.Close
set fseteam=nothing
if err.number<>0 then CheckFileType=false
end function


'-----------------------过滤数据-------------------------
Function fixdata(str)
If str="" Then
Exit Function
Else
str=rehtm(Rehtm(str))
str=Replace(Replace(str,"&nbsp;",""),"&nbsp","")
str=Replace(Replace(str,Chr(8),""),Chr(9),"")
str=Replace(Replace(str,Chr(10),""),Chr(13),"")
'str=Replace(str," ","")
fixdata=Trim(str)
End If
End Function

'-------替换HTML代码
Function rehtm(StrContent)
 If StrContent = "" Or IsNull(StrContent) Then Exit Function
 dim re
 Set re = new RegExp
 re.IgnoreCase =False
 re.Global = True
 re.Pattern = "(script)"
 StrContent = re.Replace(StrContent,"script")
 re.pattern="<[^>]*>"
  StrContent = re.Replace(StrContent,"")
 StrContent  = Replace(StrContent,Vbcrlf,"<br>")
 StrContent  = Replace(StrContent,"</P>","<br>")
 StrContent  = Replace(StrContent,"<P>","")
 rehtm =Replace(Replace(Replace(Replace(StrContent,Chr(13),""),Chr(10),""),Chr(8),""),Chr(9),"")
 set re=nothing
End Function

'-------------------记录文件-------------
'function writestr(str)
'TXT=str
'filename=server.mappath(Year(Now)&".txt")
'Set fs=server.CreateObject("scripting.filesystemobject")
'Set fso=fs.createTextFile(filename)
'fso.writeline TXT
'end function

'-----记录ID，传参ID，生成文件---------
function writestr(str,filetxt)
TXT=str
filename=server.mappath(filetxt&".txt")
Set fs=server.CreateObject("scripting.filesystemobject")
Set fso=fs.createTextFile(filename)
fso.writeline TXT
end function

'劈开
Function GetKey(HTML,Start,Last)
filearray=split(HTML,Start)
filearray2=split(filearray(1),Last)
GetKey=filearray2(0)
End Function

'获取一组词每个字的头一个拼单
function GetPy(Str)
for i=1 to len(Str)
GetPy=GetPy&GetPyChar(mid(Str,i,1))
next
end function


'============================================
'生成文件,是用GetHttp，模板有asp代码能执行
'(生成路径:如/mb/adList_mb.asp,模板路径)
'用到这个的有首页轮显图片
'传进来的 生成路径 前不能带/，创新目录时，第一个为空，将创建目录失败
''此程序代码，生成时，路径前加../，server.mappath("../"&makeUrl)，因为传进来的路径是相对路径
'============================================
function createFile_asp(makeUrl,mbUrl)
Set fso = Server.CreateObject("Scripting.FileSystemObject")
set type_d = fso.opentextfile(server.mappath(mbUrl),1,True)
'pencat= type_d.ReadAll
pencat= GetHttp(getWebUrl&mbUrl)'获取模板源代码
dim fldr,GetNewsFold
fldr=""
If CheckDir1(makeUrl)=false then '如果不存在此文件夹
GetNewsFold=split(makeUrl,"/")
	For i=0 to Ubound(GetNewsFold)-1
		if fldr="" then
		fldr=GetNewsFold(i)
		else
		fldr=fldr&"/"&GetNewsFold(i)
		end if

		If CheckDir1(fldr)=false then
			a=MakeNewsDir1(fldr)
			  if a = false then
			  	response.write fldr+"生成路径参数错误，请输入正确的参数 "
				'errmsg=errmsg+"生成路径参数错误，请输入正确的参数"
			  else
			  	'response.write fldr+"生成文件夹成功 "
				'errmsg=errmsg+"生成文件夹成功 "
			  end if
		  else
		  	'response.write fldr+"文件夹已存在 "
			'errmsg=errmsg+"文件夹已存在"
		End if
	next
end if

Set type_x = fso.CreateTextFile(server.mappath("../"&makeUrl))
type_x.WriteLine pencat
set fso = nothing
type_d.close
type_x.close
response.write "生成文件成功 <a href='../"&makeUrl&"' target='_blank&class'>"&makeUrl&"</a>"
end function

'============================================
'生成文件,测试
'(生成路径,模板路径,常用标签,页面标签),
'生成场景:生成文件在网站一级目录，生成到网站一级目录，如果生成文件在网站根目录，将路径不对，生成到上一级目录去了
'传进来的 生成路径 前不能带/，创新目录时，第一个为空，将创建目录失败
'此程序代码，生成时，路径前加../，server.mappath("../"&makeUrl)，因为传进来的路径是相对路径
'============================================
function createFile(makeUrl,mbUrl,replaceString,replaceString2)
Set fso = Server.CreateObject("Scripting.FileSystemObject")
set type_d = fso.opentextfile(server.mappath(mbUrl),1,True)
pencat= type_d.ReadAll


for i=0 to UBound(replaceString)
	if replaceString(i,0)<>"" then
		pencat=replace(pencat,replaceString(i,0),replaceString(i,1))
	end if
next

for i=0 to UBound(replaceString2)
	if replaceString2(i,0)<>"" then
		pencat=replace(pencat,replaceString2(i,0),replaceString2(i,1))
	end if
next

dim fldr,GetNewsFold
fldr=""
If CheckDir1(makeUrl)=false then '如果不存在此文件夹
GetNewsFold=split(makeUrl,"/")
	For i=0 to Ubound(GetNewsFold)-1
		if fldr="" then
		fldr=GetNewsFold(i)
		else
		fldr=fldr&"/"&GetNewsFold(i)
		end if

		If CheckDir1(fldr)=false then
			a=MakeNewsDir1(fldr)
			  if a = false then
			  	response.write fldr+"生成路径参数错误，请输入正确的参数 "
				'errmsg=errmsg+"生成路径参数错误，请输入正确的参数"
			  else
			  	'response.write fldr+"生成文件夹成功 "
				'errmsg=errmsg+"生成文件夹成功 "
			  end if
		  else
		  	'response.write fldr+"文件夹已存在 "
			'errmsg=errmsg+"文件夹已存在"
		End if
	next
end if

Set type_x = fso.CreateTextFile(server.mappath("../"&makeUrl))
type_x.WriteLine pencat
set fso = nothing
type_d.close
type_x.close
response.write "生成文件成功 <a href='../"&makeUrl&"' target='_blank&class'>"&makeUrl&"</a>"
end function

%>



