<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Add_Papers_System, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>编辑试卷信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../Common/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
   
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt;<a href="Papers_System_Manage.aspx">在线考试系统</a>
        &gt;&gt;<span> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="试卷名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtPaperName" runat="server" class="l_input"  Height="21px" 
                        Width="384px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="试卷不能为空!" ControlToValidate="txtPaperName"></asp:RequiredFieldValidator>
                    <asp:HiddenField ID="hfC_Id" runat="server" Value="" />
                </td>
            </tr>
            <%-- <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="试卷题型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:DropDownList ID="ddStyle" runat='server'>
                    <asp:ListItem Value="1" Selected="True">网上考试</asp:ListItem>
                    <asp:ListItem Value="2">网上练习</asp:ListItem>
                    <asp:ListItem Value="3">网上作业</asp:ListItem>
                   </asp:DropDownList>
                </td>
            </tr>--%>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="阅卷类型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:DropDownList ID="ddRtyle" runat='server'>
                    <asp:ListItem Value="1" Selected="True">自动阅卷</asp:ListItem>
                    <asp:ListItem Value="2">手工阅卷</asp:ListItem>
                   </asp:DropDownList>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="出题方式："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:DropDownList ID="ddType" runat='server'>
                    <%--<asp:ListItem Value="1" Selected="True">固定试卷(手工)</asp:ListItem>--%>
                    <asp:ListItem Value="2" Selected="True">固定试卷(随机)</asp:ListItem>
                    <%--<asp:ListItem Value="3" >随机试卷</asp:ListItem>--%>
                   </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="zt_txt" runat="server" Text="所属类别："></asp:Label>
                    &nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="ddlC_ClassId" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label6" runat="server" Text="考试时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:TextBox ID="txtTime" runat="server"  class="l_input"></asp:TextBox>分钟
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label7" runat="server" Text="有效时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:TextBox ID="txtBegionTime" runat="server"  OnFocus="setday(this)"  class="l_input"></asp:TextBox>至
                    <asp:TextBox ID="txtEndTime" runat="server"  OnFocus="setday(this)"  class="l_input"></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="说明："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" Height="90px"  class="l_input"
                        Width="400px"></asp:TextBox>
                </td>
            </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
               <asp:Button ID="EBtnSubmit" class="C_input" Text="保存试卷" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClick="BtnBack_Click" UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
   
</body>
</html>
