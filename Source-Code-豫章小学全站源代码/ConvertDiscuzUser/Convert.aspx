<%@ page language="C#" autoeventwireup="true" inherits="ConvertDiscuzUser_Convert, App_Web_t3d305iw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
z<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>用户同步工具</title>
    <style type="text/css">
        .style1
        {
            font-size: 9pt;
            border: 1px solid #CCC;
        }
        li {
            list-style-type: none;
        }
    </style>
    <script>
        function clickbutton(doms) {
            //doms.disabled = true;
            //content.innerHTML = "正在同步请稍等...";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="text-align: center; height: auto; background-color: #CCC;
        margin-top: 5px; font-weight: bold;">
        <ul>
            <li>Discuz!论坛用户同步工具</li></ul>
    </div>
            <div class="style1" style="text-align: center; height: auto; background-color: #CCCC;
                margin-top: 5px">
                <ul>
                    <li id="content" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="开始同步" OnClientClick="clickbutton(this);" OnClick="Button1_Click"></asp:Button>
                    </li>
                </ul>
            </div>
    </form>
</body>
</html>