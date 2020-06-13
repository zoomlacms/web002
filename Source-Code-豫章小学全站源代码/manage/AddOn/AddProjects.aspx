<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AddProjects, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>新建项目</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.style2{background: #e0f7e5;padding: 2px;width: 30%;height: 25px;}
.style3{height: 25px;}
.style4{background: #e0f7e5;padding: 2px;height: 22px;}
.style5{height: 22px;}
.style6{width: 766px;}
</style>

<script language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3");
    function show1(SID) {

        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "block";
            tID = SID;
        }

        try {
            //parent.document.getElementById("main_right").height = document.body.offsetHeight;
        } catch (Error)
        { }
        //alert("tID" + tID);
    }
</script>

<script type="text/javascript" src="/js/Console.js"></script>
<script type="text/javascript" src="/js/Drag.js"></script>
<script type="text/javascript" src="/js/Dialog.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>

<script language="javascript">
    function Openwin1() {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Width = 800;
        diag.Height = 400;
        diag.Title = "选择负责人";
        diag.URL = "SelectProjects.aspx";
        diag.show();
    }
    function Openwin() {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Width = 800;
        diag.Height = 400;
        diag.Title = "选择客户";
        diag.URL = "SelectUserName.aspx";
        diag.show();
    }
</script>

<script language="javascript">
    function OpenProcess() {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Width = 800;
        diag.Height = 400;
        diag.Title = "导入流程";
        diag.URL = "InputProcess.aspx";
        diag.show();
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span>CRM应用</span>&nbsp;&gt;&gt;&nbsp;<span><a href="Projects.aspx">项目管理</a></span>&nbsp;&gt;&gt;&nbsp;<span>新建项目</span>
    </div>
    <div class="clearbox">
    </div>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 325px">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="show1(0)">
                基本资料
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="show1(1)">
                客户信息
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="show1(2)">
                项目需求
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="show1(3)">
                流程管理
            </td>
        </tr>
    </table>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>名称</b><br />
                    项目的名称
                </td>
                <td class="tdbg">
                    <asp:TextBox ID="TxtProjectName" runat="server" Width="300px" class="l_input"></asp:TextBox>
                    <font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RV" runat="server" ControlToValidate="TxtProjectName"
                        Display="Dynamic" ErrorMessage="*" ToolTip="项目名称必须填">项目名称不可为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>项目类型</b><br />
                    请选择项目类型
                </td>
                <td class="tdbg">
                    <asp:DropDownList ID="DDList" runat="server" Width="126px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 282px;">
                    <b>项目价格</b><br />
                    完成此项目的价格
                </td>
                <td>
                    ￥<asp:TextBox ID="TxtProjectPrice" runat="server" class="l_input" Width="112px"></asp:TextBox>．00<font
                        color="red">*</font>
                    <asp:RequiredFieldValidator ID="RvPrice" runat="server" ControlToValidate="TxtProjectPrice"
                        Display="Dynamic" ErrorMessage="*">价格不可为空</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="Rvr" runat="server" ControlToValidate="TxtProjectPrice" CultureInvariantValues="True"
                        Display="Dynamic" ErrorMessage="*" MaximumValue="9999999999999" MinimumValue="1"
                        Type="Double">价格格式不对</asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 282px;">
                    <b>项目经理</b>
                </td>
                <td>
                    <asp:TextBox ID="Leader" runat="server" class="l_input" Width="112px"></asp:TextBox>
                   <input id="Button3" type="button" value="选择负责人" onclick="Openwin1();void(0)"
                            class="C_input" />

                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 282px;">
                    <b>技术负责人</b>
                </td>
                <td>
                    <asp:TextBox ID="WebCoding" runat="server" class="l_input" Width="112px"></asp:TextBox>

                </td>
            </tr>
        </tbody>
        <tbody id="Tabs1" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 282px;">
                    <b>姓名</b><br />
                    申请人姓名
                </td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server" Width="124px" class="l_input"></asp:TextBox><font
                        color="red">*</font><input id="Button1" type="button" value="选择用户" onclick="Openwin();void(0)"
                            class="C_input" />
                    <asp:RequiredFieldValidator ID="RvName" runat="server" ControlToValidate="TxtUserName"
                        ErrorMessage="姓名不可为空" Display="Dynamic">姓名不可为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>单位</b><br />
                    申请人的工作单位
                </td>
                <td class="style6">
                    <asp:TextBox ID="TxtUserCompany" runat="server" Width="300px" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>联系电话</b><br />
                    申请人的常用电话
                </td>
                <td style="width: 766px;">
                    <asp:TextBox ID="TxtUserTel" runat="server" Width="188px" class="l_input"></asp:TextBox>(输入您的联系电话)
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>手机</b><br />
                    申请人的手机号码
                </td>
                <td align="left" valign="middle">
                    <asp:TextBox ID="TxtUserMobile" runat="server" Width="188px" class="l_input"></asp:TextBox>(输入您的11位手机号,方便与您联系)
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" valign="top">
                    <b>QQ</b><br />
                    申请人的QQ号码
                </td>
                <td>
                    <asp:TextBox ID="TxtUserQQ" runat="server" Width="188px" class="l_input"></asp:TextBox>
                    <asp:RangeValidator ID="RvQQ" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TxtUserQQ"
                        Display="Dynamic" MaximumValue="9999999999" MinimumValue="1111">QQ格式不对</asp:RangeValidator>
                    (请输入您的QQ号码4位-10位)
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" valign="top">
                    <b>MSN</b><br />
                    申请人MSN号码
                </td>
                <td>
                    <asp:TextBox ID="TxtUserMSN" runat="server" Width="188px" class="l_input"></asp:TextBox>
                    <asp:RangeValidator ID="RvMSN" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TxtUserMSN"
                        Display="Dynamic" MaximumValue="99999999999" MinimumValue="1">MSN格式不对</asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>联系地址</b><br />
                    申请人的居住地址
                </td>
                <td style="width: 766px;">
                    <asp:TextBox ID="TxtUserAddress" runat="server" Width="300px" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>邮箱</b><br />
                    申请人的电子邮箱地址
                </td>
                <td style="width: 766px;">
                    <asp:TextBox ID="TxtUserEmail" runat="server" Width="188px" class="l_input"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RvEmail" runat="server" ControlToValidate="TxtUserEmail"
                        Display="Dynamic" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">邮箱格式不对</asp:RegularExpressionValidator>
                    (格式为……@…….com/cn/net)
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs2" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <b>要求</b><br />
                    项目需求说明
                </td>
                <td>
                    <textarea cols="80" id="TxtProjectRequire" width="364px" height="95px" name="infoeditor" rows="10" runat="server"></textarea>
                    <script id="headscript" type="text/javascript">  
                        //<![CDATA[
                        CKEDITOR.replace('TxtProjectRequire',  //这个" infoeditor  "值也改成ifream的id
                        {
                        skin: 'v2',
                        enterMode: 2,
                        shiftEnterMode: 2,
                        toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
                    });
                        //]]>
                    </script>
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs3" style="display: none">
            <tr class="tdbg" >
                <td class="tdbgleft" style="width: 20%">
                    <b>流程管理</b><br />
                    导入流程<br />
                    <asp:Button ID="Button2" runat="server" Text="导入流程" CssClass="C_input" 
                        OnClientClick="OpenProcess();return false;" />
                </td>
                <td>
                    <span id="Projects" name="Projects"></span>
                </td>
            </tr>
        </tbody>
        
        <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
    </table>
    <div class="clearbox">
    </div>
    <div style="text-align: center">
        <asp:Button ID="Commit" runat="server" Text="提交" class="C_input" OnClick="Commit_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Cancel" runat="server"
            Text="重置" class="C_input" OnClick="Cancel_Click" CausesValidation="False" />
        &nbsp;</div>
    </form>
</body>
</html>
