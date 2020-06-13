<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.CreateHtml, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>修改栏目节点</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script>        function SetPr(val, curr) {
            document.getElementById('tp').style.width = val; document.getElementById('tn').innerText = val;
        }
        function SetTotal(val) {
            document.getElementById('total').innerText = val;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align='center'>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <center>
                <br />
                    <img id="Img1" runat="server" src="/App_Themes/AdminDefaultTheme/Images/loading_.gif"><asp:Label
                        ID="Label1" runat="server" Text="请稍后...."></asp:Label>
                </center>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="10" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="712px"
                    ForeColor="#FF3300"></asp:TextBox>
                </img>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
