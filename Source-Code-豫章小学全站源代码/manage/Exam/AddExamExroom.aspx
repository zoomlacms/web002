<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="manage_Question_AddExamExroom, App_Web_f1ffu1ce" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>添加组别</title>
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
    <script type="text/javascript" src="../../js/Drag.js"></script>
    <script type="text/javascript" src="../../js/Dialog.js"></script>
    <script type="text/javascript">
        function openurls(url) {
            Dialog.open({ URL: url });
        }

        function open_Paper() {
            var diag = new Dialog();
            diag.Width = 760;
            diag.Height = 500;
            diag.Title = "选择试卷<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "AddPaper.aspx";
            diag.show();
        }


        function open_Studio() {
            var diag = new Dialog();
            diag.Width = 600;
            diag.Height = 400;
            diag.Title = "添加考生<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "SelectStudio.aspx";
            diag.show();
        }

        function opentitle(url, title) {
            var diag = new Dialog();
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = title;
            diag.URL = url;
            diag.show();
        }

        function closdlg() {
            Dialog.close();
        }


        function deleteselectoption() {
            if (document.getElementById("txt_Stuidlist")) {
                if (document.getElementById("txt_Stuidlist").options.length > 0) {
                    for (var i = 0; i < document.getElementById("txt_Stuidlist").options.length; i++) {
                        if (document.getElementById("txt_Stuidlist").options[i].selected) {
                            var index = document.getElementById("txt_Stuidlist").options[i].selectedIndex;
                            document.getElementById("txt_Stuidlist").options.remove(index);
                        }
                    }
                }
            }
        }

        function deletepage() {
            var mainright = window.top.main_right;
            var txt_Exarinfo = document.getElementById("Exarinfo");
            var pageidtxt = document.getElementById("pageid");
            pageidtxt.value = "";
            txt_Exarinfo.innerHTML = "";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>
        &gt;&gt; <asp:Literal ID="Literal1" runat="server" Text="添加考场"></asp:Literal>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加考场"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="考场名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_RoomName" runat="server" class="l_input" Width="200px"></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label9" runat="server" Text="考试开始时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Starttime" runat="server" class="l_input" Width="160px" onclick="calendar()"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Ratednumber_name" runat="server" Text="考试结束时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Endtime" runat="server" class="l_input" Width="160px" onclick="calendar()"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label12" runat="server" Text="模板试卷："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <div id="Exarinfo" name="Exarinfo"></div>
                    <asp:HiddenField ID="pageid" runat="server" />
                    <asp:Button ID="Button2" runat="server" Text="选择试卷" CssClass="C_input" OnClientClick="open_Paper();return false;" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label14" runat="server" Text="添加时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_AddTime" runat="server" class="l_input" Width="160px" onclick="calendar()"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <a href="javascript:void(0)" onclick="open_Studio()" style="color: Red">添加考生</a>：<br />
                    (点击上面红色位置选择考生) <br />
                    <asp:Button ID="Button1" runat="server" Text="删除考生" CssClass="C_input" OnClientClick="deleteselectoption();return false;" CausesValidation="false" />
                </td>
                <td class="bqright">
                    <asp:ListBox ID="txt_Stuidlist" runat="server" Width="220px" Height="200px" 
                        CssClass="x_input" SelectionMode="Multiple">
                    </asp:ListBox>
                   
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
             
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加考场" runat="server" 
                    onclick="EBtnSubmit_Click" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" UseSubmitBehavior="False"
                    CausesValidation="False" OnClick="BtnBack_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
