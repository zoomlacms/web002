<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.UserBase, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>基本信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../Common/Common.js" type="text/javascript"></script>
<script src="../Common/Common.js" type="text/javascript"></script>
<script src="../../Common/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<span id="YourPosition"><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt; <a href="UserInfo.aspx">账户管理</a> &gt;&gt;基本信息</span>
</div>
<div class="us_seta" style="margin-top: 10px; width: 100%; float: left" id="manageinfos" runat="server">
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    </div>
    <div class="us_seta" style="margin-top: 10px; width: 100%; float: left" id="manageinfo"
        runat="server">
        <h1 style="text-align: center">
            基本信息</h1>
        <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
            <tr>
                <td class="tdbgleft" colspan="4">
                    <table id="DivCompany" runat="server" style="border-collapse: collapse; display: none"
                        cellspacing="1" cellpadding="2" width="100%" border="0">
                        <tr>
                            <td class="tdbgleft">
                                <strong>企业名称：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCompanyName" class="input1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdbgleft">
                                <strong>企业简介：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCompanyDescribe" class="input1" runat="server" TextMode="MultiLine"
                                    Height="60"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    真实姓名：
                </td>
                <td style="line-height: 30px; text-align: left">
                    <asp:TextBox ID="tbTrueName" runat="server"></asp:TextBox>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    昵称：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="txtHonName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    出生日期：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbBirthday" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    办公电话：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbOfficePhone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbOfficePhone"
                        ErrorMessage="请输入数字！" Display="Dynamic" ValidationExpression="^\d+(\d+)?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    家庭电话：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbHomePhone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="tbHomePhone"
                        ErrorMessage="请输入数字！" Display="Dynamic" ValidationExpression="^\d+(\d+)?$"></asp:RegularExpressionValidator>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    传真：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbFax" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^\d+(\d+)?$"
                        ControlToValidate="tbFax" ErrorMessage="只能输入整数"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    手机号码：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^1[(0-9)]{10}$"
                        ControlToValidate="tbMobile" ErrorMessage="按照手机号规则输入"></asp:RegularExpressionValidator>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    小灵通：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbPHS" runat="server"></asp:TextBox>
                    <%--  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator6" ValidationExpression="^\d+(\d+)?$"
                        ControlToValidate="tbPHS" ErrorMessage="只能输入整数"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    联系地址：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbAddress" runat="server" Columns="30"></asp:TextBox>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    邮政编码：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbZipCode" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator7" ValidationExpression="\d{6}"
                        ControlToValidate="tbZipCode" ErrorMessage="只能输入正确的邮政编码"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    身份证号码：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbIDCard" runat="server" Columns="30"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" ValidationExpression="(^\d{15}$)|(^\d{17}([0-9]|X)$)"
                        ControlToValidate="tbIDCard" ErrorMessage="请输入正确身份证号"></asp:RegularExpressionValidator>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    个人主页：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbHomepage" runat="server" Columns="30">http://</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    QQ号码：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbQQ" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ValidationExpression="^[0-9]*$"
                        ControlToValidate="tbQQ" ErrorMessage="只接受数字输入"></asp:RegularExpressionValidator>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    ICQ号码：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbICQ" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator9" ValidationExpression="^[0-9]*$"
                        ControlToValidate="tbICQ" ErrorMessage="只接受数字输入"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    MSN账号：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbMSN" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator10"
                        ValidationExpression="^[0-9]*$" ControlToValidate="tbMSN" ErrorMessage="只接受数字输入"></asp:RegularExpressionValidator>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    雅虎通账号：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbYahoo" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator11"
                        ValidationExpression="^[0-9]*$" ControlToValidate="tbYahoo" ErrorMessage="只接受数字输入"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    UC账号：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbUC" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator12"
                        ValidationExpression="^[0-9]*$" ControlToValidate="tbUC" ErrorMessage="只接受数字输入"></asp:RegularExpressionValidator>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    性别：
                </td>
                <td style="line-height: 30px">
                    <asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
                        <asp:ListItem Value="0">女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    头像地址：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbUserFace" runat="server" Text="/Images/userface/noface.gif"></asp:TextBox>&nbsp;
                    <select size="1" name="myface" onchange="document.images['face'].src=options[selectedIndex].value;document.getElementById('tbUserFace').value=options[selectedIndex].value;options[selectedIndex].selected=true;">
                        <option value="/Images/userface/1.gif">01.gif</option>
                        <option value="/Images/userface/2.gif">02.gif</option>
                        <option value="/Images/userface/3.gif">03.gif</option>
                        <option value="/Images/userface/4.gif">04.gif</option>
                        <option value="/Images/userface/5.gif">05.gif</option>
                        <option value="/Images/userface/6.gif">06.gif</option>
                        <option value="/Images/userface/7.gif">07.gif</option>
                        <option value="/Images/userface/8.gif">08.gif</option>
                        <option value="/Images/userface/9.gif">09.gif</option>
                        <option value="/Images/userface/10.gif">10.gif</option>
                        <option value="/Images/userface/11.gif">11.gif</option>
                        <option value="/Images/userface/12.gif">12.gif</option>
                        <option value="/Images/userface/13.gif">13.gif</option>
                        <option value="/Images/userface/14.gif">14.gif</option>
                        <option value="/Images/userface/15.gif">15.gif</option>
                        <option value="/Images/userface/16.gif">16.gif</option>
                        <option value="/Images/userface/17.gif">17.gif</option>
                        <option value="/Images/userface/18.gif">18.gif</option>
                        <option value="/Images/userface/19.gif">19.gif</option>
                        <option value="/Images/userface/20.gif">20.gif</option>
                    </select>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    头像预览
                </td>
                <td style="line-height: 30px">
                    <asp:Image ID="face" runat="server" Height="111" Width="111" ImageUrl="~/Images/userface/noface.gif" />
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    头像宽度：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbFaceWidth" runat="server">111</asp:TextBox>
                </td>
                <td style="float: left; line-height: 30px; text-align: right;">
                    头像高度：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbFaceHeight" runat="server">111</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="float: left; line-height: 30px; text-align: right">
                    签名档：
                </td>
                <td style="line-height: 30px">
                    <asp:TextBox ID="tbSign" runat="server" class="input1" TextMode="MultiLine" Width="300"
                        Height="60"></asp:TextBox>
                </td>
                <td style="float: left; line-height: 30px; text-align: right">
                    隐私设定：
                </td>
                <td style="line-height: 30px">
                    <asp:RadioButtonList ID="tbPrivacy" runat="server">
                        <asp:ListItem Selected="True" Value="0">公开信息</asp:ListItem>
                        <asp:ListItem Value="1">只对好友公开</asp:ListItem>
                        <asp:ListItem Value="2">完全保密</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
            <tr>
                <td style="width: 100%; line-height: 30px; text-align: center" colspan="4">
                    <asp:Button ID="btnEdit" Text="  编辑  " runat="server" onclick="btnEdit_Click" />&nbsp;<asp:Button ID="btnSave" runat="server" Text="保存信息" Width="90px" OnClick="btnSave_Click"  TabIndex="12" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>