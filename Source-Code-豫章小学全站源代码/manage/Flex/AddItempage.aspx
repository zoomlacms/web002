<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_AddItempage, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; <span>Flex管理</span> &gt;&gt;
        <span>Flex礼品管理</span> &gt;&gt; <span><a href="AddTemplate.aspx">添加礼品页面</a></span></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr align="center" >
            <td colspan="2" class="spacingtitle">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="添加礼品页面" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                所属礼品：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="U_Tid" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="U_Tid_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="U_Tid" ErrorMessage="所属礼品不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                产品分类：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="U_PClass" runat="server" 
                    onselectedindexchanged="U_PClass_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="U_PClass" ErrorMessage="产品分类不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                所属分类：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:DropDownList ID="U_Class" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="U_Class" ErrorMessage="所属分类不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                页码：
            </td>
            <td  style="text-align: left; width: 60%;">
                <asp:TextBox ID="U_Pagenum" class="l_input" runat="server" Width="136px">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="U_Pagenum" ErrorMessage="页码不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                分页默认小图片：
            </td>
            <td  style="text-align: left; width: 60%;">
               <asp:TextBox ID="U_PageUrl" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <br />
                <iframe id="Upload_pic" src="../Common/PubimgUpload.aspx?menu=U_PageUrl" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="left">
                分页默认大图片：
            </td>
            <td  style="text-align: left; width: 60%;">
         <asp:TextBox ID="U_PageUrl2" class="l_input" runat="server" Width="290px"></asp:TextBox>
                <br />
                <iframe id="Iframe1" src="../Common/PubimgUpload.aspx?menu=U_PageUrl2" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>    
            </td>
        </tr>
        <tr class="tdbg">
            <td style="text-align: center" colspan="2">
                <br />
                <asp:Button ID="EBtnSubmit" class="C_input"  Text="下一步" runat="server" onclick="EBtnSubmit_Click" 
                     />&nbsp;&nbsp;
                <input name="BtnCancel" class="C_input"  type="button" onclick="javascript:window.location.href='FlexTemplate.aspx'"
                    value=" 取消 " />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
