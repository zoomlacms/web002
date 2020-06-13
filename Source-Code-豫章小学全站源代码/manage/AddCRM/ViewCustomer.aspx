<%@ page language="C#" autoeventwireup="true" inherits="manage_AddCRM_ViewCustomer, App_Web_msejy5ma" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>客户列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
function isPerson(ele) {
    document.getElementById("routine").style.display = "block";
    if (ele == "Person_Add") {
        document.getElementById("TabTitle3").style.display = "block";
        document.getElementById("TabTitle4").style.display = "block";
        document.getElementById("TabTitle7").style.display = "none";
        document.getElementById("TabTitle2").style.display = "none";
        document.getElementById("t1").style.display = "none";
        document.getElementById("s1").style.display = "block";
        document.getElementById("s2").style.display = "block";
        document.getElementById("s3").style.display = "block";
        document.getElementById("s4").style.display = "block";
        document.getElementById("s5").style.display = "block";
        document.getElementById("s6").style.display = "block";
        document.getElementById("s7").style.display = "block";
    }
    else if (ele == "Enterprise_Add") {
        document.getElementById("TabTitle3").style.display = "none";
        document.getElementById("TabTitle4").style.display = "none";
        document.getElementById("TabTitle7").style.display = "block";
        document.getElementById("TabTitle2").style.display = "block";
        document.getElementById("t1").style.display = "block";
        document.getElementById("s1").style.display = "none";
        document.getElementById("s2").style.display = "none";
        document.getElementById("s3").style.display = "none";
        document.getElementById("s4").style.display = "none";
        document.getElementById("s5").style.display = "none";
        document.getElementById("s6").style.display = "none";
        document.getElementById("s7").style.display = "none";
    }
}

function displl(di) {
    if (di != "info") {
        document.getElementById("info").style.display = "none";
        document.getElementById(di).style.display = "block";
        var field = '<%=Request.QueryString["FieldName"].ToString() %>';
        if ((field == "Person_Add") || (field == "Enterprise_Add")) {
            isPerson(field);
        }
        else {
            document.getElementById("routine").style.display = "none";
        }
    } else {
        document.getElementById("routine").style.display = "none";
        document.getElementById(di).style.display = "block";
    }
}

function ShowTabs(ID) {
    for (i = 0; i < 8; i++) {
        if (i == ID) {
            document.getElementById("TabTitle" + i).className = "titlemouseover";
            document.getElementById("Tabs" + i).style.display = "";
        }
        else {
            document.getElementById("TabTitle" + i).className = "tabtitle";
            document.getElementById("Tabs" + i).style.display = "none";
        }
    }
}

function Fsex(a) {
    document.getElementById("sex").value = a;
}

function FMarriage(b) {
    document.getElementById("Marriage").value = b;
}

function getinfo(id) {
    location.href = "../AddOn/ProjectsDetail.aspx?ProjectID=" + id + "";
}
</script>

