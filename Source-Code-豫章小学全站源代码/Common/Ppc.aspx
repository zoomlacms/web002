<%@ page language="C#" autoeventwireup="true" inherits="Common_Ppc, App_Web_s2bhlxup" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="Select1" runat="server"  AutoPostBack="True" 
            onselectedindexchanged="Select1_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="Select2" runat="server"  AutoPostBack="True" 
            onselectedindexchanged="Select2_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="Select3" runat="server"  AutoPostBack="True" onselectedindexchanged="Select3_SelectedIndexChanged"></asp:DropDownList>
        <input id="address" runat="server" type="hidden" />
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function Display(grade) {
        switch (grade) {
            case 1:
                document.getElementById('Select1').style.display = "";
                document.getElementById('Select2').style.display = "none";
                document.getElementById('Select3').style.display = "none";
                break;
            case 2:
                document.getElementById('Select1').style.display = "";
                document.getElementById('Select2').style.display = "";
                document.getElementById('Select3').style.display = "none";
                break;
            case 3:
                document.getElementById('Select1').style.display = "";
                document.getElementById('Select2').style.display = "";
                document.getElementById('Select3').style.display = "";
                break;
        }
    }
</script>