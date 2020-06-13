<%@ page language="C#" autoeventwireup="true" inherits="manage_Room_Object, App_Web_b4w2tgrv" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>添加物品</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            background: #e0f7e5; /*line-height: 120%;*/
            padding: 2px;
            width: 27%;
        }
        .style2
        {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>小屋管理</span> &gt;&gt; <span>物品管理</span> &gt;&gt; <span>添加物品</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="添加物品" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                物品名称：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="OrnamentName" class="l_input" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                物品分类：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:DropDownList ID="ObjectClass" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="物品分类不能为空!" ControlToValidate="ObjectClass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                物品路径：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="OrnamentSrc" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <br />
                <iframe id="bigimgs" style="top: 2px" src="../shop/fileupload.aspx?menu=OrnamentSrc" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
            </td>
        </tr>
        
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                金币：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="Price" class="l_input" runat="server" Width="80px">0</asp:TextBox>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                积分：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="Rank" class="l_input" runat="server" Width="80px">0</asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                点券：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="Point" class="l_input" runat="server" Width="80px">0</asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                排序：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="OrderID" class="l_input" runat="server" Width="80px">0</asp:TextBox>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                下架：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:CheckBox ID="Shelves" runat="server" Text="是" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                有效期(小时)：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="Validity" class="l_input" runat="server" Width="107px">0</asp:TextBox> 0为不限制
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="right">
                物品说明：
            </td>
            <td style="text-align: left; width: 60%;">
                <asp:TextBox ID="ItemInfo" class="l_input" runat="server" Width="427px" 
                    Height="157px"></asp:TextBox>
                
            </td>
        </tr>
        <tr class="tdbg">
            <td style="text-align: center" colspan="2" class="style2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" 
                    onclick="EBtnSubmit_Click" />&nbsp;&nbsp;
                <input name="BtnCancel" class="C_input" type="button" onclick="javascript:window.location.href='ClassManage.aspx'"
                    value=" 取消 " />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
