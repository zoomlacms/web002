<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.UserPassModify, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>修改密码</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
 <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> 
修改<asp:Label ID="LblUserName" runat="server" Text="Label"></asp:Label>的信息</div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" >
            <tr class="tdbg">
                <td style="width: 15%; height: 25px;" align="right">
                    用户名：</td>
                <td style="width: 85%; height: 25px;" align="left">
                    <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="width: 15%; height: 25px;" align="right">
                    新密码：</td>
                <td style="width: 85%; height: 25px;" align="left">
                    <asp:TextBox ID="tbNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                    如果不修改密码，请不要输入新密码和确认密码</td>
            </tr>
            <tr class="tdbg">
                <td style="width: 15%; height: 25px;" align="right">
                    新密码确认：</td>
                <td style="width: 85%; height: 25px;" align="left">
                    <asp:TextBox ID="tbConPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="新密码和确认密码必须一样"
                        ControlToValidate="tbConPwd" ControlToCompare="tbNewPwd"></asp:CompareValidator></td>
            </tr>
            <tr class="tdbg">
                <td style="width: 15%;" align="right">
                    Email：</td>
                <td style="width: 85%" align="left">
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail"
                        Display="Dynamic" ErrorMessage="Email地址不能为空"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail"
                        Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                        Visible="False"></asp:RegularExpressionValidator></td>
            </tr>
            <tr class="tdbg">
                <td style="width: 15%;" align="right">
                    提示问题：</td>
                <td style="width: 85%" align="left">
                    <asp:TextBox ID="tbQuestion" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%" border="0" cellpadding="0" cellspacing="1">
                    
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                剩余资金：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="txtMoney" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 15%; height: 22px" align="right">
                                用户积分：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="txtPoint" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td  style="width: 15%; height: 22px" align="right">
                                点券：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="txtUserPoint" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 15%; height: 22px" align="right">
                                有效期截止时间：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="txtDeadLine" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                卖家积分：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="txtboffExp" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 15%; height: 22px" align="right">
                                消费积分：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="txtConsumeExp" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                提示问题答案：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbAnswer" runat="server"></asp:TextBox><span style="color: red">*</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAnswer"
                                    ErrorMessage="提示答案不能为空"></asp:RequiredFieldValidator></td>
                            <td style="width: 15%; height: 22px" align="right">
                                所属会员组：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:DropDownList ID="DDLGroup" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                真实姓名：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbTrueName" runat="server"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                性别：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
                                    <asp:ListItem Value="0">女</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                出生日期：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbBirthday" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                办公电话：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbOfficePhone" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                家庭电话：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbHomePhone" runat="server"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                传真：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbFax" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                手机号码：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                小灵通：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbPHS" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                联系地址：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbAddress" runat="server" Columns="40"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                邮政编码：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbZipCode" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                身份证号码：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbIDCard" runat="server" Columns="40"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                个人主页：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbHomepage" runat="server" Columns="40">http://</asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                QQ号码：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbQQ" runat="server"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                ICQ号码：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbICQ" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                MSN账号：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbMSN" runat="server"></asp:TextBox></td>
                            <td  style="width: 15%; height: 22px" align="right">
                                雅虎通账号：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbYahoo" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                UC账号：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbUC" runat="server"></asp:TextBox></td>
                            <td style="width: 15%; height: 26px;" align="right">
                                头像地址：</td>
                            <td style="width: 35%; height: 26px;" align="left">
                                <asp:TextBox ID="tbUserFace" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                头像宽度：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbFaceWidth" runat="server">16</asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                头像高度：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbFaceHeight" runat="server">16</asp:TextBox></td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 15%; height: 22px" align="right">
                                签名档：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:TextBox ID="tbSign" runat="server" class="input1" TextMode="MultiLine" Width="253px"
                                    Height="60"></asp:TextBox></td>
                            <td style="width: 15%; height: 22px" align="right">
                                隐私设定：</td>
                            <td style="width: 35%; height: 22px" align="left">
                                <asp:RadioButtonList ID="tbPrivacy" runat="server">
                                    <asp:ListItem Selected="True" Value="0">公开信息</asp:ListItem>
                                    <asp:ListItem Value="1">只对好友公开</asp:ListItem>
                                    <asp:ListItem Value="2">完全保密</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HiddenField ID="HdnUserID" runat="server" />
                    <asp:Button ID="BtnSubmit" runat="server" CssClass="button"  Text="修 改" OnClick="BtnSubmit_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="返 回"   CssClass="button" 
                        class="inputbutton" onclick="Button1_Click" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
