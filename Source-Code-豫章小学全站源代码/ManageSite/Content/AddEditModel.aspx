<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddEditModel, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容模型管理</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >><%=type+typeName %></div>
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr class="tdbg">
            <td align="right" style="width: 35%">
                <strong><%=typeName %>名称：</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="TxtModelName" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">内容模型名称不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                <strong>创建的数据表名：</strong>
            </td>
            <td align="left">
                <asp:Label ID="LblTablePrefix" runat="server" Text="ZL_C_" />
                <asp:TextBox ID="TxtTableName" runat="server" Width="120" MaxLength="50" /><font color="red">*</font>
                <asp:RegularExpressionValidator ID="ValeTableName" runat="server" ControlToValidate="TxtTableName" ErrorMessage="只允许输入字母、数字或下划线" ValidationExpression="^[\w_]+$" SetFocusOnError="true" Display="Dynamic" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                <strong>项目名称：</strong>
                <br />
                例如：文章、软件、图片、商品
            </td>
            <td align="left">
                <asp:TextBox ID="TxtItemName" runat="server" Width="156" MaxLength="20" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtItemName" ErrorMessage="RequiredFieldValidator">项目名称不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                <strong>项目单位：</strong>
                <br />
                例如：篇、个、张、件
            </td>
            <td align="left">
                <asp:TextBox ID="TxtItemUnit" runat="server" Width="156" MaxLength="20" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtItemUnit" ErrorMessage="RequiredFieldValidator">项目单位不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                <strong>项目图标：</strong>
                <br />
                图标存放在~/Images/ModelIcon/目录下
            </td>
            <td align="left">
                <asp:TextBox ID="TxtItemIcon" Text="Default.gif" runat="server" Width="156" MaxLength="20" />
                <asp:Image ID="ImgItemIcon" runat="server" ImageUrl="~/Images/ModelIcon/Default.gif" />
                <=<asp:DropDownList ID="DrpItemIcon" runat="server" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" >
                <strong>模型描述：</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Width="365px" Height="43px" />
            </td>
        </tr>
        <tr >
            <td colspan="2">
                <asp:HiddenField ID="HdnModelId" runat="server" />
                <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server"  CssClass="button" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button"  id="Cancel"  Class="button" value="取消" onclick="window.location.href='ModelManage.aspx?nid=<%=Request.QueryString["nid"] %>';" />
            </td>
        </tr>
    </table>
</div>
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
