<%@ page language="C#" autoeventwireup="true" inherits="manage_AddCRM_CustomerManage, App_Web_msejy5ma" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>客户列表</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="/js/citylist.js"></script>

    <script src="/JS/calendar.js" type="text/javascript"></script>

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
                document.getElementById("RadlClientType_1").checked = "checked";
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
                document.getElementById("RadlClientType_0").checked = "checked";
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

    </script>
    <script type="text/javascript" src="/js/Console.js"></script>
    <script type="text/javascript" src="/js/Drag.js"></script>
    <script type="text/javascript" src="/js/Dialog.js"></script>
    <script language="javascript" type="text/javascript">

        function Openwin() {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Width = 800;
            diag.Height = 400;
            diag.Title = "选择客户";
            diag.URL = "SelectProjectName.aspx";
            diag.show();
        }
 
    </script>

</head>
<body onload="initialize();isPerson('Enterprise_Add');">
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span><asp:Literal ID="liTitle" runat="server"></asp:Literal></span>&nbsp;&gt;&gt;&nbsp;<span><a href="CustomerList.aspx?usertype=0">客户管理</a></span>&nbsp;&gt;&gt;&nbsp;<asp:Label
            ID="Label1" runat="server" Text="添加个人用户"></asp:Label>
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
                <td style="height: 100px;" valign="top">
                    <table id="Tabs0" cellpadding="2" cellspacing="1" style="width: 100%; background-color: white;">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                客户类别：
                            </td>
                            <td>
                                <table id="RadlClientType" border="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td>
                                            <input id="RadlClientType_0" type="radio" checked name="RadlClientType"  runat="server" onclick="isPerson('Enterprise_Add')" />
                                            <label for="RadlClientType_0">
                                                企业客户</label>
                                        </td>
                                        <td>
                                            <input id="RadlClientType_1" type="radio" name="RadlClientType" runat="server" onclick="isPerson('Person_Add')" />
                                            <label for="RadlClientType_1">
                                                个人客户</label>
                                        </td>
                                    </tr>
                                </table> 
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
                                <input type="text" maxlength="100" id="TxtClientName" class="l_input" runat="server" />
                                <span style="color: Red;">* </span><span id="ctl00_CphContent_ValrClientName" style="color: Red;
                                    display: none;">客户名称不能为空！</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TxtClientName" ErrorMessage="客户名称不能为空！"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                客户编号：
                            </td>
                            <td style="width: 38%">
                                <input type="text" value="" runat="server" maxlength="20" id="TxtClientNum" class="l_input" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                助记名称：
                            </td>
                            <td>
                                <input type="text" maxlength="20" runat="server" id="TxtShortedForm" class="l_input" />
                                <span style="color: Red;">* </span><span id="ctl00_CphContent_ValrShortedForm" style="color: Red;
                                    display: none;">助记名称不能为空！</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TxtShortedForm" ErrorMessage="助记名称不能为空！"></asp:RequiredFieldValidator>
                            </td>
                            <td align="right" class="tdbgleft">
                                上级客户：
                            </td>
                            <td>
                                <input type="text" id="ClientSelect" class="l_input" runat="server" />&nbsp;
                                <input value=" ... " onclick="javascript:Openwin();void(0);"
                                    type="button" style="cursor: pointer;" class="C_input" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                区域：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropArea" runat="server" AutoPostBack="false" EnableViewState="true">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="tdbgleft">
                                行业：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropClientField" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                价值评估：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropValueLevel" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="tdbgleft">
                                信用等级：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropCreditLevel" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                重要程度：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropImportance" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="tdbgleft">
                                关系等级：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropConnectionLevel" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                客户来源：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropSourceType" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                                <span style="color: Red;">*</span> <span id="ctl00_CphContent_ValxSourceType" style="color: Red;
                                    visibility: hidden;">请选择客户来源！</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="DropSourceType" ErrorMessage="客户来源不能为空！"></asp:RequiredFieldValidator>
                            </td>
                            <td align="right" class="tdbgleft">
                                阶段：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropPhaseType" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                                <span style="color: Red;">*</span> <span id="ctl00_CphContent_ValxPhaseType" style="color: Red;
                                    visibility: hidden;">请选择阶段！</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="DropPhaseType" ErrorMessage="阶段不能为空！"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" class="tdbgleft">
                                客户组别：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropGroupID" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                                <span style="color: Red;">*</span> <span id="ctl00_CphContent_ValxGroupID" style="color: Red;
                                    visibility: hidden;">请选择客户组别！</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="DropGroupID" ErrorMessage="客户组别不能为空！"></asp:RequiredFieldValidator>
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
                                                    <select name="country" id="country" runat="server">
                                                        <option value="">请选择</option>
                                                        <option value="中华人民共和国" selected>中华人民共和国</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td style="width: 100px" align="right" class="tdbgleft">
                                                    省/市/自治区：
                                                </td>
                                                <td align="left">
                                                    <select name="province" id="province" onchange="province_onchange(province,city)" runat="server">
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td align="right" class="tdbgleft">
                                                    市/县/区/旗：&nbsp;
                                                </td>
                                                <td align="left">
                                                    <select name="city" id="city" runat="server">
                                                    </select>
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
                                            <td style="width: 15%" align="right" class="tdbgleft">
                                                联系地址：
                                            </td>
                                            <td>
                                                <input name="TxtAddress" type="text" runat="server" maxlength="255" id="TxtAddress"
                                                    class="l_input" style="width: 300px;" />
                                            </td>
                                        </tr>
                                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                            <td align="right" class="tdbgleft">
                                                邮政编码：
                                            </td>
                                            <td>
                                                <input name="TxtZipCodeW" type="text" id="TxtZipCodeW" class="l_input" runat="server" />
                                                <span id="ctl00_CphContent_VzipZipCode" style="color: Red; display: none;">填写的邮政编码格式不正确！</span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="t1">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    联系电话：
                                </td>
                                <td style="width: 38%">
                                    <input name="TxtPhone" type="text" maxlength="30" id="TxtPhone" class="l_input" runat="server" />
                                    <span id="ctl00_CphContent_VtelPhone" style="color: Red; display: none;">电话格式不正确</span>
                                    <span id="spanPhone" style="display: none; color: Red">联系电话已经存在，请勿重复添加！</span>
                                </td>
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    传真号码：
                                </td>
                                <td style="width: 38%">
                                    <input name="TxtFax1" type="text" maxlength="30" id="TxtFax1" class="l_input" runat="server" />
                                    <span id="ctl00_CphContent_VtelFax" style="color: Red; display: none;">传真格式不正确</span>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s1">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    办公电话：
                                </td>
                                <td style="width: 38%">
                                    <input name="TxtOfficePhone" type="text" id="TxtOfficePhone" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanValidOfficePhone">办公电话已经存在，请勿重复添加！</span>
                                    <span id="ctl00_CphContent_LiaisonInformation1_VtelOfficePhone" style="color: Red;
                                        display: none;">填写的办公电话号码格式不正确</span>
                                </td>
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    住宅电话：
                                </td>
                                <td style="width: 38%">
                                    <input name="TxtHomePhone" type="text" id="TxtHomePhone" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanHomePhone">住宅电话已经存在，请勿重复添加！</span>
                                    <span id="ctl00_CphContent_LiaisonInformation1_VtelHomePhone" style="color: Red;
                                        display: none;">填写的住宅电话号码格式不正确</span>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s2">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    移动电话：
                                </td>
                                <td>
                                    <input name="TxtMobile" type="text" id="TxtMobile" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanMobile">移动电话已经存在，请勿重复添加！</span>
                                    <span id="ctl00_CphContent_LiaisonInformation1_VmblMobile" style="color: Red; display: none;">
                                        填写的移动电话号码格式不正确</span>
                                </td>
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    传真号码：
                                </td>
                                <td>
                                    <input name="TxtFax" type="text" id="TxtFax" class="l_input" runat="server" />
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s3">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    小灵通：
                                </td>
                                <td>
                                    <input name="TxtPHS" type="text" id="TxtPHS" class="l_input" runat="server" />
                                </td>
                                <td class="tdbgleft" align="right">
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s4">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    个人主页：
                                </td>
                                <td>
                                    <input name="TxtHomepage" type="text" id="TxtHomepage" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanHomepage">主页已经存在，请勿重复添加！</span>
                                </td>
                                <td class="tdbgleft" align="right">
                                    Email地址：
                                </td>
                                <td>
                                    <input name="TxtEmail" type="text" id="TxtEmail" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanValidEmail">Email地址已经存在，请勿重复添加！</span>
                                    <span id="ctl00_CphContent_LiaisonInformation1_VmailEmail" style="color: Red; display: none;">
                                        填写的电子邮箱格式不正确！</span>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s5">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    QQ号码：
                                </td>
                                <td>
                                    <input name="TxtQQ" type="text" id="TxtQQ" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanValidQQ">QQ号码已经存在，请勿重复添加！</span>
                                    <span id="ctl00_CphContent_LiaisonInformation1_VQQ" style="color: Red; display: none;">
                                        填写的QQ号码格式不正确！</span>
                                </td>
                                <td class="tdbgleft" align="right">
                                    MSN帐号：
                                </td>
                                <td>
                                    <input name="TxtMSN" type="text" id="TxtMSN" class="l_input" runat="server" />
                                    <span style="color: Red; display: none;" id="spanValidMsn">Msn号码已经存在，请勿重复添加！</span>
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s6">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    ICQ号码：
                                </td>
                                <td>
                                    <input name="TxtICQ" type="text" id="TxtICQ" class="l_input" runat="server" />
                                </td>
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    雅虎通帐号：
                                </td>
                                <td>
                                    <input name="TxtYahoo" type="text" id="TxtYahoo" class="l_input" runat="server" />
                                </td>
                            </tr>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="display: none" id="s7">
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    UC帐号：
                                </td>
                                <td>
                                    <input name="TxtUC" type="text" id="TxtUC" class="l_input" runat="server" />
                                </td>
                                <td style="width: 15%" align="right" class="tdbgleft">
                                    Aim帐号：
                                </td>
                                <td>
                                    <input name="TxtAim" type="text" id="TxtAim" class="l_input" runat="server" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnQQ" id="ctl00_CphContent_LiaisonInformation1_HdnQQ" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnEmail" id="ctl00_CphContent_LiaisonInformation1_HdnEmail" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnMsn" id="ctl00_CphContent_LiaisonInformation1_HdnMsn" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnHomepage" id="ctl00_CphContent_LiaisonInformation1_HdnHomepage" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnMobile" id="ctl00_CphContent_LiaisonInformation1_HdnMobile" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnHomephone" id="ctl00_CphContent_LiaisonInformation1_HdnHomephone" />
                                    <input type="hidden" name="ctl00$CphContent$LiaisonInformation1$HdnOfficePhone" id="ctl00_CphContent_LiaisonInformation1_HdnOfficePhone" />
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
                                <input name="TxtBankOfDeposit" type="text" maxlength="50" id="TxtBankOfDeposit" class="l_input"
                                    runat="server" />
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                银行帐号：
                            </td>
                            <td style="width: 38%">
                                <input name="TxtBankAccount" type="text" maxlength="50" id="TxtBankAccount" class="l_input"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                税号：
                            </td>
                            <td>
                                <input name="TxtTaxNum" type="text" maxlength="50" id="TxtTaxNum" class="l_input"
                                    runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                网址：
                            </td>
                            <td>
                                <input name="TxtHomepage1" type="text" maxlength="255" id="TxtHomepage1" class="l_input"
                                    runat="server" />
                                <span id="ctl00_CphContent_regHomePage" style="color: Red; display: none;">填写的URL地址格式不正确</span>
                                <span id="span1" style="display: none; color: Red">网址已经存在，请勿重复添加！</span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                行业地位：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropStatusInField" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                            <td class="tdbgleft" align="right">
                                公司规模：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropCompanySize" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                业务范围：
                            </td>
                            <td>
                                <input name="TxtBusinessScope" type="text" maxlength="100" id="TxtBusinessScope"
                                    class="l_input" runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                年销售额：
                            </td>
                            <td>
                                <input name="TxtAnnualSales" type="text" maxlength="50" id="TxtAnnualSales" class="l_input"
                                    runat="server" />
                                万元 &nbsp;<span id="ctl00_CphContent_rangAnnualSales" style="color: Red; display: none;">请输入正确的年销售额</span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                经营状态：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropManagementForms" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                            <td class="tdbgleft" align="right">
                                注册资本：
                            </td>
                            <td>
                                <input name="TxtRegisteredCapital" type="text" maxlength="50" id="TxtRegisteredCapital"
                                    class="l_input" runat="server" />
                                万元 &nbsp;<span id="ctl00_CphContent_rangRegisteredCapital" style="color: Red; display: none;">请输入正确的注册资本</span>
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
                                <input name="TxtCompany" type="text" maxlength="200" id="TxtCompany" class="l_input"
                                    runat="server" />
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                所属部门：
                            </td>
                            <td style="width: 38%">
                                <input name="TxtDepartment" type="text" id="TxtDepartment" class="l_input" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                职位：
                            </td>
                            <td>
                                <input name="TxtPosition" type="text" id="TxtPosition" class="l_input" runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                负责业务：
                            </td>
                            <td>
                                <input name="TxtOperation" type="text" id="TxtOperation" class="l_input" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" align="right">
                                称谓：
                            </td>
                            <td>
                                <input name="TxtTitle" type="text" id="TxtTitle" class="l_input" runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                单位地址：
                            </td>
                            <td>
                                <input name="TxtCompanyAddress" type="text" maxlength="255" id="TxtCompanyAddress"
                                    class="l_input" runat="server" />
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
                                <input name="DpkBirthday" type="text" id="DpkBirthday" value="1986-10-22 0:0:0" style="font-size: 9pt;
                                    height: 15px;" runat="server" onclick="calendar()" />
                            </td>
                            <td style="width: 15%" align="right" class="tdbgleft">
                                证件号码：
                            </td>
                            <td style="width: 38%">
                                <input name="TxtIDCard" type="text" id="TxtIDCard" class="l_input" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                籍贯：
                            </td>
                            <td>
                                <input name="TxtNativePlace" type="text" id="TxtNativePlace" class="l_input" runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                民族：
                            </td>
                            <td>
                                <input name="TxtNation" type="text" id="TxtNation" class="l_input" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" align="right">
                                性别：
                            </td>
                            <td>
                                <table id="RadlSex" border="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td>
                                            <input id="RadlSex_0" type="radio" name="RadlSex" value="0" checked="checked" onclick="Fsex('2')" />
                                            <label for="RadlSex_0">
                                                保密</label>
                                        </td>
                                        <td>
                                            <input id="RadlSex_1" type="radio" name="RadlSex" value="1" onclick="Fsex('1')" />
                                            <label for="RadlSex_1">
                                                男</label>
                                        </td>
                                        <td>
                                            <input id="RadlSex_2" type="radio" name="RadlSex" value="2" onclick="Fsex('0')" />
                                            <label for="RadlSex_2">
                                                女</label><input name="sex" type="text" id="sex" class="l_input" runat="server" style="display: none" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="tdbgleft" align="right">
                                婚姻状况：
                            </td>
                            <td>
                                <table id="RadlMarriage" border="0">
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                        <td>
                                            <input id="RadlMarriage_0" type="radio" name="RadlMarriage" value="0" checked="checked"
                                                onclick="FMarriage('0')" />
                                            <label for="RadlMarriage_0">
                                                保密</label>
                                        </td>
                                        <td>
                                            <input id="RadlMarriage_1" type="radio" name="RadlMarriage" value="1" onclick="FMarriage('1')" />
                                            <label for="RadlMarriage_1">
                                                未婚</label>
                                        </td>
                                        <td>
                                            <input id="RadlMarriage_2" type="radio" name="RadlMarriage" value="2" onclick="FMarriage('2')" />
                                            <label for="RadlMarriage_2">
                                                已婚</label>
                                        </td>
                                        <td>
                                            <input id="RadlMarriage_3" type="radio" name="RadlMarriage" value="3" onclick="FMarriage('3')" />
                                            <label for="RadlMarriage_3">
                                                离异</label><input name="Marriage" type="text" id="Marriage" class="l_input" runat="server"
                                                    style="display: none" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                学历：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropEducation" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                            <td class="tdbgleft" align="right">
                                毕业学校：
                            </td>
                            <td>
                                <input name="TxtGraduateFrom" type="text" id="TxtGraduateFrom" class="l_input" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                生活爱好：
                            </td>
                            <td>
                                <input name="TxtInterestsOfLife" type="text" id="TxtInterestsOfLife" class="l_input"
                                    runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                文化爱好：
                            </td>
                            <td>
                                <input name="TxtInterestsOfCulture" type="text" id="TxtInterestsOfCulture" class="l_input"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                娱乐休闲爱好：
                            </td>
                            <td>
                                <input name="TxtInterestsOfAmusement" type="text" id="TxtInterestsOfAmusement" class="l_input"
                                    runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                体育爱好：
                            </td>
                            <td>
                                <input name="TxtInterestsOfSport" type="text" id="TxtInterestsOfSport" class="l_input"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                其他爱好：
                            </td>
                            <td>
                                <input name="TxtInterestsOfOther" type="text" id="TxtInterestsOfOther" class="l_input"
                                    runat="server" />
                            </td>
                            <td class="tdbgleft" align="right">
                                月收入：
                            </td>
                            <td>
                                <asp:DropDownList ID="DropIncome" runat="server" AutoPostBack="false">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" align="right">
                                家庭情况：
                            </td>
                            <td colspan="3">
                                <textarea name="TxtFamily" rows="2" cols="20" id="TxtFamily" class="l_input" style="height: 74px;
                                    width: 400px;" runat="server"></textarea>
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
                                <textarea name="TxtRemark" rows="2" cols="20" id="TxtRemark" class="l_input" style="height: 100px;
                                    width: 400px;" runat="server"></textarea>
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
        <asp:Button ID="ctl00_CphContent_BtnSave" runat="server" Text="保存客户信息" OnClick="ctl00_CphContent_BtnSave_Click"
            class="C_input" />
        <asp:Button ID="ctl00_CphContent_BtnSave0" runat="server" Text="取消" 
            class="C_input" onclick="ctl00_CphContent_BtnSave0_Click" CausesValidation="false" />
    </div>
    <div id="select_crm">
    </div>
    <div style="clear: both;">
    </div>
    </form>
</body>
</html>
