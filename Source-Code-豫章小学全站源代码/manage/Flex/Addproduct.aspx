<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_AddProteat, App_Web_sqz5iug5" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>添加产品</title>

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
<body>f
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; <span>Flex管理</span>  &gt;&gt; <span>Flex产品管理</span> &gt;&gt;
        <span><a href="Addclass.aspx">添加产品</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="添加产品" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                产品名称：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="productname" class="l_input" runat="server" Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="productname" ErrorMessage="产品名称不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                产品类型：</td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="p_Type" runat="server">
                    <asp:ListItem Value="0">选择分类</asp:ListItem>
                    <asp:ListItem Value="1">像册类</asp:ListItem>
                    <asp:ListItem Value="2">礼品类</asp:ListItem>
                    <asp:ListItem Value="3">其他类</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                是否为双面：</td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="p_DoublePage" runat="server">
                    <asp:ListItem Value="0">选择</asp:ListItem>
                    <asp:ListItem Value="2">单面</asp:ListItem>
                    <asp:ListItem Value="3">双面</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                公用Flex模板：</td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="p_IspageTemplate" runat="server">
                    <asp:ListItem Value="0">选择模板</asp:ListItem>
                    <asp:ListItem Value="1">像册模板</asp:ListItem>
                    <asp:ListItem Value="2">其他模板</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                排序：</td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="p_num" class="l_input" runat="server" Width="91px">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="p_num" ErrorMessage="排序不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" id="Encrypt" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                产品说明;
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="p_info" class="l_input" runat="server" Height="101px" TextMode="MultiLine" 
                    Width="507px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td style="text-align: center" colspan="2" class="style2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" 
                    onclick="EBtnSubmit_Click" Width="80px" />&nbsp;&nbsp;
                <input name="BtnCancel" class="C_input" style="width:80px;"  type="button" onclick="javascript:window.location.href='productManage.aspx'"
                    value=" 取消 " />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
