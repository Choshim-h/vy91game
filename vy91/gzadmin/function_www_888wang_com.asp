<%
'ǿ����������·��ʷ���������ҳ�棬�����Ǵӻ����ȡҳ��
Response.Buffer = True 
Response.Expires = -1
Response.ExpiresAbsolute = Now() - 1
Response.CacheControl = "no-cache"
%>
<%

'���Դ���
Sub Re(Str)
	Response.Write Str
	Response.End
End Sub

Sub Rf(Str)
	Response.Write Str & vbCrLf
	Response.Flush
End Sub

'�õ��ļ�����������
Function GetWebData(byval strUrl)
dim curlpath
dim Retrieval
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

'�����ݱ�����ļ�--ͼƬû�к�׺
Sub SaveFile2(FileName,Data,Path,isimg)
Dim Ads
  Set ads=server.CreateObject("Adodb.Str"&"eam")
  With ads
    .Type=1
    .Open
    .Write Data
	if isimg=true then
    .SaveToFile server.MapPath(Path&"/"&FileName),2
	else
	 .SaveToFile server.MapPath(Path&"/"&FileName&".jpg"),2
	end if
    .Cancel()
    .Close()
  End With
  Set Ads=nothing
End Sub

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


on error resume next

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

'����ļ��Ƿ����
Function CheckFile(FolderPath)
	folderpath1=Server.MapPath("..")&"/Musiccode/"&folderpath
	folderpath1=Cgai(folderpath1)'����// \
    Set fso1 = CreateObject("Scripting.FileSystemObject")
    If fso1.FileExists(FolderPath1) then
       '����
       CheckFile = True
		'response.write("�ļ��Ѵ��ڣ���βɼ��������ش��ļ�<br>")
    Else
       '������
       CheckFile = False
    End if
    Set fso1 = nothing
End Function

'���Ŀ¼�Ƿ����
Function CheckDir(FolderPath)
	folderpath1=Server.MapPath("..")&"/Musiccode/"&folderpath
	folderpath1=Cgai(folderpath1)'����// \
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

'���Ŀ¼�Ƿ����,û�м�musiccode
Function CheckDir1(FolderPath)
	folderpath1=Server.MapPath("..")&"/"&folderpath
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

'-------------����ָ����������Ŀ¼-----------------------
Function MakeNewsDir1(foldername)
	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
        Set f = fso1.CreateFolder(Server.MapPath("..")&"/"&foldername)
        MakeNewsDir1 = True
    Set fso1 = nothing
End Function

'-------------����ָ����������Ŀ¼-----------------------
Function MakeNewsDir(foldername)
	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
        Set f = fso1.CreateFolder(Server.MapPath("..")&"/Musiccode/"&foldername)
        MakeNewsDir = True
    Set fso1 = nothing
