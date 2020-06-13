<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_Question_AddQuestionForType, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加试题</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="../Common/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>
        &gt;&gt;<a href="QuestionManage.aspx">试题管理</a> &gt;&gt;<span>
            <asp:Label ID="Label2" runat="server" Text="添加试题"></asp:Label>
        </span>
    </div>
    <div class="clearbox">
    </div>
    <table style="width: 100%; height: 536px" align="center">
        <tr>
            <td style="text-align: center">
                <table style="width: 50%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 142px;">
                                <tr align="center">
                                    <td class="tdbg">
                                        选择分类：
                                        <asp:DropDownList ID="classtype" runat="server" CssClass="x_input">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="classtype"
                                            Display="Dynamic" ErrorMessage="试题类型不能为空！"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button1" runat="server" Text="下一步" CssClass="C_input" OnClick="Button1_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
