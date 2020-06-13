<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_EditCourese, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>学员管理</title>
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
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; 在线考试系统 &gt;&gt; <a href="StudioManage.aspx">
            学员管理</a> &gt;&gt;<span>
                <asp:Label ID="Label2" runat="server" Text="添加学员"></asp:Label></span>
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
                    <asp:TextBox ID="txt_Stupassword" runat="server" TextMode="Password" class="l_input" Width="200px">
                    </asp:TextBox>&nbsp;为空则不修改密码
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Stucardnotxt" runat="server" Text="班级："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ClassID" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>

            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label11" runat="server" Text="状态："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="txt_State" runat="server">
                        <asp:ListItem>审核</asp:ListItem>
                        <asp:ListItem>未审核</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label12" runat="server" Text="是否付款："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="PayMent" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">未付款</asp:ListItem>
                        <asp:ListItem Value="1">已付款</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label16" runat="server" Text="申请时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Addtime" runat="server" onclick="calendar()" class="l_input" Width="200px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label10" runat="server" Text="备注："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Remark" runat="server" class="l_input" Width="388px" 
                        Height="155px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加学员" runat="server" OnClick="EBtnSubmit_Click" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" UseSubmitBehavior="False"
                    CausesValidation="False" OnClick="BtnBack_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
