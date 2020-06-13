<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_LabelPage, App_Web_0medrxrm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>选择标签</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function GotoWirte(rows) {
        var mainright = window.top.main_right;
        //mainright.frames["main_right_" + parent.nowWindow].document.getElementById("G_Makers").value = rows.innerText;
        parent.Dialog.close();
    }
</script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
    var aid = 0;
    var showID = 0;
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6", "Tabs7");
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
        SetCookie("SID", SID)
    }
    window.onload = function() {
        if (getCookie("SID") != null) {
            ShowTabss(getCookie("SID"));
        }
    }

    function ShowTable() {
        if (aid < 8) {
            aid = aid + 1;
        }
        if (aid < 8) {
            ShowTabss(aid);
        }
    }

    function showup() {
        if (aid > 0) {
            aid = aid - 1;
        }
        if (aid >= 0 && aid < 8) {
            ShowTabss(aid);
        }
    }

    function SetCookie(name, value)//两个参数，一个是cookie的名子，一个是值
    {
        var Days = 30; //此 cookie 将被保存 30 天
        var exp = new Date();    //new Date("December 31, 9998");
        exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
        document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
    }
    function getCookie(name)//取cookies函数        
    {
        var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
        if (arr != null) return unescape(arr[2]); return null;

    }
    function delCookie(name)//删除cookie
    {
        var exp = new Date();
        exp.setTime(exp.getTime() - 1);
        var cval = getCookie(name);
        if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)">
                自定义标签
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)">
                数据字段
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)">
                系统标签
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabss(3)">
                扩展标签
            </td>
            <td id="TabTitle4" class="tabtitle" onclick="ShowTabss(4)">
                内容标签
            </td>
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabss(5)">
                商城标签
            </td>
            <td id="TabTitle6" class="tabtitle" onclick="ShowTabss(6)">
                黄页标签
            </td>
            <td id="TabTitle7" class="tabtitle" onclick="ShowTabss(7)">
                用户标签
            </td>
            <td id="Td3" class="tabnone">
            </td>
            <td id="Td1" class="tabnone">
                <img src="/images/up.gif" title="上一项" onclick="showup()" />
            </td>
            <td id="Td2" class="tabnone">
                <img src="/images/down.gif" title="下一项" onclick="ShowTable()" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
        <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
            <tr class="tdbg">
                <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                    <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                        <tbody id="Tabs0">
                            <tr>
                                <td width="30%" class="tdbgleft" align="center">
                                    请选择标签
                                </td>
                                <td width="70%" class="tdbgleft" align="center">
                                    标签列表
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbg" align="center">
                                    <asp:ListBox ID="ListBox1" runat="server" Style="width: 95%;" Height="450"></asp:ListBox>
                                </td>
                                <td class="tdbg">
                                    adsfa
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs1" style="display: none">
                            <tr>
                                <td width="30%" class="tdbgleft" align="center">
                                    请选择标签
                                </td>
                                <td width="70%" class="tdbgleft" align="center">
                                    标签列表
                                </td>
                            </tr>
                            <tr>
                                <td class="tdbg" align="center">
                                    <asp:ListBox ID="ListBox2" runat="server" Style="width: 95%;" Height="450"></asp:ListBox>
                                </td>
                                <td class="tdbg">
                                    adsfa
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs2" style="display: none" align="center">
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                网站名称
                                </td>
                                <td class="tdbg" height="26px">
                                网站Url
                                </td>
                                <td class="tdbg" height="26px">
                                网站标题
                                </td>
                                <td class="tdbg" height="26px">
                                网站关键字
                                </td>
                                <td class="tdbg" height="26px">
                                网站摘要
                                </td>
                                <td class="tdbg" height="26px">
                                网站LOGO
                                </td>
                                <td class="tdbg" height="26px">
                                网站Banner
                                </td>
                                <td class="tdbg" height="26px">
                                网站站长
                                </td>
                            </tr>
                             <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                网站Email
                                </td>
                                <td class="tdbg" height="26px">
                                版权信息
                                </td>
                                <td class="tdbg" height="26px">
                                上传目录
                                </td>
                                <td class="tdbg" height="26px">
                                管理目录
                                </td>
                                <td class="tdbg" height="26px">
                                风格路径
                                </td>
                                <td class="tdbg" height="26px">
                                默认风格
                                </td>
                                <td class="tdbg" height="26px">
                                广告目录
                                </td>
                                <td class="tdbg" height="26px">
                                分页导航
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs3" style="display: none" align="center">
                             <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                获得节点首页链接
                                </td>
                                <td class="tdbg" height="26px">
                                获得节点列表链接
                                </td>
                                <td class="tdbg" height="26px">
                                获得专题分类列表
                                </td>
                                <td class="tdbg" height="26px">
                                获得专题列表页
                                </td>
                                <td class="tdbg" height="26px">
                                获得内容也连接
                                </td>
                                <td class="tdbg" height="26px">
                                获得用户黄页链接
                                </td>
                            </tr>
                            <tr class="tdbg">
                                  <td class="tdbg" height="26px">
                                获得商品也链接
                                </td>
                                <td class="tdbg" height="26px">
                                节点最新信息链接
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs4" style="display: none">
                            <!--内容标签-->
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs5" style="display: none">
                            <!--商城标签-->
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs6" style="display: none;">
                            <!--黄页标签-->
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="Tabs7" style="display: none;">
                            <!--用户标签-->
                            <tr class="tdbg" align="center">
                                <td class="tdbg" height="26px" width="12%">
                                    查询用户名
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                    查询用户ID
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                </td>
                                <td class="tdbg" height="26px" width="12%">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                                <td class="tdbg" height="26px">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="关闭" OnClientClick="GotoWirte()" CssClass="C_input" />
    </div>
    </form>
</body>
</html>
