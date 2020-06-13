<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_AddStudioInfo, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>添加学员信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript" src="../../../JS/Dialog.js"></script>
<script language="javascript">
    function Openwin() {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Width = 400;
        diag.Height = 450;
        diag.Title = "选择分类";
        diag.URL = "SelecQuestionClass.aspx";
        diag.show();
    }
</script>
    <style type="text/css">
        .X_input
        {}
        .l_input
        {}
    </style>
</head>
<body>
<form id="form1" runat="server">


<div class="r_navigation">
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt;<a href="ExTeacherManage.aspx">培训资料库</a>
    &gt;&gt;<asp:Literal ID="liCoures" runat="server"></asp:Literal><span></div>
<div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加招生信息"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">学员姓名： &nbsp;</td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Studioname" runat="server" CssClass="l_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="招生人员不能为空!" ControlToValidate="txt_Studioname"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">预设用户名： &nbsp;</td>
                <td class="bqright">

                 <asp:TextBox ID="txt_PriorUserName" runat="server" CssClass="l_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="招生人员不能为空!" ControlToValidate="txt_PriorUserName"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">预设登录密码： &nbsp;</td>
                <td class="bqright">
                <asp:TextBox ID="txt_LogPassWord" runat="server" CssClass="l_input"></asp:TextBox>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">联系电话： &nbsp;</td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Tel" runat="server" CssClass="l_input" Width="184px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="联系电话不能为空!" ControlToValidate="txt_Tel"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">联系地址： &nbsp;</td>
                <td class="bqright">
                   <asp:TextBox ID="txt_Addinfo" runat="server" TextMode="MultiLine" 
                        CssClass="X_input" Height="57px" Width="267px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="联系地址不能为空!" ControlToValidate="txt_Addinfo"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">身份证号码： &nbsp;</td>
                <td class="bqright">
                   <asp:TextBox ID="txt_CradNo" runat="server" CssClass="l_input" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="身份证号码不能为空!" ControlToValidate="txt_CradNo"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">录入时间： &nbsp;</td>
                <td class="bqright">
                   <asp:TextBox ID="txt_WriteTime" runat="server" CssClass="l_input"></asp:TextBox>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">备注说明：</td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Remark" runat="server" TextMode="MultiLine" Height="81px" 
                        Width="296px"></asp:TextBox>
                </td>
            </tr>
            
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="hftid" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加信息" runat="server" onclick="EBtnSubmit_Click"/> &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClientClick="location.href='StudioInfoListByTech.aspx?id=16';return false;" UseSubmitBehavior="False"  CausesValidation="False" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>