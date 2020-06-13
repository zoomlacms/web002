<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubaddModel, App_Web_vxpwslge" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>互动模块管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >>
        <a href="PubaddModel.aspx">
            <asp:Literal ID="LNav" runat="server" Text="添加表单模型"></asp:Literal></a>
        </div>
        <table width="100%" cellpadding="2" cellspacing="1">
            <tr class="tdbg">
                <td  align="left" style="width: 35%; background-color: #F0F6FC" >
                    <strong>表单模型名称：</strong>&nbsp;
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="TxtModelName" runat="server" Width="156" MaxLength="200" /><font
                        color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                        ControlToValidate="TxtModelName">表单模型名称不能为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td  align="left" style="background-color: #F0F6FC" >
                    <strong>创建的数据表名：</strong>&nbsp;
                </td>
                <td align="left">
                    &nbsp;<asp:Label ID="LblTablePrefix" runat="server" Text="ZL_Pub_" />
                    <asp:TextBox ID="TxtTableName" runat="server" Width="120" MaxLength="50" /><font
                        color="red">*</font>
                    <asp:RegularExpressionValidator ID="ValeTableName" runat="server" ControlToValidate="TxtTableName"
                        ErrorMessage="只允许输入字母、数字或下划线" ValidationExpression="^[\w_]+$" SetFocusOnError="true"
                        Display="Dynamic" />
                </td>
            </tr>
            </tr>
            <tr class="tdbg">
                <td  align="left" style="background-color: #F0F6FC" >
                    <strong>表单类型：</strong>&nbsp;
                </td>
                <td align="left">
                    &nbsp;<asp:RadioButtonList ID="PubType" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">评论</asp:ListItem>
                        <asp:ListItem Value="1">投票</asp:ListItem>
                        <asp:ListItem Value="2">活动</asp:ListItem>
                        <asp:ListItem Value="3">留言</asp:ListItem>
                        <asp:ListItem Value="4">问券调查</asp:ListItem>
                        <asp:ListItem Value="5">统计</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td  align="left" style="background-color: #F0F6FC" >
                    <strong>项目名称：</strong>&nbsp;
                    <br />
                    例如：文章、软件、图片、商品&nbsp;
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="TxtItemName" runat="server" Width="156" MaxLength="20" /><font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtItemName"
                        ErrorMessage="RequiredFieldValidator">项目名称不能为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td  align="left" style="background-color: #F0F6FC" >
                    <strong>项目单位：</strong>&nbsp;
                    <br />
                    例如：篇、个、张、件&nbsp;
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="TxtItemUnit" runat="server" Width="156" MaxLength="20" /><font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtItemUnit"
                        ErrorMessage="RequiredFieldValidator">项目单位不能为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td  align="left" style="background-color: #F0F6FC" >
                    <strong>项目图标：</strong>&nbsp;
                    <br />
                    图标存放在~/Images/ModelIcon/目录下
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="TxtItemIcon" Text="Default.gif" runat="server" Width="156" MaxLength="20" />
                    <asp:Image ID="ImgItemIcon" runat="server" ImageUrl="~/Images/ModelIcon/Default.gif" />
                    <=<asp:DropDownList ID="DrpItemIcon" runat="server" />
                </td>
            </tr>
            <tr class="tdbg">
                <td  align="left" style="background-color: #F0F6FC" >
                    <strong style="background-color: #F0F6FC" >模型描述：</strong>&nbsp;
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Width="365px"
                        Height="43px" />
                </td>
            </tr>
            <tr class="tdbgbottom">
                <td colspan="2">
                    <asp:HiddenField ID="HdnModelId" runat="server" />
                    <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" CssClass="button" runat="server" />
                    &nbsp;&nbsp;
                    <input name="Cancel" type="button" class="button" id="Cancel" value="返回模型列表"
                        onclick='window.location.href="pubModel.aspx?nid=<%=Request.QueryString["nid"] %>";' />
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        function ChangeImgItemIcon(icon) {
            document.getElementById("<%= ImgItemIcon.ClientID %>").src = "../../Images/ModelIcon/" + icon;
        }
        function ChangeTxtItemIcon(icon) {
            document.getElementById("<%= TxtItemIcon.ClientID %>").value = icon;
        }
    </script>

    </form>
</body>
</html>
