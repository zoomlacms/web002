<%@ page language="C#" autoeventwireup="true" inherits="_3D_sMail, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>Send E-Mail</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">      
        <div class="clearbox"></div>
        <div><asp:HiddenField ID="HiddenField2" runat="server" />
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr>
                    <td align="center" colspan="2" class="spacingtitle"><b>Send E - Mail to Supplier</b></td>
                </tr>
                <tr class="tdbg">
                    <td width="15%" align="right" class="tdbgleft"><strong>Supplier's E-Mail：</strong></td>
                    <td>
                        <table>
                            <tr>
                            <td>
                            <table>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                        OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Visible="False">
                                        <asp:ListItem>All</asp:ListItem>
                                        <asp:ListItem>Inquiries in alphabetical</asp:ListItem>
                                        <asp:ListItem>By the number of inquiries</asp:ListItem>
                                        <asp:ListItem>By adding the date of inquiry</asp:ListItem>
                                        <asp:ListItem>By the time the last query sent</asp:ListItem>
                                        <asp:ListItem>By the suffix-mail inquiries</asp:ListItem>
                                        <asp:ListItem>By subscription type</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList3" runat="server" Visible="false" AutoPostBack="True"
                                        OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" >
                                    </asp:DropDownList></td>
                                <td align="left">
                                    <asp:TextBox ID="txtType" runat="server"></asp:TextBox></td>
                                <td align="left">
                                    <asp:Panel ID="Panel1" Visible="false" runat="server" Width="300px" Height="20px">
                                        <asp:TextBox ID="txtStartTime" onfocus="setday(this)" runat="server"></asp:TextBox>
                                        ~
                                        <asp:TextBox ID="txtEndTime" onfocus="setday(this)" runat="server"></asp:TextBox>&nbsp;<br />
                                        &nbsp;
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtStartTime"
                                            ErrorMessage="Please enter the correct date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server"
                                            ControlToValidate="txtEndTime" ErrorMessage="Please enter the correct date" Operator="DataTypeCheck"
                                            Type="Date"></asp:CompareValidator></asp:Panel></td>
                                <td align="left">
								<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CausesValidation="false"  Text="Search" />
                                </td>
                                </tr>
                        </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5"><asp:TextBox ID="txtSend" Width="476px" Rows="10" runat="server" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSend"
                                        ErrorMessage="Not the recipient of information"></asp:RequiredFieldValidator></td>
                            </tr>
                        </table>
                    </td>
                </tr>                
                <tr class="tdbg">
                    <td align="right" class="tdbgleft"><strong>Subject：</strong></td>
                    <td>
                        <asp:TextBox ID="TxtSubject" runat="server" Width="400px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValrSubject" runat="server" ControlToValidate="TxtSubject"
                            Display="None" ErrorMessage="E-mail the subject can not be empty！"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tdbg">
                    <td align="right" class="tdbgleft"><strong>E-mail content：</strong></td>
                    <td>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <iframe id="infoeditor" src="../../editor/fckeditor_1.html?InstanceName=HiddenField1&Toolbar=Default" width="580px" height="550px" frameborder="no" scrolling="no"></iframe></td>
                </tr>
                <tr class="tdbg" runat="server" visible="false">
                    <td align="right" class="tdbgleft" width="15%"><strong>Signed：</strong></td>
                    <td><asp:DropDownList ID="ddlMailIdiograph" runat="server" DataTextField="Name" DataValueField ="Context"></asp:DropDownList></td>
                </tr>
                <tr class="tdbg" runat="server" id="haha">
                    <td align="right" class="tdbgleft"><strong>Send by:</strong></td>
                    <td>
                    <table>
                    <tr>
                    <td><asp:RadioButtonList ID="rblSendType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblSendType_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Send</asp:ListItem>
                        <asp:ListItem>From time to time send</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td id="td1" runat ="server" visible="false">
                        <asp:TextBox ID="txtSendTime" onfocus="setday(this)" Width="60px" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="ddlHour" runat="server">
                        </asp:DropDownList>hour<asp:DropDownList ID="ddlMinute" runat="server">
                        </asp:DropDownList>minute</td>
                    </tr>
                    </table>
                        </td>
                </tr>
                <tr class="tdbgbottom">
                    <td colspan="2">
                        <asp:Button ID="BtnSend" runat="server" Text="Send" Width="60px" OnClick="BtnSend_Click" />
                        &nbsp;&nbsp; &nbsp;
                        <input id="Reset1" type="reset" value=" Clear " width="60px" /></td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </form>
</body>
</html>