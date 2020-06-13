<%@ page language="C#" autoeventwireup="true" inherits="manage_Component_AddComClass, App_Web_vh0dja20" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>添加分类组件</title>
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
        <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; 组件分类管理 &gt;&gt; 
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    <div class="clearbox">
    </div>
    <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
        <tr>
            <td align="center" class="spacingtitle" colspan="2" style="height: 22px">
                <asp:Literal ID="LblTitle" Text="添加分类组件" runat="Server"></asp:Literal>
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
                <asp:Button ID="btnSave" runat="server" Text="添加组件" Width="95px" OnClick="Button2_Click"
                    class="C_input" />
                <asp:Button ID="btnBack" class="C_input" runat="server" Text="返回组件列表" Width="100px"
                    OnClientClick="location.href='ComClassManage.aspx';return false;" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
