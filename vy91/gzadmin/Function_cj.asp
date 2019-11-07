<%
'得到文件二进制数据
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

'检查目录是否存在
Function CheckDir1(FolderPath)
	folderpath1=Server.MapPath("..")&"/"&folderpath
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

'-------------根据指定名称生成目录-----------------------
Function MakeNewsDir1(foldername)
	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
        Set f = fso1.CreateFolder(Server.MapPath("..")&"/"&foldername)
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
     RetStr = RetStr & Replace(Match.Value,"""","") &"|"
  Next
  DeHttpData =RetStr
  'sStr=regEx.Replace(sStr,"^")
  'DeHttpData=sStr'(DeTextDatea(sStr,"^"))
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

on error resume next
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

Function CheckDir(FolderPath)
	folderpath1=Server.MapPath("..")&"/gamecode/"&folderpath
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

'-------------根据指定名称生成目录-----------------------
Function MakeNewsDir(foldername)
	dim f
    Set fso1 = CreateObject("Scripting.FileSystemObject")
        Set f = fso1.CreateFolder(Server.MapPath("..")&"/gamecode/"&foldername)
        MakeNewsDir = True
    Set fso1 = nothing
End Function

function bqtf1(s)
if s<>"" then
s=replace(s,"''","'") 
end if
bqtf1=s 
end function

%>  