<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_StoreStyleEdit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
		
		<span>后台管理</span> &gt;&gt; 空间管理 &gt;&gt; 空间模板管理 &gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="修改个人空间模板"></asp:Literal></span>
	</div>
    <div class="clearbox"></div>    
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="修改个人空间模板"></asp:Literal></td>
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
                <strong>模板缩略图：</strong>
            </td>
            <td><asp:TextBox ID="Thumbnails" class="l_input" runat="server" Width="300px" /><span style="color: #ff0000">*</span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Thumbnails"
                    ErrorMessage="RequiredFieldValidator">模板缩略图不能为空</asp:RequiredFieldValidator><iframe id="smallimgs" style="top:2px" src="../shop/fileupload.aspx?menu=Thumbnails" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>用户空间首页模板：</strong>
            </td>
            <td><asp:TextBox ID="ModeTemplate" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ModeTemplate')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>日志列表模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox6" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox6')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>日志内容页模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox5" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox5')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"> 
            <td class="tdbgleft" style="width: 35%">
                <strong>相册列表模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox1" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox1')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>相册内容页模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox2" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox2')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>相片内容页模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox7" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox7')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>群族列表模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox3" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox3')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>群族内容页模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox4" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox4')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>话题内容页模板：</strong>
            </td>
            <td><asp:TextBox ID="TextBox9" class="l_input" runat="server" />
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox9')+'&FilesDir=',650,480)" class="C_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>模板状态：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">停用</asp:ListItem>
                    <asp:ListItem Value="1">启用</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnModelId" runat="server" />
                <asp:Button ID="EBtnSubmit" Text="保存" class="C_input"  runat="server" OnClick="EBtnSubmit_Click" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="C_input"  id="Cancel" value="取消" onclick="javescript:history.go(-1)" />                
            </td>
        </tr>
    </table> 
</form>
</body>
</html>
