<%
'ǿ����������·��ʷ���������ҳ�棬�����Ǵӻ����ȡҳ��
Response.Buffer = True 
Response.Expires = -1
Response.ExpiresAbsolute = Now() - 1
Response.CacheControl = "no-cache"
%>
<%
'===========�뱣����Ȩ��Ϣ,���ȥ���������ṩ��ط���==============
' 888������ϵͳ V8.1 ��
' �ܷ���ַ��www.888wang.com
' ����֧��: QQ:56566918
' �ͷ�����www.888wang.com��վ�Ŀͷ�QQ
' �绰:15918529718
'==================================================================
%>
<%
'���Դ���
Sub Res(Str)
	Response.Write Str
	Response.End
End Sub

Sub Rw(Str)
	Response.Write Str & vbCrLf
	Response.Flush
End Sub

'ȡ����ַ
function getWebUrl()
getWebUrl="http://"&Cstr(Request.ServerVariables("SERVER_NAME"))
end function
'�õ��ļ�����������
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


'�����ݱ�����ļ�
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

'���Ŀ¼�Ƿ����musiccode,����֧�ֵ绰:15918529718
Function CheckDir(FolderPath)
	folderpath1=Server.MapPath("..")&"/gamecode/"&folderpath
	folderpath1=replace(replace(folderpath1,"//","/"),"/","\")
    Set fso1 = CreateObject("Scripting.FileSystemObject")
    If fso1.FolderExists(FolderPath1) then
       '����
       CheckDir = True
    Else
       '������
       CheckDir = False
    End if
    Set fso1 = nothing
End Function

'���Ŀ¼�Ƿ����,FolderPath��Ҫ�����/�ľ���·����
Function CheckDir1(FolderPath)
	folderpath1=Server.MapPath("..")&"/"&folderpath
	'folderpath1=Server.MapPath(folderpath)
	folderpath1=replace(replace(folderpath1,"//","/"),"/","\")
    Set fso1 = CreateObject("Scripting.FileSystemObject")
    If fso1.FolderExists(FolderPath1) then
       '����
       CheckDir1 = True
    Else
       '������
       CheckDir1 = False
    End if
    Set fso1 = nothing
End Function

'========================================================
'-------------����ָ����������Ŀ¼-----------------------
'���в����׵�����ϵQQ��56566918
'========================================================
Function MakeNewsDir(foldername)
	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
        Set f = fso1.CreateFolder(Server.MapPath("..")&"/gamecode/"&foldername)
        MakeNewsDir = True
    Set fso1 = nothing
End Function

'-------------����Ŀ¼����������·������Եģ����ɵ���һ��Ŀ¼������QQ��56566918 888wang.com-----------------------
Function MakeNewsDir1(foldername)

	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
		 Set f = fso1.CreateFolder(Server.MapPath("..")&"/"&foldername)
       ' Set f = fso1.CreateFolder(Server.MapPath(foldername))
        MakeNewsDir1 = True
    Set fso1 = nothing
End Function


'ȡ���ļ���ַ
Function GetFile(FileUrl,FilePath)
Dim AryFileName,Ary
  AryFileName=split(FileUrl,"/")
  Call  SaveFile(AryFileName(Ubound(AryFileName)),GetWebData(FileUrl),FilePath)
End Function

'ȡ��ҳ����
Function GetHttp(url) 
Dim Retrieval,GetBody
  Set Retrieval = CreateObject("Mic"&"roso"&"ft.XML"&"HTTP") 
  Retrieval.Open "Get", url, False
  Retrieval.Send
  GetBody=Retrieval.ResponseBody 
  GetHttp=BytesToBstr(GetBody)
  Set Retrieval = Nothing 
End function

'������ת�ı�
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
Dim regEx,aData,RetStr,Match   ' ����������
  Set regEx = New RegExp   ' �����淶���ʽ��
  regEx.IgnoreCase = False   ' �����Ƿ�������ĸ�Ĵ�Сд��
  regEx.Global = True   ' ����ȫ�����ʡ�
  regEx.Pattern = Ptrn  ' ����ģʽ��
  Set Matches = regEx.Execute(sStr)
  For Each Match in Matches   ' ���� Matches ���� 
     RetStr = RetStr & Replace(Match.Value,"""","")&"||"
  Next
  DeHttpData =RetStr
  set regEx=nothing
End function
'ȡ�ú��ֵ�ƴ���׸���ĸ
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
    	' ȡ��cookieͷ
    	' ============================================
   	Function GetCookie(ByVal strHead, ByVal sBound)
       		If strHead = "" Then
            		GetCookie = ""
            		Exit Function
        	End If
        	Dim strCookie, iCookie, bNum
        	strCookie = strHead
        
        	If strCookie <> "" And InStr(strCookie, "Set-Cookie") > 0 Then
            		strCookie = Replace(strCookie, "Set-Cookie: ", "��")
            		strCookie = Replace(strCookie, ";", "��")
            		Patrn = "��[^��]+��"
           		strCookie = RegExpSearch(Patrn, strCookie, 0, "`")
            		strCookie = Replace(strCookie, "��", "")
            		strCookie = Replace(strCookie, "��", "")
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
    	' ����ָ����������ʽ�����ַ�
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
    	'   function��˽�У�
    	'   ���� �������������ļ�
		'   888����Ϊ���ṩ���ʵĲɼ�ϵͳ��ͻ�Ʒ�����
    	'*****************************************************************
	Function SaveFiles(ByVal GetUrl, ByVal ToFile, ByVal sCookie, ByVal Agent, ByVal SaveShow)
            	Dim Datas, dSize
            	GetUrl = Replace(GetUrl, "\", "/")
            	Datas = HttpGet(10000, 10000, 20000, 20000, "GET", GetUrl, "", "", sCookie, "zh-cn", "", Agent, "", "*/*", "")
            	iSize = LenB(Datas)
            	dSize = FormatNumber(iSize / 1024 / 1024, 2)'ȡM������1λ
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
                    		Response.Write "����ɹ���<font color=red>" & dSize & "</font>MB"
                	End If
            	Else
                	SaveFiles = False
                	If SaveShow = 1 Then
                    		Response.Write "����ʧ�ܣ�<font color=red>�ļ���С" & iSize & "K��С��1K</font>"
                	End If
            	End If
    	End Function
    	' ============================================
    	' ����ļ����Ƿ���� ��������ھ��Զ������༶�ļ���
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
    	'   function�����У�
    	'   ���� �������ļ������Զ������༶�ļ���
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
            		' �����ļ�
            		If SaveType = 1 Then
                		SaveData = SaveFiles(FromUrl, strFile, sCookie, sAgent ,SaveShow)
            		Else
                		SaveData = True
            		End If
        	End If
		Set FSO = Nothing
    	End Function
		
'=====================================
'ȡ�ļ���׺
'�������ң�888�� 888wang.com
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

		
'������ʽ	
Function RemoveHTML(strHTML,Pattern1) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True 
objRegExp.Global = False 
'ȡ�պϵ�<> 
objRegExp.Pattern = Pattern1
'����ƥ�� 
set Matches = objRegExp.Execute(strHTML) 

' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ 
For Each Match in Matches 
strHTML1=Match.Value'Replace(strHTML,Match.Value,"2") 
Next 
RemoveHTML=strHTML1 
Set objRegExp = Nothing 
End Function 

'ͼƬ������ʽ	
Function RemoveHTML1(strHTML,Pattern1) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True 
objRegExp.Global = True 
'ȡ�պϵ�<> 
objRegExp.Pattern = Pattern1
'����ƥ�� 
set Matches = objRegExp.Execute(strHTML) 

' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ 
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
'CheckFileType ������������ļ��Ƿ�ΪͼƬ�ļ�
'����filename�Ǳ����ļ���·��
'������ļ�jpeg,gif,bmp,pngͼƬ�е�һ�֣���������true�����򷵻�false
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


'-----------------------��������-------------------------
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

'-------�滻HTML����
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

'-------------------��¼�ļ�-------------
'function writestr(str)
'TXT=str
'filename=server.mappath(Year(Now)&".txt")
'Set fs=server.CreateObject("scripting.filesystemobject")
'Set fso=fs.createTextFile(filename)
'fso.writeline TXT
'end function

'-----��¼ID������ID�������ļ�---------
function writestr(str,filetxt)
TXT=str
filename=server.mappath(filetxt&".txt")
Set fs=server.CreateObject("scripting.filesystemobject")
Set fso=fs.createTextFile(filename)
fso.writeline TXT
end function

'����
Function GetKey(HTML,Start,Last)
filearray=split(HTML,Start)
filearray2=split(filearray(1),Last)
GetKey=filearray2(0)
End Function

'��ȡһ���ÿ���ֵ�ͷһ��ƴ��
function GetPy(Str)
for i=1 to len(Str)
GetPy=GetPy&GetPyChar(mid(Str,i,1))
next
end function


'============================================
'�����ļ�,����GetHttp��ģ����asp������ִ��
'(����·��:��/mb/adList_mb.asp,ģ��·��)
'�õ����������ҳ����ͼƬ
'�������� ����·�� ǰ���ܴ�/������Ŀ¼ʱ����һ��Ϊ�գ�������Ŀ¼ʧ��
''�˳�����룬����ʱ��·��ǰ��../��server.mappath("../"&makeUrl)����Ϊ��������·�������·��
'============================================
function createFile_asp(makeUrl,mbUrl)
Set fso = Server.CreateObject("Scripting.FileSystemObject")
set type_d = fso.opentextfile(server.mappath(mbUrl),1,True)
'pencat= type_d.ReadAll
pencat= GetHttp(getWebUrl&mbUrl)'��ȡģ��Դ����
dim fldr,GetNewsFold
fldr=""
If CheckDir1(makeUrl)=false then '��������ڴ��ļ���
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
			  	response.write fldr+"����·������������������ȷ�Ĳ��� "
				'errmsg=errmsg+"����·������������������ȷ�Ĳ���"
			  else
			  	'response.write fldr+"�����ļ��гɹ� "
				'errmsg=errmsg+"�����ļ��гɹ� "
			  end if
		  else
		  	'response.write fldr+"�ļ����Ѵ��� "
			'errmsg=errmsg+"�ļ����Ѵ���"
		End if
	next
end if

Set type_x = fso.CreateTextFile(server.mappath("../"&makeUrl))
type_x.WriteLine pencat
set fso = nothing
type_d.close
type_x.close
response.write "�����ļ��ɹ� <a href='../"&makeUrl&"' target='_blank&class'>"&makeUrl&"</a>"
end function

'============================================
'�����ļ�,����
'(����·��,ģ��·��,���ñ�ǩ,ҳ���ǩ),
'���ɳ���:�����ļ�����վһ��Ŀ¼�����ɵ���վһ��Ŀ¼����������ļ�����վ��Ŀ¼����·�����ԣ����ɵ���һ��Ŀ¼ȥ��
'�������� ����·�� ǰ���ܴ�/������Ŀ¼ʱ����һ��Ϊ�գ�������Ŀ¼ʧ��
'�˳�����룬����ʱ��·��ǰ��../��server.mappath("../"&makeUrl)����Ϊ��������·�������·��
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
If CheckDir1(makeUrl)=false then '��������ڴ��ļ���
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
			  	response.write fldr+"����·������������������ȷ�Ĳ��� "
				'errmsg=errmsg+"����·������������������ȷ�Ĳ���"
			  else
			  	'response.write fldr+"�����ļ��гɹ� "
				'errmsg=errmsg+"�����ļ��гɹ� "
			  end if
		  else
		  	'response.write fldr+"�ļ����Ѵ��� "
			'errmsg=errmsg+"�ļ����Ѵ���"
		End if
	next
end if

Set type_x = fso.CreateTextFile(server.mappath("../"&makeUrl))
type_x.WriteLine pencat
set fso = nothing
type_d.close
type_x.close
response.write "�����ļ��ɹ� <a href='../"&makeUrl&"' target='_blank&class'>"&makeUrl&"</a>"
end function

%>



