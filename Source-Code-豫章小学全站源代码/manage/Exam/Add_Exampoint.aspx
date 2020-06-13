<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_Add_Exampoint, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加考点</title>
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
    <script type="text/javascript" src="../../../JS/Dialog.js"></script>  
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
<span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>
        &gt;&gt;<a href="Add_ExamPoint.aspx?AdminId=<%=AdminID%>">添加考点</a></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加考点"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="考点名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Regulationame" runat="server" class="l_input" Width="200px"></asp:TextBox>
                  
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
<%--                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label14" runat="server" Text="上级考点："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                <asp:DropDownList ID="ddpoint" runat="server" ></asp:DropDownList>
                </td>--%>
            </tr>
                  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="添加时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtCoureTime" runat="server" class="l_input" Width="200px" onclick="calendar()" ></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label15" runat="server" Text="排序："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_End" runat="server" class="l_input" Width="50px"></asp:TextBox>
                </td>
            </tr>
          
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加考点" runat="server" onclick="EBtnSubmit_Click" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" 
                    UseSubmitBehavior="False"  CausesValidation="False" onclick="BtnBack_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
