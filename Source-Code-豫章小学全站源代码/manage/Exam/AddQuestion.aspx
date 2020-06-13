<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_Question_AddQuestion, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>编辑试题</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script src="../Common/Common.js" type="text/javascript"></script>

    <script src="/JS/calendar.js" type="text/javascript"></script>

    <script src="/JS/RiQi.js" type="text/javascript"></script>

    <script type="text/javascript">
        var aid = 0;
        var showID = 0;
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1");
        var arrTabs = new Array("Tabs0", "Tabs1");
        function ShowTabss(SID) {
            if (SID != tID) {
                if (document.getElementById(arrTabTitle[tID].toString()) != null)
                    document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                if (document.getElementById(arrTabTitle[SID].toString()) != null)
                    document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
                if (document.getElementById(arrTabs[tID].toString()) != null)
                    document.getElementById(arrTabs[tID].toString()).style.display = "none";
                if (document.getElementById(arrTabs[SID].toString()) != null)
                    document.getElementById(arrTabs[SID].toString()).style.display = "";
                tID = SID;
                aid = SID;
            }
        }
    </script>

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
        
        <span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt;<a href="QuestionManage.aspx">试题管理</a>
        &gt;&gt;<span><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
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
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr align="center">
                        <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)">
                            基本信息
                        </td>
                        <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)">
                            试题选项
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="试题标题："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtP_title" runat="server" class="l_input" Width="434px"></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="试题标题不能为空!"
                        ControlToValidate="txtP_title"></asp:RequiredFieldValidator>
                    <asp:HiddenField ID="hfC_Id" runat="server" Value="" />
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="zt_txt" runat="server" Text="分类："></asp:Label>
                    &nbsp;
                </td>
                <td>
             <%--       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>--%>
                            <asp:TextBox ID="txtC_Class" class="l_input" Enabled="false" runat="server"></asp:TextBox>
                            <asp:HiddenField ID="hfC_ClassId" runat="server" />
                            <asp:Button ID="btnSelect" class="C_input" runat="server" Text="选择" CausesValidation="False"
                                OnClick="btnSelect_Click" />
                            &nbsp;<font color="red">*</font>
                            <asp:TreeView ID="tvClass" runat="server" OnSelectedNodeChanged="tvClass_SelectedNodeChanged">
                            </asp:TreeView>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="试题分类不能为空!"
                                ControlToValidate="txtC_Class"></asp:RequiredFieldValidator>
                     <%--   </ContentTemplate>
                    </asp:UpdatePanel>--%>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="难度："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                <div style="width:auto; float:left">
                    <asp:RadioButtonList ID="rblDiff" runat="server" RepeatDirection="Horizontal" Height="22px"
                        Width="277px">
                        <asp:ListItem Selected Value="1">基础</asp:ListItem>
                        <asp:ListItem Value="2">容易</asp:ListItem>
                        <asp:ListItem Value="3">中等</asp:ListItem>
                        <asp:ListItem Value="4">偏难</asp:ListItem>
                        <asp:ListItem Value="5">极难</asp:ListItem>
                    </asp:RadioButtonList>
                    </div>
                    <div style="width:auto; float:left">
                    <font color="red">*</font>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="难度不能为空!"
                        ControlToValidate="rblDiff"></asp:RequiredFieldValidator>
                        </div>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label6" runat="server" Text="题型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddlType" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtAddType" class="l_input" runat="server"></asp:TextBox>
                    <asp:Button ID="btnAddType" runat="server" Text="添加题型" class="C_input" CausesValidation="False"
                        OnClick="btnAddType_Click" />
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="题型不能为空!"
                        ControlToValidate="ddlType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label7" runat="server" Text="所属试卷："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddPaper" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtAddPaper" class="l_input" runat="server" Visible="False"></asp:TextBox>
                    <asp:Button ID="btnAddPaper" runat="server" Text="添加试卷" class="C_input" CausesValidation="False"
                        OnClick="btnAddPaperr_Click" />
                </td>
            </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="试题内容："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtP_Content" runat="server" class="l_input" TextMode="MultiLine"
                        Height="152px" Width="380px"></asp:TextBox>
<script id="headscript" type="text/javascript">
    CKEDITOR.replace('txtP_Content',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2
    //toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
</script>
                </td>
            </tr>

             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label8" runat="server" Text="排序："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="Order" runat="server" CssClass="l_input">0</asp:TextBox>
                </td>
            </tr>
        </tbody>
        
        <tbody id="Tabs1" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="答案："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtAn" runat="server" class="l_input" TextMode="MultiLine" Height="152px"
                        Width="380px"></asp:TextBox>
                     <script id="Script1" type="text/javascript">
                         //<![CDATA[
                         CKEDITOR.replace('txtAn',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2
});
                         //]]>
</script>
                    
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="hits_txt" runat="server" Text="知识点："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddlKnow" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存试题" OnClick="EBtnSubmit_Click"
                    runat="server" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回" OnClick="BtnBack_Click"
                    UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
