<%@ page language="C#" autoeventwireup="true" inherits="manage_Component_AddComChild, App_Web_vh0dja20" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>添加子类组件</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.leftwidth
{
    background: #CBE6FC;
    padding: 2px;
    width: 30%;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; 组件子类管理 &gt;&gt; 
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    <div class="clearbox">
    </div>
    <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
        <tr>
            <td align="center" class="spacingtitle" colspan="2" style="height: 22px">
                <asp:Literal ID="LblTitle" Text="添加子类组件" runat="Server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="leftwidth" align="right">
                组件名称：
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_Name" runat="server" class="l_input" Width="196px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="leftwidth" align="right">
                排序：
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_OrderNum" runat="server" class="l_input" Text="0" Width="76px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="leftwidth" align="right">
                父类组件：
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="ParentTitle" runat="server" Width=100px 
                    AutoPostBack="true" onselectedindexchanged="ParentTitle_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="leftwidth">
                组件说明：
            </td>
            <td align="left" style="width: 100px; height: 20px" valign="middle">
                <asp:TextBox ID="txt_Remark" class="x_input" runat="server" Height="100px" TextMode="MultiLine"
                    Width="416px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center" class="tdbgleft" colspan="2">
                <asp:Button ID="btnSave" runat="server" Text="添加子类组件" Width="95px" OnClick="Button2_Click"
                    class="C_input" />
                <asp:Button ID="btnBack" class="C_input" runat="server" Text="返回组件列表" Width="100px"
                    OnClientClick="location.href='ComChildManage.aspx';return false;" 
                    onclick="btnBack_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
