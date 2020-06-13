<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_InputTechUser, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选择招生人员</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script>
        function closethiswin() {
            parent.Dialog.close();
        }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 400px" align="center">
        <tr>
            <td style="text-align: center">
                <table style="width: 80%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 142px;">
                                <tr align="center">
                                    <td class="tdbg">
                                        选择招生人员：
                                        <asp:DropDownList ID="EnrollUser" runat="server" CssClass="x_input">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EnrollUser"
                                            Display="Dynamic" ErrorMessage="请选择招生人员！"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button1" runat="server" Text="下一步" CssClass="C_input" OnClick="Button1_Click" />
                                        <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" OnClientClick="closethiswin();return false" />
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