End Function
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
on error resume next
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
'�滻//��/Ϊ\
function Cgai(str)
	Cgai=replace(replace(str,"//","/"),"/","\")
	
end function

'============================================================================================
'���Դ���
Sub Re1(Str)
	Response.Write Str
	Response.End
End Sub

Sub Rw(Str)
	Response.Write Str & vbCrLf
	Response.Flush
End Sub


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
    	'*****************************************************************
	Function SaveFiles(ByVal GetUrl, ByVal ToFile, ByVal sCookie, ByVal Agent, ByVal SaveShow)
            	Dim Datas, dSize
            	GetUrl = Replace(GetUrl, "\", "/")
            	Datas = HttpGet(10000, 10000, 20000, 20000, "GET", GetUrl, "", "", sCookie, "zh-cn", "", Agent, "", "*/*", "")
            	iSize = LenB(Datas)
            	dSize = FormatNumber(iSize / 1024, 3)
            	If iSize > 100 Then
			Set Ados = Server.CreateObject("Ad"&"odb"&"."&"St"&"re"&"am")
                	Ados.Type = 1
                	Ados.Mode = 3
                	Ados.Open
                	Ados.Write Datas
                	Ados.SaveToFile Server.MapPath(ToFile), 2
                	Ados.Close
			Set Ados = Nothing
                	SaveFiles = True
                	If SaveShow = 1 Then
                    		Response.Write "����ɹ���<font color=red>" & dSize & "</font>Kb"
                	End If
            	Else
                	SaveFiles = False
                	If SaveShow = 1 Then
                    		Response.Write "����ʧ�ܣ�<font color=red>�ļ���С" & iSize & "K��С��100K</font>"
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

	Function GetStr(TmpBody,Str1,Str2)
	    Dim TmpStr
	    BStr=Instr(TmpBody,Str1)
	    EStr=Instr(BStr+1,TmpBody,Str2)
	    TmpStr=Mid(TmpBody,Bstr+Len(Str1),EStr-BStr-Len(Str1))
	    GetStr=TmpStr
	End Function

	Function GetRStr(RTmpBody,RStr1,RStr2)
	    Dim RTmpStr,RBstr,REStr
	    RBstr=InstrRev(RTmpBody,RStr1)
	    REStr=Instr(RBStr+1,RTmpBody,RStr2)
	    'Response.write RBStr &"---------"&ReStr
	    'Response.End
	    RTmpStr=Mid(RTmpBody,RBstr+Len(RStr1),REStr-RBStr-Len(RStr1))
	    GetRstr=RTmpStr
	End Function

'=========================================================
'������RemoveHTML(strHTML)
'���ܣ�ȥ��HTML���
'������strHTML  --Ҫȥ��HTML��ǵ��ַ���
'=========================================================
Function RemoveHTML(strHTML) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True 
objRegExp.Global = True 
'ȡ�պϵ�<> 
objRegExp.Pattern = "<.+?>" 
'����ƥ�� 
Set Matches = objRegExp.Execute(strHTML) 

' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ 
For Each Match in Matches 
	strHtml=Replace(strHTML,Match.Value,"")
Next 
	RemoveHTML=trim(strHTML)
Set objRegExp = Nothing 
set Matches=nothing
End Function 
'==================================================
'��������ScriptHtml
'��  �ã�����html���
'��  ����ConStr ------ Ҫ���˵��ַ���
'==================================================
Function  ScriptHtml(Byval ConStr,TagName,FType)
    Dim Re
    Set Re=new RegExp
    Re.IgnoreCase =true
    Re.Global=True
    Select Case FType
    Case 1
       Re.Pattern="<" & TagName & "([^>])*>"
       ConStr=Re.Replace(ConStr,"")
    Case 2
       Re.Pattern="<" & TagName & "([^>])*>.*?</" & TagName & "([^>])*>"
       ConStr=Re.Replace(ConStr,"")
    Case 3
       Re.Pattern="<" & TagName & "([^>])*>"
       ConStr=Re.Replace(ConStr,"")
       Re.Pattern="</" & TagName & "([^>])*>"
       ConStr=Re.Replace(ConStr,"")
    End Select
    ScriptHtml=ConStr
    Set Re=Nothing
End Function


'==================================================
'��������GetBody
'��  �ã���ȡ�ַ���
'��  ����ConStr ------��Ҫ��ȡ���ַ���
'��  ����StartStr ------��ʼ�ַ���
'��  ����OverStr ------�����ַ���
'��  ����IncluL ------�Ƿ����StartStr
'��  ����IncluR ------�Ƿ����OverStr
'==================================================
Function  GetBody(ConStr,StartStr,OverStr,IncluL,IncluR)
   If ConStr="$False$" or ConStr="" or IsNull(ConStr)=True Or StartStr="" or IsNull(StartStr)=True Or OverStr="" or IsNull(OverStr)=True Then
      GetBody="$False$"
      Exit Function
   End If
   Dim ConStrTemp
   Dim Start,Over
   ConStrTemp=Lcase(ConStr)
   StartStr=Lcase(StartStr)
   OverStr=Lcase(OverStr)
   Start = InStrB(1, ConStrTemp, StartStr, vbBinaryCompare)
   If Start<=0 then
      GetBody="$False$"
      Exit Function
   Else
      If IncluL=False Then
         Start=Start+LenB(StartStr)
      End If
   End If
   Over=InStrB(Start,ConStrTemp,OverStr,vbBinaryCompare)
   If Over<=0 Or Over<=Start then
      GetBody="$False$"
      Exit Function
   Else
      If IncluR=True Then
         Over=Over+LenB(OverStr)
      End If
   End If
   GetBody=MidB(ConStr,Start,Over-Start)
End Function
'==================================================
'��������FpHtmlEnCode
'��  �ã��������
'��  ����fString ------�ַ���
'==================================================
Function  FpHtmlEnCode(fString)
   If IsNull(fString)=False or fString<>"" or fString<>"$False$" Then
       'fString=nohtml(fString)
       'fString=FilterJS(fString)
       fString = Replace(fString,"&nbsp;"," ")
       fString = Replace(fString,"&quot;","")
       fString = Replace(fString,"&#39;","")
       fString = replace(fString, ">", "")
       fString = replace(fString, "<", "")
       fString = Replace(fString, CHR(9), " ")'&nbsp;
       fString = Replace(fString, CHR(10), "")
       fString = Replace(fString, CHR(13), "")
       fString = Replace(fString, CHR(34), "")
       fString = Replace(fString, CHR(32), " ")'space
       fString = Replace(fString, CHR(39), "")
       fString = Replace(fString, CHR(10) & CHR(10),"")
       fString = Replace(fString, CHR(10)&CHR(13), "")
       fString=Trim(fString)
       FpHtmlEnCode=fString
   Else
       FpHtmlEnCode="$False$"
   End If
End Function

function nohtml(byval str)
	if isnull(str) or trim(str)="" then
		nohtml=""
		exit function
	end if
    dim re
    Set re=new RegExp
    re.IgnoreCase =true
    re.Global=True
    re.Pattern="(\<.[^\<]*\>)"
    str=re.replace(str,"")
    re.Pattern="(\<\/[^\<]*\>)"
    str=re.replace(str,"")
    set re=nothing
	str=replace(str,chr(34),"")
	str=replace(str,"'","")
    nohtml=str
end function

Function FilterJS(byval v)
	if isnull(v) or trim(v)="" then
		FilterJS=""
		exit function
	end if

	dim t
	dim re
	dim reContent
	Set re=new RegExp
	re.IgnoreCase =true
	re.Global=True
	re.Pattern="(javascript)"
	t=re.Replace(v,"&#106avascript")
	re.Pattern="(jscript:)"
	t=re.Replace(t,"&#106script:")
	re.Pattern="(js:)"
	t=re.Replace(t,"&#106s:")
	're.Pattern="(value)"
	't=re.Replace(t,"&#118alue")
	re.Pattern="(about:)"
	t=re.Replace(t,"about&#58")
	re.Pattern="(file:)"
	t=re.Replace(t,"file&#58")
	re.Pattern="(document.cookie)"
	t=re.Replace(t,"documents&#46cookie")
	re.Pattern="(vbscript:)"
	t=re.Replace(t,"&#118bscript:")
	re.Pattern="(vbs:)"
	t=re.Replace(t,"&#118bs:")
	're.Pattern="(on(mouse|exit|error|click|key))"
	't=re.Replace(t,"&#111n$2")
	're.Pattern="(&#)"
	't=re.Replace(t,"��#")
	FilterJS=t
	set re=nothing
End Function

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


'��ȡ��ת��ҳ��
Function GetRedriect(sUrl,domain)
    Set http = Server.CreateObject("WinHttp.WinHttpRequest.5.1")
    http.Option(6)=0
    Http.SetTimeouts 5000,5000,30000,5000
    Http.Open "GET",sUrl,False
    Http.SetRequestHeader   "Cookie","uutags=ok;domain="&domain&""
    Http.SetRequestHeader   "Connection","Keep-Alive"
    Http.send()

    If Http.Status<>200 And Http.Status<>302 Then
	'response.write "1"
    Else
       GetRedriect=  http.getResponseHeader("Location")
       'GetRedriect=  http.getAllResponseHeaders()
    End If
End Function

Function URLDecode(enStr)
  dim deStr
  dim c,i,v
  deStr=""
  for i=1 to len(enStr)
  c=Mid(enStr,i,1)
  if c="%" then
  v=eval("&h"+Mid(enStr,i+1,2))
  if v<128 then
  deStr=deStr&chr(v)
  i=i+2
  else
  if isvalidhex(mid(enstr,i,3)) then
  if isvalidhex(mid(enstr,i+3,3)) then
  v=eval("&h"+Mid(enStr,i+1,2)+Mid(enStr,i+4,2))
  deStr=deStr&chr(v)
  i=i+5
  else
  v=eval("&h"+Mid(enStr,i+1,2)+cstr(hex(asc(Mid(enStr,i+3,1)))))
  deStr=deStr&chr(v)
  i=i+3
  end if
  else
  destr=destr&c
  end if
  end if
  else
  if c="+" then
  deStr=deStr&" "
  else
  deStr=deStr&c
  end if
  end if
  next
  URLDecode=deStr
  end function

  function isvalidhex(str)
  isvalidhex=true
  str=ucase(str)
  if len(str)<>3 then isvalidhex=false:exit function
  if left(str,1)<>"%" then isvalidhex=false:exit function
  c=mid(str,2,1)
  if not (((c>="0") and (c<="9")) or ((c>="A") and (c<="Z"))) then isvalidhex=false:exit function
  c=mid(str,3,1)
  if not (((c>="0") and (c<="9")) or ((c>="A") and (c<="Z"))) then isvalidhex=false:exit function
  end function

  %>



