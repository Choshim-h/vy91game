<%Sql_in=";|and |net user|net localgroup|insert |select |delete |update |count(|*|%|chr(|mid(|truncate |char(|declare |drop table|asc(|or |delete from|xp_cmdshell|exec master"
  '��ֹGET����---------------------------------------------------------------------------------
  '���ֳ�ע���ַ�
  Sql=Split(Sql_in,"|") 
  '���GET���������ݲ�Ϊ��
  If Request.QueryString<>"" Then
      '��һȡ���ύ�����Ĳ���
     For Each Sql_Get In Request.QueryString
     For Sql_Data=0 To Ubound(Sql)
      '�ж��Ƿ�����Ƿ��ַ�
      IF Instr(Lcase(Request.QueryString(Sql_Get)),Sql(Sql_Data))<>0 Then
       '����зǷ��ַ��������Ի�����ʾ�����Զ�������һҳ
       Response.Write("<script>alert('ϵͳ��ʾ���벻Ҫ����Ƿ��ַ�����ע��������IP�Ѽ�¼!');history.go(-1);</script>")
    Response.End()
   End IF
   Next
   Next
   End If
  '��ֹPOST����-----------------------------------------------------------------------------------
  IF Request.Form<>"" Then
     For Each Sql_Post In Request.Form
    For Sql_Data=0 To Ubound(Sql)
     IF Instr(Lcase(Request.Form(Sql_Post)),Sql(Sql_Data))<>0 Then
        Response.Write("<script>alert('ϵͳ��ʾ���벻Ҫ����Ƿ��ַ�����ע������IP�Ѽ�¼!');history.go(-1);</script>")
     Response.End()
     End IF
  Next
  Next
  End if
%>