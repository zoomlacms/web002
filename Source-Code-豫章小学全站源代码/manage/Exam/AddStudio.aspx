<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddStudio, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>编辑试题</title>
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
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt; <a href="StudioManage.aspx">学员管理</a>
        &gt;&gt;<span> <asp:Label ID="Label2" runat="server" Text="添加学员"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加学员"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="学员姓名："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Stuname" runat="server" class="l_input" Width="200px">
                    </asp:TextBox>
                    &nbsp;<font color="red">*</font>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label9" runat="server" Text="登录密码："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Stupassword" runat="server" class="l_input" Width="200px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Stucardnotxt" runat="server" Text="考号："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:TextBox ID="txt_Stucardno" runat="server" class="l_input" Width="200px">
                    </asp:TextBox>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label11" runat="server" Text="所在组别："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="txt_Stugroup" runat="server">
                        <asp:ListItem>学生</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label12" runat="server" Text="监管人："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Regulation" runat="server" class="l_input" Width="100px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label14" runat="server" Text="学习课程："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Course" runat="server" class="l_input" Width="200px">
                    </asp:TextBox>
                    参加培训课程
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label16" runat="server" Text="启用时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Addtime" runat="server" class="l_input" Width="200px" onclick="calendar()">
                    </asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label10" runat="server" Text="到期有效时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Exptime" runat="server" class="l_input" Width="200px" onclick="calendar()">
                    </asp:TextBox>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加学员" runat="server" onclick="EBtnSubmit_Click" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" UseSubmitBehavior="False"
                    CausesValidation="False" onclick="BtnBack_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
