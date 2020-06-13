<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AddProjectsModel, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加项目模型</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 35%;
            height: 33px;
        }
        .style2
        {
            height: 33px;
        }
        .style3
        {
            color: #1e860b;
            font-weight: bold;
            line-height: 22px;
            letter-spacing: 8px;
            height: 43px;
            padding: 2px;
            background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>CRM应用</span> &gt;&gt; <a href="ProjectsModel.aspx">项目模型</a> &gt;&gt; <span>
            <asp:Literal ID="LNav" runat="server" Text="添加项目模型"></asp:Literal>
        </span>
    </div>
    <div class="clearbox">
    </div>
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="style3" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="添加项目模型"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" >
                <strong>项目模型名称：</strong>
            </td>
            <td class="style2">
                <asp:TextBox ID="TxtModelName" class="l_input" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">项目模型名称不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>创建的数据表名：</strong>
            </td>
            <td>
                <asp:Label ID="LblTablePrefix" runat="server" Text="ZL_Pro_" />
                <asp:TextBox ID="TxtTableName" class="l_input" runat="server" Width="120" MaxLength="50" /><font color="red">*</font>
                <asp:RegularExpressionValidator ID="ValeTableName" runat="server" ControlToValidate="TxtTableName" ErrorMessage="只允许输入字母、数字或下划线" ValidationExpression="^[\w_]+$" SetFocusOnError="true" Display="Dynamic" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>名称：</strong>
                <br />
                例如：文章、软件、图片、商品
            </td>
            <td>
                <asp:TextBox ID="TxtItemName" runat="server" class="l_input" Width="156" MaxLength="20" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtItemName" ErrorMessage="RequiredFieldValidator">项目名称不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>单位：</strong>
                <br />
                例如：篇、个、张、件
            </td>
            <td>
                <asp:TextBox ID="TxtItemUnit" runat="server" class="l_input" Width="156" MaxLength="20" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtItemUnit" ErrorMessage="RequiredFieldValidator">项目单位不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
       <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>是否复制：</strong>
                  <br />
                  确定模型是否可以复制
            </td>
            <td>
                <asp:RadioButtonList ID="rblCopy" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True" >是</asp:ListItem>
                    <asp:ListItem Value="2">否</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>图标：</strong>
                <br />
                图标存放在~/Images/ModelIcon/目录下
            </td>
            <td>
                <asp:TextBox ID="TxtItemIcon" class="l_input" Text="Default.gif" runat="server" Width="156" MaxLength="20" />
                <asp:Image ID="ImgItemIcon" runat="server" ImageUrl="~/Images/ModelIcon/Default.gif" />
                <=<asp:DropDownList ID="DrpItemIcon" runat="server" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>模型描述：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtDescription" runat="server" class="l_input" 
                    TextMode="MultiLine" Width="365px" Height="77px" />
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnModelId" runat="server" />
                <asp:Button ID="EBtnSubmit"  Text="保 存" class="C_input"  OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button"  id="Cancel" class="C_input"  value="取 消" onclick="window.location.href='ProjectsModel.aspx';" />
            </td>
        </tr>
    </table>

    <script type="text/javascript">
    function ChangeImgItemIcon(icon)
    {
        document.getElementById("<%= ImgItemIcon.ClientID %>").src = "../../Images/ModelIcon/"+icon;
    }
    function ChangeTxtItemIcon(icon)
    {
        document.getElementById("<%= TxtItemIcon.ClientID %>").value = icon;
    }
    </script>
    </form>
</body>
</html>
