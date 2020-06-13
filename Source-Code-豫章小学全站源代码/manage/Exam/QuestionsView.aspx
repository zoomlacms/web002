<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_QuestionsView, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>查看试题</title>
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
<div class="r_navigation">
        
    <span>后台管理</span> &gt;&gt;&nbsp;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt; &nbsp;<span><a href="QuestionManage.aspx">试题管理</a></span>&nbsp;&gt;&gt; &nbsp;<span>浏览试题</span>
    </div>
   
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
        <td class="spacingtitle">
            浏览试题
        </td>
    </tr>
</table>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">       
    <tbody  id="Tabs0">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="ssjd_txt" runat="server" Text="试题标题："></asp:Label>
                &nbsp;
            </td>
            <td >
                <asp:Label ID="txtP_title" runat="server" Text=""></asp:Label>
                <asp:HiddenField ID="hfId" runat="server" />
                </td>
        </tr>
            <tr id="content1" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="Label3" runat="server" Text="试题内容："></asp:Label>
                &nbsp;
            </td>
            <td >
                <asp:Label ID="txtP_Content" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        <tr id="shipin" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="Label1" runat="server" Text="视频路径："></asp:Label>
                &nbsp;
            </td>
            <td >
                <asp:Label ID="txtP_Shipin" runat="server" Text=""></asp:Label>
                </td>
        </tr>              
            <tr id="difficult" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="Label5" runat="server" Text="难度："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:Label ID="rblDiff" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        <tr id="type" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="Label6" runat="server" Text="题型："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:Label ID="ddlType" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        </tbody>
        <tbody id="Tabs1" runat="server">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="Label4" runat="server" Text="答案："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:Label ID="txtAn" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="hits_txt" runat="server" Text="知识点："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:Label ID="txtKnowledge" runat="server" Text=""></asp:Label>
                </td>
        </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 20%" align="right">
                <asp:Label ID="Label2" runat="server" Text="说明："></asp:Label>
                &nbsp;
            </td>
            <td class="bqright">
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        </tbody>
    <tr class="tdbgbottom">
        <td colspan="2">
            <asp:Button ID="EBtnSubmit" class="C_input" Text="修改试题" OnClick="EBtnSubmit_Click" runat="server" />
            &nbsp;
            <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返　回" OnClick="BtnBack_Click" UseSubmitBehavior="False" CausesValidation="False" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
