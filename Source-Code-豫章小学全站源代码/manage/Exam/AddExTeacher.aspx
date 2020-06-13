<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddExTeacher, App_Web_f1ffu1ce" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>添加教师</title>
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
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt;<a href="ExTeacherManage.aspx">教师管理</a>
    &gt;&gt;<asp:Literal ID="liCoures" runat="server"></asp:Literal><span></div>
<div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加教师"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">教师名称： &nbsp;</td>
                <td class="bqright">
                    <asp:TextBox ID="txt_name" runat="server" class="l_input" Width="200px"></asp:TextBox> &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="教师名称不能为空!" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">教师分类：</td>
                <td class="bqright">
                    <asp:HiddenField ID="hfid" runat="server"  />
                      <asp:TextBox ID="txtClassname" runat='server' class="l_input"></asp:TextBox>
                        <input id="Button1" type="button" value="选择分类" onclick="Openwin();void(0)" class="C_input" /> <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="教师分类不能为空!" ControlToValidate="txtClassname"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="教师职位："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Post" runat="server" class="l_input" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="教师职位不能为空!" ControlToValidate="txt_Post"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="教师授课："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Teach" runat="server" class="l_input" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="教师授课不能为空!" ControlToValidate="txt_Teach"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="txt" runat="server" Text="教师图片："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                <asp:TextBox ID="txtpic" runat='server' class="l_input"></asp:TextBox>
                      <asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;" onpaste="return false" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label2" runat="server" Text="教师信息："></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <textarea runat="server" id="textarea1" style="width:100%;height:300px;visibility:hidden;" ></textarea>

                <script type="text/javascript">
                    KE.show({
                        id: 'textarea1'
                    });
                </script>

                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="hftid" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" onclick="EBtnSubmit_Click"/> &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClientClick="location.href='ExTeacherManage.aspx';return false;" UseSubmitBehavior="False"  CausesValidation="False" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
