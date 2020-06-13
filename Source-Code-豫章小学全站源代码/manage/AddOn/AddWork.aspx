<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AddWork, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加流程</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script>
var ie =navigator.appName=="Microsoft Internet Explorer"?true:false;
function $(objID){
 return document.getElementById(objID);
}
    </script>

</head>
<body>

    <form id="form1" runat="server">
    <div class="r_navigation">         
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span>CRM应用</span>&nbsp;&gt;&gt;&nbsp;<span><a href="Projects.aspx">项目管理</a></span>&nbsp;&gt;&gt;&nbsp;<span> <a href="WorkManage.aspx">流程管理</a></span> &gt;&gt; <a href="AddWork.aspx">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal></a></span>
            
    </div>
    <div class="clearbox">
    </div>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="LblTitleAdd" runat="server" Text="添加流程" Font-Bold="True"></asp:Label>
                <asp:Label ID="LblTitleModify" runat="server" Text="修改流程" Font-Bold="True" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>流程名称：&nbsp;</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtWorkName" runat="server" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                    ID="ValrKeywordText" ControlToValidate="TxtWorkName" runat="server" ErrorMessage="流程名称不能为空！"
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>流程简述：&nbsp;</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtWorkIntro" runat="server" TextMode="MultiLine" Rows="8" Columns="50"
                    class="l_input" Height="93px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        ControlToValidate="TxtWorkIntro" runat="server" ErrorMessage="项目简述不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnModify" Text="修改" OnClick="EBtnModify_Click" runat="server" Visible="false"
                    class="C_input" /><asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click"
                        runat="server" class="C_input" />&nbsp;&nbsp;
                <input name="Cancel" type="button" id="Cancel" value="取消" onclick="javascript:history.go(-1)"
                    class="C_input" />
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="HFWid" runat="server" />
    </form>
</body>
</html>
