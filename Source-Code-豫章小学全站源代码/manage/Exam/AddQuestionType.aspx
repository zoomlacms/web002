<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddQuestionType, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>题型管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt;<a href="AddQuestionType.aspx">题型管理</a>
    &gt;&gt;<asp:Literal ID="liQuestionType" runat="server"></asp:Literal><span></div>
<div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加题型"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_name" runat="server" class="l_input" Width="200px" ></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="名称不能为空!" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="题型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                 <asp:DropDownList ID="ddType" runat=server>
             <%--     //单选,多选,判断，填空,问答,组合--%>
                    <asp:ListItem Value="1">单选题</asp:ListItem>
                    <asp:ListItem Value="2">多选题</asp:ListItem>
                    <asp:ListItem Value="3">判断题</asp:ListItem>
                    <asp:ListItem Value="4">填空题</asp:ListItem>
                    <asp:ListItem Value="5">问答题</asp:ListItem>
                    <asp:ListItem Value="6">组合题</asp:ListItem>
                 </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label2" runat="server" Text="说明："></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtRemark" runat="server" class="l_input" TextMode="MultiLine" Height="123px" Width="306px"></asp:TextBox>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="hftid" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" onclick="EBtnSubmit_Click"/>&nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClientClick="location.href='QuestionTypeManage.aspx';return false;" UseSubmitBehavior="False"  CausesValidation="False" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
