<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddCoures, App_Web_f1ffu1ce" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>添加课程</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/pacalendar.js" type="text/javascript"></script> 
<script type="text/javascript" src="../../../JS/Dialog.js"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/chinese.js" type="text/javascript"></script>
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
    function Getpy(ontxt, id) {
        var str = document.getElementById(ontxt).value.trim();
        if (str == "") return;
        var arrRslt = makePy(str);
        if (arrRslt.length > 0) {
            document.getElementById(id).value = arrRslt.toString().toLowerCase();
        }
    }
    
  
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt;<a href="CoureseManage.aspx">课程管理</a>
    &gt;&gt;<asp:Literal ID="liCoures" runat="server"></asp:Literal><span></div>
<div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加课程"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="课程名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Courename" runat="server" class="l_input" Width="200px" onkeyup="Getpy('txt_Courename','PYtitle')" ></asp:TextBox>
                      <span id="span_txtTitle" name="span_txtTitle"></span>
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="课程名称不能为空!" ControlToValidate="txt_Courename"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="课程缩写："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="PYtitle" runat="server" class="l_input" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="课程缩写不能为空!" ControlToValidate="PYtitle"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="课程代码："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Code" runat="server" class="l_input" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="课程代码不能为空!" ControlToValidate="txt_Code"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label9" runat="server" Text="课程分类："></asp:Label> 
                </td>
                <td class="bqright">
                    <asp:HiddenField ID="hfid" runat="server"  />
                      <asp:TextBox ID="txtClassname" runat='server' class="l_input"></asp:TextBox>
                        <input id="Button1" type="button" value="选择分类" onclick="Openwin();void(0)" class="C_input" /> <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="课程分类不能为空!" ControlToValidate="txtClassname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="txt" runat="server" Text="课程学分："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Creidt" runat="server" class="l_input" Width="100px"></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="是否热门："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="rblHot" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                        <asp:ListItem Value="1">是</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label2" runat="server" Text="课程简介："></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtRemark" runat="server" class="l_input" TextMode="MultiLine" Height="123px" Width="306px"></asp:TextBox>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="coureId" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" onclick="EBtnSubmit_Click"/>
                &nbsp;
                  <asp:Button ID="Button2" class="C_input" Text="试听文件" runat="server" CausesValidation="false" />
                 &nbsp;
                  <asp:Button ID="Button3" class="C_input" Text="下一步" runat="server" CausesValidation="false" />
                 &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClientClick="location.href='CoureseManage.aspx';return false;" UseSubmitBehavior="False"  CausesValidation="False" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
