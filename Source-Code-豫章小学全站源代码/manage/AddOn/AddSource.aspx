<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_AddSource, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>来源管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language ="javascript">
    function user()
{ 
if (document.forms.length==0) { 
}

    }
</script>
</head>
<body>
<form id="form1" runat="server">
      <div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>其他管理</span> &gt;&gt;<span><a href="SourceManage.aspx">来源管理</a></span> &gt;&gt; <span>
                                添加来源</span>
</div>
<div class="clearbox"></div>      

<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="4" class="spacingtitle">
            <strong>
                <asp:Label ID="LblPTitle" runat="server" Text="添加来源信息"></asp:Label></strong></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>名称：</strong></td>
        <td>
            <asp:TextBox ID="TxtName" runat="server" class="l_input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName"
              Display="Dynamic" ErrorMessage="*">用户名不能为空</asp:RequiredFieldValidator> </td>
        <td rowspan="6" colspan="2" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <table width="180" border="1">
                <tr>
                    <td style="width: 100%;" align="center">
                        <img id="showphoto" runat="server" src="/App_Themes/AdminDefaultTheme/Images/default.gif" width="150" height="172"
                            alt="来源图片" /></td>
                </tr>
            </table>
            <asp:TextBox ID="txtpic" runat="server" class="l_input"></asp:TextBox>*<asp:Label
                                                    ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label><br />
                                                <asp:FileUpload ID="FileUpload1" runat="server"/>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>地址：</strong></td>
        <td>
            <asp:TextBox ID="TxtAddress" runat="server" MaxLength="20" class="l_input"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtAddress"
              Display="Dynamic" ErrorMessage="*">地址不能为空</asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>电话：</strong>
           </td>
        <td>
            <asp:TextBox ID="TxtTel" runat="server" MaxLength="20" class="l_input"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtTel"
              Display="Dynamic" ErrorMessage="*">电话不能为空</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="Tel" runat="server" ControlToValidate="TxtTel"
                        Display="Dynamic" ErrorMessage="*" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)">电话格式不正确</asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>传真：</strong></td>
        <td>
            <asp:TextBox ID="TxtFax" runat="server" MaxLength="20" class="l_input"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtFax"
                        Display="Dynamic" ErrorMessage="*" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)">传真格式不正确</asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>联系人：</strong></td>
        <td>
            <asp:TextBox ID="TxtContacterName" runat="server" MaxLength="20"  class="l_input"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtContacterName"
              Display="Dynamic" ErrorMessage="*">联系人不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>主页：</strong></td>
        <td>
            <asp:TextBox ID="TxtHomePage" runat="server"  class="l_input"/></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>邮编：</strong></td>
        <td>
            <asp:TextBox ID="TxtZipCode" runat="server" MaxLength="20" class="l_input" />
            <asp:RegularExpressionValidator ID="Code" runat="server" ControlToValidate="TxtZipCode"
                        Display="Dynamic" ErrorMessage="*" ValidationExpression="[1-9]\d{5}(?!\d)">邮编格式不正确</asp:RegularExpressionValidator></td>
        <td class="tdbgleft">
            <strong>邮件：</strong></td>
        <td>
            <asp:TextBox ID="TxtEmail" runat="server" MaxLength="20" class="l_input" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail"
            Display="Dynamic" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">邮箱格式不正确</asp:RegularExpressionValidator>(格式为……@…….com/cn/net)
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtEmail"
              Display="Dynamic" ErrorMessage="*">邮箱不能为空</asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>通讯：</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" MaxLength="20" class="l_input"/></td>
        <td class="tdbgleft">
            <strong>IM：</strong></td>
        <td>
            <asp:TextBox ID="TxtIm" runat="server" MaxLength="20" class="l_input"/>
             </td>
       
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>分类：</strong></td>
       <td colspan="3">
            <asp:TextBox ID="TxtType" runat="server" class="l_input"></asp:TextBox>
             <!--<asp:DropDownList ID="DropAuthorType" runat="server" DataTextField="name" DataValueField="name"
                Width="150px">
            </asp:DropDownList>-->
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>属性：</strong></td>
        <td colspan="3">
            <asp:CheckBox ID="ChkElite" runat="server" />推荐
            <asp:CheckBox ID="ChkOnTop" runat="server" />置顶</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>来源简介：</strong></td>
        <td colspan="3">
            <asp:TextBox ID="TxtIntro" runat="server" Height="300px" Width="583px" class="l_input"/>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">
            <strong>是否启用</strong>
        </td>
        <td colspan="3">
            <asp:CheckBox ID="ChkPass" runat="server" Checked="true"  /></td>
    </tr>
    <tr>
        <td colspan="4" align="center" class="tdbg">
        <asp:Button ID="EBtnModify" class="C_input" Text="修改" OnClick="EBtnModify_Click" runat="server" Visible="false" />
        <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;&nbsp;
        <input name="Cancel" type="button"  class="C_input"  id="Button2" value="取消" onclick="javascript:window.location.href='SourceManage.aspx'" />
            </td></tr>
</table>   
</form>
</body>
</html>