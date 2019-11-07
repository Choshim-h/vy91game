<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#include file="Cls_Upfile.asp" -->
<!--#include file="up_config.asp" -->
<%CheckAdmin3%>

<STYLE TYPE="text/css">
<!--
BODY { FONT-SIZE: 12px; COLOR:  #3366CC; font-family: "宋体"; LINE-HEIGHT:20px;} 
-->
</STYLE>
<%	
dim tempFolder
piclb=request("piclb")

if piclb="flashurl" then
tempFolder=""&swfFolder&""
AllowFileExtStr = "swf"
end if

if piclb="spic" then
tempFolder=""&spicFolder&""
AllowFileExtStr = "jpg,gif,png"
end if

if piclb="newsPic" then
tempFolder=""&newsPicFolder&""
AllowFileExtStr = "jpg,gif,png"
end if

if piclb="pic" then
tempFolder=""&picFolder&""
AllowFileExtStr = "jpg,gif,png"
end if

if piclb="pic1" then
tempFolder=""&bpicFolder&""
AllowFileExtStr = "jpg,gif,png"
end if

if piclb="pic2" then
tempFolder=""&cpicFolder&""
AllowFileExtStr = "jpg,gif,png"
end if

if piclb="mpic" then
tempFolder=""&mpicFolder&""
AllowFileExtStr = "jpg,gif,png"
end if

	MaxFileSize = 10240
	
Set RsConfigObj = Nothing
Set UpFileObj = New UpFileClass
UpFileObj.GetData
if piclb="flashurl" then
FilePath=Server.MapPath("/") & ""&tempFolder&""
else 
FilePath=Server.MapPath("/") & ""&tempFolder&""
end if
AutoReName = UpFileObj.Form("AutoRename")

ReturnValue = CheckUpFile(FilePath,MaxFileSize,AllowFileExtStr,AutoReName)
if ReturnValue <> "" then
%>
<script language="JavaScript">
history.back()
alert('<% = "以下文件上传失败，错误信息：\n" & ReturnValue %>');
</script>
<%
end if
Set UpFileObj=Nothing
Function CheckUpFile(Path,FileSize,AllowExtStr,AutoReName)
	Dim ErrStr,NoUpFileTF,FsoObj,FileName,FileExtName,FileContent,SameFileExistTF
	NoUpFileTF = True
	ErrStr = ""
	Set FsoObj = Server.CreateObject("Scripting.FileSystemObject")
	For Each FormName in UpFileObj.File
		SameFileExistTF = False
		FileName = UpFileObj.File(FormName).FileName
		FileExtName = UpFileObj.File(FormName).FileExt
		FileContent = UpFileObj.File(FormName).FileData
		'是否存在重名文件
		if UpFileObj.File(FormName).FileSize > 1 then
			NoUpFileTF = False
			ErrStr = ""
			if UpFileObj.File(FormName).FileSize > CLng(FileSize)*1024 then
				ErrStr = ErrStr & FileName & "文件:超过了限制，最大只能上传" & FileSize & "K的文件\n"
			end if
			If FsoObj.FileExists(Path & FileName) = True  then
				if AutoRename = "" then
					ErrStr = ErrStr & FileName & "文件:存在同名文件\n"
				else
					SameFileExistTF = True
				end if
			else
				SameFileExistTF = False
			End If
			if CheckFileType(AllowExtStr,FileExtName) = False then
				ErrStr = ErrStr & FileName & "文件:不允许上传,上传文件类型有" + AllowExtStr + "\n"
			end if
			if ErrStr = "" then
				if SameFileExistTF = True then
					SaveFile Path,FormName,AutoReName
				else
					SaveFile Path,FormName,""
				end if
			else
				CheckUpFile = CheckUpFile & ErrStr
			end if
		end if
	Next
	Set FsoObj = Nothing
	if NoUpFileTF = True then
		CheckUpFile = "没有上传文件"
	end if
End Function

Function CheckFileType(AllowExtStr,FileExtName)
	Dim i,AllowArray
	AllowArray = Split(AllowExtStr,",")
	FileExtName = LCase(FileExtName)
	CheckFileType = False
	For i = LBound(AllowArray) to UBound(AllowArray)
		if LCase(AllowArray(i)) = LCase(FileExtName) then
			CheckFileType = True
		end if
	Next
	if FileExtName="asp" or FileExtName="asa" or FileExtName="aspx" then
		CheckFileType = False
	end if
End Function

Function SaveFile(FilePath,FormNameItem,AutoNameType)
	Dim FileName,FileExtName,FileContent,FormName
	FileName = UpFileObj.File(FormNameItem).FileName
	FileExtName = UpFileObj.File(FormNameItem).FileExt
	FileContent = UpFileObj.File(FormNameItem).FileData		
	'Set ConfObj=Conn.execute("select Domains from Config")
	UpFileObj.File(FormNameItem).SaveToFile FilePath & Year(Now())&Right("0"&Month(Now()),2)&Right("0"&Day(Now()),2)&Right("0"&Hour(Now()),2)&Right("0"&Minute(Now()),2)&Right("0"&Second(Now()),2)&Round(Timer(),0)&"."&FileExtName
	FilePathsy=""&tempFolder&"" & Year(Now())&Right("0"&Month(Now()),2)&Right("0"&Day(Now()),2)&Right("0"&Hour(Now()),2)&Right("0"&Minute(Now()),2)&Right("0"&Second(Now()),2)&Round(Timer(),0)&"."&FileExtName
    
		'生成缩图
	'aspjpegsytimg = aspjpegsyt(FilePathsy,"class",125,125)
	'图片添加文字水印
	if sfsy<>0 then
		if sfsy=1 then
			aspjpegsytimg = aspjpegsyt(FilePathsy,"X",110,150)
			aspjpegsyimg = aspjpegsy(FilePathsy,"&HFFFFFF",syx,sytxt,sydx)
		end if
		if sfsy=2 then
			aspjpegsytimg = aspjpegsyt(FilePathsy,"X",110,150)
			aspjpegtpsyimg = aspjpegtpsy(FilePathsy,syx,sytxt,sydx)
		end if
	end if
	
	response.Write("<body leftmargin=""0"">上传成功,<img src=""images/okup.gif"" width=""91"" height=""21"" onclick=""insertface('"&FilePathsy&"')"" style=""CURSOR: hand"">点图标即可！,<a href=javascript:history.back()>继续上传</a>")
	response.Write("<script language=""javascript"">function insertface(userface){self.opener.form2."&piclb&".value=userface; window.close()}</script>")'给上传的图片路径放到文本框里
	response.end
End Function
'Set Conn = Nothing
%>

