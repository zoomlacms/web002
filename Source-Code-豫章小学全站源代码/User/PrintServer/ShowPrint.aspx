<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_ShowPrint, App_Web_cmsnmuvr" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>浏览</title>
</head>
<body  >
    <form id="form1" runat="server">
    <asp:HiddenField ID="hfImg" runat="server" />
    <div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <div style="height:50px; top:20px">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="保  存" onclick="Button1_Click" />
    </div>
    </form> 
<script type="text/javascript" language="javascript">
    function shoImg(obj) {
   //alert(obj.P_AddTime + obj.P_Ream + obj.P_State + obj.P_Type_ID + obj.P_PrintUrl + obj.P_UserID + obj.P_PID);
    alert('保存成功!');
    window.close();
}
 
    if (document.getElementById("hfImg").value == "") {
        document.getElementById("hfImg").value = opener.document.getElementById("HiddenField1").value;
        window.form1.submit();
    }
</script>
</body>
</html>