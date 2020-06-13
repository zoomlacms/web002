<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_AddPub, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>互动信息</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="../JS/RiQi.js" type="text/javascript"></script>
    <script src="../JS/Common.js" type="text/javascript"></script>
    <script>
        function clickurl() {
            var refer = document.referrer;
            if (refer != "") {
                location.href = refer;
            }
            else {
                window.close();
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_seta" id="manageinfo" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; <span>互动模块管理</span> &gt;&gt;
            <span>添加信息</span>
        </div>

        <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" CellPadding="4" GridLines="None"
            Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="r_navigation">
            <Fields>
            </Fields>
            <FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
            <CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
            <RowStyle />
            <FieldHeaderStyle Font-Bold="True" />
            <PagerStyle HorizontalAlign="Center" />
            <HeaderStyle Font-Bold="True" />
            <EditRowStyle />
            <AlternatingRowStyle />
        </asp:DetailsView>
        <asp:HiddenField ID="HiddenSmall" runat="server" />
        <asp:HiddenField ID="HdnModelID" runat="server" />
        <asp:HiddenField ID="HiddenID" runat="server" />
        <asp:HiddenField ID="HiddenPubid" runat="server" />
        <br />
        <table style="width: 100%; margin: 0 auto; margin-top: 5px;" cellpadding="0" cellspacing="0"
            class="border">
            <tr class="tdbg">
                <td colspan="2" class="title" style="text-align: center">
                    <asp:Label ID="LblModelName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right" class="tdbgleft">
                    标题
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" class="l_input" runat="server" Width="365px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right" class="tdbgleft">
                    内容
                </td>
                <td>
                    <asp:TextBox ID="tx_PubContent" runat="server" class="l_input" Height="107px" TextMode="MultiLine"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal><tr class="tdbgbottom border">
                <td colspan="2">
                    <asp:HiddenField ID="HdnModel" runat="server" />
                    <asp:HiddenField ID="HiddenParentid" runat="server" />
                    <asp:HiddenField ID="HdnPubid" runat="server" />
                    <asp:HiddenField ID="HdnID" runat="server" />
                    <asp:HiddenField ID="HdnType" runat="server" />
                    <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
                    <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />
                    <asp:Button ID="Button1" Text="返回" runat="server" OnClientClick="clickurl();return false;" />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
