<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_EditPub, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>互动信息</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/RiQi.js" type="text/javascript"></script>

<script src="/JS/Common.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
      <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>内容管理</span>  &gt;&gt; <span>互动模块管理</span> &gt;&gt; <span>修改信息</span>
               
    </div>
        <table cellpadding="2" cellspacing="1" class="border" style="background-color: white; margin-top:5px;" width="100%">
            <tr class="tdbg" >
                <td align="center" class="title" colspan="2" height="24" width="100%">
                    <asp:Label ID="LblModelName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right" class="tdbgleft">
                    标题
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" class="l_input" runat="server" Width="426px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right" class="tdbgleft">
                    内容
                </td>
                <td>
                    <asp:TextBox ID="tx_PubContent" class="l_input" runat="server" Height="107px" TextMode="MultiLine" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal><tr class="tdbgbottom border">
                <td colspan="2" style="height: 84px">
                    <asp:HiddenField ID="HdnModel" runat="server" />
                    <asp:HiddenField ID="HdnPubid" runat="server" />
                    <asp:HiddenField ID="HdnID" runat="server" />
                    <asp:HiddenField ID="HdnType" runat="server" />
                    <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
                    <asp:Button ID="EBtnSubmit" Text=" 保 存 " class="C_input"  OnClick="EBtnSubmit_Click" runat="server" />
                    <asp:Button ID="Button1" Text=" 返 回 " class="C_input"  runat="server" OnClick="Button1_Click" />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
