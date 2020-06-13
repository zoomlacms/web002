<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_AddTemplate, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>Flex管理系统</title>

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
            background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
            width: 60%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; <span>Flex管理</span> &gt;&gt;
        <span>Flex礼品管理</span> &gt;&gt; <span><a href="AddTemplate.aspx">添加礼品</a></span></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="添加礼品" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                礼品名称：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="Mu_Title" class="l_input" runat="server" Width="290px"></asp:TextBox>
            </td>
        </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                所属产品：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="Mu_PClass" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="Mu_PClass_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Mu_PClass" ErrorMessage="所属产品不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                礼品所属分类：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="Mu_Class" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Mu_Class" ErrorMessage="分类不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                模板类型：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:RadioButtonList ID="Mu_ModelTemp" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">页面模板</asp:ListItem>
                    <asp:ListItem Value="0">成套模板</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                页面类型：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:RadioButtonList ID="Mu_PageType" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0" Selected="True">单页</asp:ListItem>
                    <asp:ListItem Value="1">拼页</asp:ListItem>
                    
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                用户是否允许修改：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:RadioButtonList ID="Mu_UserChange" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                背景图片(小图)：
            </td>
            <td  style="text-align: left; ">
                <asp:TextBox ID="Mu_BackImg" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="背景小图不能为空!" ControlToValidate="Mu_BackImg"></asp:RequiredFieldValidator>
                <br />
                <iframe id="Upload_pic" src="../Common/PubimgUpload.aspx?menu=Mu_BackImg" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                背景图片(大图)：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="Mu_BackImg2" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="背景大图不能为空!" ControlToValidate="Mu_BackImg2"></asp:RequiredFieldValidator>
                <br />
                <iframe id="Iframe1" src="../Common/PubimgUpload.aspx?menu=Mu_BackImg2" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
            </td>
        </tr>
        
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                排序：(越大排越前)</td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="Mu_Num" class="l_input" runat="server" Text="0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Mu_Num" ErrorMessage="排序不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr class="tdbg">
            <td style="text-align: center" colspan="2">
                <br />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="下一步" runat="server" onclick="EBtnSubmit_Click" 
                     />&nbsp;&nbsp;
                <input name="BtnCancel" type="button" class="C_input" onclick="javascript:window.location.href='FlexTemplate.aspx'"
                    value=" 取消 " />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
