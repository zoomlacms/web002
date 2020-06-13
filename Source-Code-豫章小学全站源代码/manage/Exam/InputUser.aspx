<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_InputUser, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>导入用户</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script src="/JS/RiQi.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            background: #e0f7e5; /*line-height: 120%;*/
            padding: 2px;
            width: 15%;
        }
        .style2
        {
            width: 339px;
        }
        .style3
        {
            height: 25px;
            width: 339px;
        }
        .style4
        {
            height: 22px;
            width: 339px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt; <span>教师管理</span> &gt;&gt;
        <span>培训资料库</span> &gt;&gt; <span><a href="InputUser.aspx">导入学员资料</a></span>
    </div>
    <div class="clearbox">
    </div>
    <div class="border">
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="4" class="spacingtitle" align="center">
                    会员导入
                </td>
            </tr>
            <tr class="tdbg">
                <td width="220" align="right" class="tdbgleft" style="width: 15%; height: 22px;">
                    选择文件：
                </td>
                <td align="left" class="style3" colspan="3">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
                </td>
            </tr>
            <tr class="tdbg">
                <td width="220" align="right" class="tdbgleft" style="width: 15%; height: 22px;">
                    说明：
                </td>
                <td align="left" class="style3" colspan="3">
                    <asp:TextBox ID="txt_infos" runat="server" TextMode="MultiLine" Height="113px" 
                        Width="402px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table width="100%" border="0" class="tdbg" cellpadding="0" cellspacing="1">
            <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="Button1" runat="server" Text="导入" CssClass="C_input" OnClick="Button1_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" class="C_input" runat="server" Text="取　消" Width="70px"
                        OnClientClick="parent.Dialog.close();return false;" TabIndex="13" />
                </td>
            </tr>
        </table>
    </div>
    状态：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