</head>
<body onload="isPerson('Enterprise_Add');">
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span>CRM管理</span>&nbsp;&gt;&gt;&nbsp;<span><a href="CustomerList.aspx?usertype=0">客户管理</a></span>&nbsp;&gt;&gt;&nbsp;<asp:Label
            ID="Label1" runat="server" Text="查看个人客户"></asp:Label>
    </div>
    <div class="guide" id="routine" style="margin-top: 10px; float: left; width: 100%">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                    基本信息
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                    联络信息
                </td>
                <td id="TabTitle2" style="display: none" class="tabtitle" onclick="ShowTabs(2)">
                    企业信息
                </td>
                <td id="TabTitle4" style="" class="tabtitle" onclick="ShowTabs(4)">
                    个人信息
                </td>
                <td id="TabTitle3" style="" class="tabtitle" onclick="ShowTabs(3)">
                    业务信息
                </td>
                <td id="TabTitle7" class="tabtitle" style="display: none" onclick="ShowTabs(7)">
                    企业选项
                </td>
                <td id="TabTitle6" class="tabtitle" style="display: none" onclick="ShowTabs(6)">
                    会员选项
                </td>
                <td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5)">
                    备注信息
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
            <tr class="tdbg">
                <td  valign="top">
                    <table id="Tabs0" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                客户类别：
                            </td>
                            <td>
                                <asp:Label ID="ClientType" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                            </td>
                            <td>
                                <table id="Table1" border="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td style="width: 15%" align="right" class="tdbgleft">
                                客户名称：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtClientName" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                客户编号：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtClientNum" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                助记名称：
                            </td>
                            <td>
                                <asp:Label ID="TxtShortedForm" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                                上级客户：
                            </td>
                            <td>
                                <asp:Label ID="ClientSelect" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                区域：
                            </td>
                            <td>
                                <asp:Label ID="DropArea" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                                行业：
                            </td>
                            <td>
                                <asp:Label ID="DropClientField" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                价值评估：
                            </td>
                            <td>
                                <asp:Label ID="DropValueLevel" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                                信用等级：
                            </td>
                            <td>
                                <asp:Label ID="DropCreditLevel" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                重要程度：
                            </td>
                            <td>
                                <asp:Label ID="DropImportance" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                                关系等级：
                            </td>
                            <td>
                                <asp:Label ID="DropConnectionLevel" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                客户来源：
                            </td>
                            <td>
                                <asp:Label ID="DropSourceType" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                                阶段：
                            </td>
                            <td>
                                <asp:Label ID="DropPhaseType" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                客户组别：
                            </td>
                            <td>
                                <asp:Label ID="DropGroupID" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right" class="tdbgleft">
                            </td>
                            <td>
                                <table id="Table2" border="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table id="Tabs1" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tbody id="infoE">
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                <td style="width: 15%" rowspan="2" align="right" class="tdbgleft">
                                    通讯地址：
                                </td>
                                <td colspan="3" style="height: 23px">
                                    <div id="ctl00_CphContent_Region_UpnlRegion">
                                        <table width="100%" border="0" cellpadding="2" cellspacing="1">
                                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td style="width: 100px" align="right" class="tdbgleft">
                                                    国家/地区：&nbsp;&nbsp;
                                                </td>
                                                <td colspan="2" align="left">
                                                    <asp:Label ID="country" runat="server" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td style="width: 100px" align="right" class="tdbgleft">
                                                    省/市/自治区：
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="province" runat="server" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td align="right" class="tdbgleft">
                                                    市/县/区/旗：&nbsp;
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="city" runat="server" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                <td colspan="3">
                                    <table border="0" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;">
                                        <tr class="tdbg">
                                            <td style="width: 15%"  class="tdbgleft">
                                                联系地址：
                                            </td>
                                            <td>
                                                <asp:Label ID="TxtAddress" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                            <td  class="tdbgleft">
                                                邮政编码：
                                            </td>
                                            <td>
                                                <asp:Label ID="TxtZipCodeW" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="t1">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    联系电话：
                                </td>
                                <td>
                                    <asp:Label ID="TxtPhone" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    传真号码：
                                </td>
                                <td>
                                    <asp:Label ID="TxtFax1" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s1" style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    办公电话：
                                </td>
                                <td>
                                    <asp:Label ID="TxtOfficePhone" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 15%" class="tdbgleft">
                                    住宅电话：
                                </td>
                                <td>
                                    <asp:Label ID="TxtHomePhone" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s2"  style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    移动电话：
                                </td>
                                <td>
                                    <asp:Label ID="TxtMobile" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 15%" class="tdbgleft">
                                    传真号码：
                                </td>
                                <td>
                                    <asp:Label ID="TxtFax" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s3" style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    小灵通：
                                </td>
                                <td>
                                    <asp:Label ID="TxtPHS" runat="server" Text=""></asp:Label>
                                </td>
                                <td class="tdbgleft" align="right">
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s4" style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    个人主页：
                                </td>
                                <td>
                                    <asp:Label ID="TxtHomepage" runat="server" Text=""></asp:Label>
                                </td>
                                <td class="tdbg" style=" width:30%" >
                                    Email地址：
                                </td>
                                <td>
                                    <asp:Label ID="TxtEmail" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s5" style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    QQ号码：
                                </td>
                                <td>
                                    <asp:Label ID="TxtQQ" runat="server" Text=""></asp:Label>
                                </td>
                                <td class="tdbgleft"  style=" width:30%">
                                    MSN帐号：
                                </td>
                                <td>
                                    <asp:Label ID="TxtMSN" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s6" style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    ICQ号码：
                                </td>
                                <td>
                                    <asp:Label ID="TxtICQ" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 30%" class="tdbgleft">
                                    雅虎通帐号：
                                </td>
                                <td>
                                    <asp:Label ID="TxtYahoo" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="s7" style=" display:none;">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    UC帐号：
                                </td>
                                <td>
                                    <asp:Label ID="TxtUC" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 30%" class="tdbgleft">
                                    Aim帐号：
                                </td>
                                <td>
                                    <asp:Label ID="TxtAim" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table id="Tabs2" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td style="width: 15%" align="right" class="tdbgleft">
                                开户银行：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtBankOfDeposit" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                银行帐号：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtBankAccount" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                税号：
                            </td>
                            <td>
                                <asp:Label ID="TxtTaxNum" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                网址：
                            </td>
                            <td>
                                <asp:Label ID="TxtHomepage1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                行业地位：
                            </td>
                            <td>
                                <asp:Label ID="DropStatusInField" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                公司规模：
                            </td>
                            <td>
                                <asp:Label ID="DropCompanySize" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                业务范围：
                            </td>
                            <td>
                                <asp:Label ID="TxtBusinessScope" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                年销售额：
                            </td>
                            <td>
                                <asp:Label ID="TxtAnnualSales" runat="server" Text=""></asp:Label>万元
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                经营状态：
                            </td>
                            <td>
                                <asp:Label ID="DropManagementForms" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                注册资本：
                            </td>
                            <td>
                                <asp:Label ID="TxtRegisteredCapital" runat="server" Text=""></asp:Label>万元
                            </td>
                        </tr>
                    </table>
                    <table id="Tabs3" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td style="width: 15%" align="right" class="tdbgleft">
                                单位名称：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtCompany" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                所属部门：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtDepartment" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                职位：
                            </td>
                            <td>
                                <asp:Label ID="TxtPosition" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                负责业务：
                            </td>
                            <td>
                                <asp:Label ID="TxtOperation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" align="right">
                                称谓：
                            </td>
                            <td>
                                <asp:Label ID="TxtTitle" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                单位地址：
                            </td>
                            <td>
                                <asp:Label ID="TxtCompanyAddress" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table id="Tabs4" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td style="width: 15%" align="right" class="tdbgleft">
                                出生日期：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="DpkBirthday" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                证件号码：
                            </td>
                            <td style="width: 38%">
                                <asp:Label ID="TxtIDCard" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                籍贯：
                            </td>
                            <td>
                                <asp:Label ID="TxtNativePlace" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                民族：
                            </td>
                            <td>
                                <asp:Label ID="TxtNation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" align="right">
                                性别：
                            </td>
                            <td>
                                <asp:Label ID="RadlSex" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                婚姻状况：
                            </td>
                            <td>
                                <asp:Label ID="RadlMarriage" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                学历：
                            </td>
                            <td>
                                <asp:Label ID="DropEducation" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                毕业学校：
                            </td>
                            <td>
                                <asp:Label ID="TxtGraduateFrom" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                生活爱好：
                            </td>
                            <td>
                                <asp:Label ID="TxtInterestsOfLife" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                文化爱好：
                            </td>
                            <td>
                                <asp:Label ID="TxtInterestsOfCulture" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                娱乐休闲爱好：
                            </td>
                            <td>
                                <asp:Label ID="TxtInterestsOfAmusement" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                体育爱好：
                            </td>
                            <td>
                                <asp:Label ID="TxtInterestsOfSport" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                其他爱好：
                            </td>
                            <td>
                                <asp:Label ID="TxtInterestsOfOther" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="tdbgleft" align="right">
                                月收入：
                            </td>
                            <td>
                                <asp:Label ID="DropIncome" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                家庭情况：
                            </td>
                            <td colspan="3">
                                <asp:Label ID="TxtFamily" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table id="Tabs5" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tr class="tdbg">
                            <td style="width: 15%" align="right" class="tdbgleft">
                                备注：
                            </td>
                            <td colspan="3">
                                <asp:Label ID="TxtRemark" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table id="Tabs6" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tr class="tdbg">
                            <td colspan="4">
                                <div id="ctl00_CphContent_UpnlChildProducts">
                                    <table cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;">
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table id="Tabs7" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;
                        display: none">
                        <tr class="tdbg">
                            <td colspan="4">
                                <div id="ctl00_CphContent_UpnlCompany">
                                    <table cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;">
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="修改" class="C_input" 
            onclick="Button1_Click" />
        <asp:Button ID="ctl00_CphContent_BtnSave0" runat="server" Text="取消" 
            class="C_input" onclick="ctl00_CphContent_BtnSave0_Click" CausesValidation="false" />
    </div>
    
    <div id="select_crm">
    </div>
    
    <div style="clear: both;">
    </div>
    
    <div class="divbox" id="nocontent" runat="server">暂无项目信息</div>
    <table width="100%"  cellpadding="0" cellspacing="1" class="border" border="0">
        <tbody>
        <div id="aa" runat="server"></div>
            <tr class="gridtitle" align="center" style="height:25px">
                <td width="4%">选择</td>
                <td width="3%">ID</td>
                <td width="10%">项目名称</td>
                <td width="7%">项目类型</td>
                <td width="5%">项目价格</td>
                <td width="12%">启动时间</td>
                <td width="8%">开发负责人</td>
                <td width="7%">审核状态</td>
                <td width="7%">项目状态</td>
                <td width="7%">当前进度</td>
                <td width="12%">申请时间</td>
                
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand" >
                <ItemTemplate>
                    <tr id='<%#Eval("ID") %>' class="tdbg" height="25px" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id);" title="双击查看此项目详情">
                        <td><asp:CheckBox ID="ChBx" runat="server"/><asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label></td>     
                        <td><%# Eval("ID","{0}")%></td>
                        <td><a href="../AddOn/ProjectsDetail.aspx?ProjectID=<%# Eval("ID","{0}")%>"><%# Eval("Name")%></a></td>
                        <td><a href="../AddOn/Projects.aspx?type=<%#Eval("TypeID") %>"><%# GetProType(Eval("TypeID","{0}")) %></a></td>
                        <td>￥<%# Eval("Price")%>.00</td>
                        <td><%# Eval("BeginTime", "{0}")%></td>
                        <td><%#GetLeader(Eval("Leader","{0}"))%></td>
                        <td><%# GetAudit(Eval("AuditStatus","{0}"))%></td>
                        <td><%# GetProStatus(Eval("ProStatus", "{0}"))%></td>
                        <td><a href='<%#Eval("ID","../AddOn/ProjectsProcesses.aspx?ID={0}") %>'>
                            <div style="width:90%;border:solid 1px green; height:5px">
                                <div id="line" runat="server" style="background-color:#bddb52;height:5px;float:left"></div>
                            </div></a>
                        </td>
                        <td><%#DataBinder.Eval(Container.DataItem, "ApplicationTime")%></td>
                     
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <div style="text-align: center" class="tdbg">
        <span style="text-align: center">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />&nbsp;页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />10条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>页
        </span>
    </div>
    
    </form>
</body>
</html>
