<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_StoreStyleAdd, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>会员组模型编辑</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
        <script src="/JS/RiQi.js" type="text/javascript"></script>  
    <script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
   <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; 店铺管理 &gt;&gt; 店铺模板管理 &gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="添加模板"></asp:Literal></span>
	</div>
    <div class="clearbox"></div>    
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="添加模板"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>模板名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtModelName" class="l_input" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">模板名称不能为空</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>所属模型：</strong>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>模板缩略图：</strong>
            </td>
            <td><asp:TextBox ID="Thumbnails" class="l_input" runat="server" Width="300px" /><iframe id="smallimgs" style="top:2px" src="../shop/fileupload.aspx?menu=Thumbnails" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>店铺主页模板选择：</strong>
            </td>
            <td><asp:TextBox ID="ModeTemplate" class="l_input" runat="server" />
                                <input type="button" class="C_input"  style="width:110px;"  value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ModeTemplate')+'&FilesDir=',650,480)" class="btn"/></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>店铺商品列表模板：</strong>
            </td>
            <td><asp:TextBox ID="ListModeTemplate" class="l_input" runat="server" />
                                <input type="button" class="C_input"  style="width:110px;"  value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ListModeTemplate')+'&FilesDir=',650,480)" class="btn"/></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>店铺商品信息模板：</strong>
            </td>
            <td><asp:TextBox ID="ContentModeTemplate" class="l_input" runat="server" />
                                <input type="button"  class="C_input"  style="width:110px;"  value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ContentModeTemplate')+'&FilesDir=',650,480)" class="btn"/></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>模板状态：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0">停用</asp:ListItem>
                    <asp:ListItem Selected="True" Value="1">使用</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnModelId" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存"  runat="server" OnClick="EBtnSubmit_Click" />
                &nbsp;&nbsp;
                <input name="Cancel"  type="button" class="C_input" id="Cancel" value="取消" onclick="javescript:history.go(-1)" />                
            </td>
        </tr>
    </table> 
</form>
</body>
</html>
