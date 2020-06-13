<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.AddContent, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加内容</title>

<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script src="/JS/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>

<script type="text/javascript">

    function SelectKey() {
        window.open('/Common/KeyList.aspx?OpenerText=<%=TxtTagKey.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }

    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1");
    var arrTabs = new Array("Tabs0", "Tabs1");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
        }
        parent.document.getElementById("main_right").height = document.body.offsetHeight;
    }

    //添加专题
    function AddToSpecial() {
        var urlstr = "SpecialList.aspx";
        var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
        var special = null;
        if (isMSIE) {
            special = window.showModalDialog(urlstr, "self,width=200,height=150,resizable=yes,scrollbars=yes");
            if (special != "") {
                var arr = special.split(',');
                var odlsp = document.getElementById("HdnSpec").value;
                var odlarr = odlsp.split(',');
                var s = true;
                for (var arri = 0; arri < odlarr.length; arri++) {
                    if (odlarr[arri] == arr[0]) {
                        s = false;
                    }
                }
                if (s) {
                    AddRow(arr[1], arr[0], document.all.SpecTable, "此专题", 2);
                    document.getElementById("HdnSpec").value = odlsp + arr[0] + ",";
                }
            }
        }
        else {
            window.open(urlstr, 'newWin', 'modal=yes,width=200,height=150,resizable=yes,scrollbars=yes');
        }
    }

    //主栏目
    function ShowNode(nodename) {
        document.getElementById("<%=txtNode.ClientID%>").value = nodename;
    }

    //添加栏目
    function AddNode(type) {
        var nid = document.getElementById("<%=hfNode.ClientID%>").value;
        window.open('../Common/NodeList.aspx?NodeID=<%=NodeID %>&nid=' + nid + '&type=' + type + '', 'newWin', 'modal=yes,width=400,height=300,resizable=yes,scrollbars=yes');
    }

    //添加条件行
    function AddNodeRow(nodename, nodeid) {
        AddRow(nodename, nodeid, document.all.NondeTable, "此栏目", 1);
    }

    var i = 0, j = 0;     //行号与列号
    var oNewRow;    //定义插入行对象
    var oNewCell1, oNewCell2;     //定义插入列对象

    //添加条件行
    function AddRow(nodename, nodeid, tableid, text, index) {
        i = tableid.rows.length;
        oNewRow = tableid.insertRow(i);
        oNewRow.id = nodeid;

        //添加第一列
        oNewCell1 = tableid.rows[i].insertCell(0)
        oNewCell1.innerHTML = "<input type='text' id='Value" + nodeid + "'" + " style=\"width:250px;\" disabled=\"disabled\" value=\"" + nodename + "\">";

        //添加第二列
        oNewCell2 = tableid.rows[i].insertCell(1)
        oNewCell2.innerHTML = "&nbsp;<input type=button name=Del" + nodeid + " style=\"width:80px\" value='移除" + text + "'" + "onclick=\"if(confirm('你确定要从" + text + "中移除吗？'))DelCurrentRow(" + nodeid + "," + index + ");\">";
        j++;

    }
    //删除行
    function DelCurrentRow(nodeid, index) {
        var tableid;
        var hfClient;
        if (index == 1) {
            tableid = document.all.NondeTable;
            hfClient = document.getElementById("<%=hfNode.ClientID%>");
        }
        if (index == 2) {
            tableid = document.all.SpecTable;
           // hfClient = document.getElementById("<%--=HdnSpec.ClientID--%>");
        }
        with (tableid) {
            for (var i = 0; i < rows.length; i++) {
                if (rows[i].id == nodeid) {
                    deleteRow(i);
                }
            }
        }
        var nid = hfClient.value;
        var arr = nid.split(",");
        var v = "";
        for (i = 0; i < arr.length; i++) {
            if (arr[i] != nodeid && arr[i] != "") {
                v += arr[i] + ",";
            }
        }
        hfClient.value = v;
        //document.write(document.getElementById("<%=hfNode.ClientID%>").value);
    }
    function ModifyUrl(selectinput, sid, hid) {
        if (selectinput.length == 0) return false;
        var thisurl = selectinput.value;
        if (thisurl == '') { alert('请先选择一个图片地址，再点修改按钮！'); return false; }
        var url = prompt('请输入图片地址名称和链接，中间用“|”隔开：', thisurl);
        if (url != thisurl && url != null && url != '') { selectinput.options[selectinput.selectedIndex] = new Option(url, url); }
        ChangeHiddenFieldValue(sid, hid);

    }

</script>

<script src="/JS/calendar.js" type="text/javascript"></script>
<style type="text/css">
      /*　书签式面板菜单标题背景样式定义 */
.tabtitle, .titlemouseover
{
	width: 80px;
	height: 22px;
	/*line-height: 120%;*/
	padding:0px;
	padding-top: 2px;
	font-weight: normal;
	cursor: pointer;
}
.tabtitle
{
	background: url(../Images/tabon6.gif);
}
.titlemouseover
{
	background: url(../Images/bg_top2.gif);
	color: #ffffff;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="nodename" runat="server" />
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >> 编辑内容 >> <asp:Label ID="Label1" runat="server"  Text="Label"></asp:Label></div>

        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                    内容信息
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                    其它属性
                </td>
               <td align="left">
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" >
            <tbody id="Tabs0">
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        所属栏目：
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtNode" runat="server" Width="250px" Enabled="false" Text=""></asp:TextBox>&nbsp;<input class="button"
                            id="Button3" type="button" value="更改栏目" style="width: 80px" onclick="AddNode('link')" />&nbsp;<input class="button"
                                id="Button4" type="button" value="添加到其他栏目" onclick="AddNode('check')" />
                        <%--<asp:DropDownList ID="txtNode" runat="server">
                    
                    </asp:DropDownList>--%>
                        <table cellpadding="0" cellspacing="0" id="NondeTable" border="0">
                        </table>
                        <asp:HiddenField ID="hfNode" runat="server" Value="" />
                    </td>
                </tr>
<%--                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        所属专题：
                    </td>
                   <td align="left">
                        <div id="lblSpec" runat="server">
                        </div>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                               <td align="left">
                                    <table cellpadding="0" cellspacing="0" id="SpecTable" border="0">
                                    </table>
                                </td>
                                <td valign="top">
                                    &nbsp;<input type="button" id="Button5" class="button" value="添加到专题" onclick="AddToSpecial()" />
                                    <asp:HiddenField ID="HdnSpec" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>--%>
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        内容标题:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtTitle" runat="server" Text='' Width="41%"></asp:TextBox>
                        <span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        标题颜色：
                    </td>
                    <td align="left">
                        <asp:TextBox ID="Titlecolor" runat="server" Text='' Width="10%"></asp:TextBox>

                        <script language="JavaScript" type="text/javascript">
                            function SelectColor(t, clientId) {
                                var url = "/manage/Common/SelectColor.aspx?d=f&t=6";
                                var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
                                if (document.all) {
                                    var color = showModalDialog(url + old_color, '', "dialogWidth:18.5em; dialogHeight:16.0em; status:0");
                                    if (color != null) {
                                        document.getElementById(clientId).value = color;
                                    } else {
                                        document.getElementById(clientId).focus();
                                    }
                                } else {
                                    var color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
                                }
                            }
                        </script>

                        &nbsp;<img onclick="SelectColor(this,'Titlecolor');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif"
                            align="absmiddle" style="border-width: 0px; cursor: pointer" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        关键字：
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtTagKey" runat="server" Text='' Width="41%" Height="22px"></asp:TextBox>
                        &nbsp;<span style="color: #0000ff">【</span><a href="#" onclick="SelectKey();"><span
                            style="text-decoration: underline; color: Green;">选择关键字</span></a><span style="color: #0000ff">】</span>
                        (使用空格分隔每个关键字)
                    </td>
                </tr>
               
                <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        推荐：
                    </td>
                    <td align="left">
                        <asp:CheckBox ID="ChkAudit" Text="推荐" runat="server" />
                    </td>
                </tr>
                <tr class="tdbg" id="contentsk" runat="server">
                    <td  style="width: 20%" align="right">
                        状态：
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="ddlFlow" runat="server" RepeatDirection="Horizontal" Width="155px">
                            <asp:ListItem Value="99" Selected="True">已审</asp:ListItem>
                            <asp:ListItem Value="0">待审</asp:ListItem>
                            <asp:ListItem Value="-1">退稿</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg" id="outpdf">
                    <td  style="width: 20%" align="right">
                        生成PDF：
                    </td>
                    <td align="left">
                        <asp:CheckBox ID="Makepdf" runat="server" Text="启用" />
                    </td>
                </tr>
            </tbody>
            <tbody id="Tabs1" style="display: none">
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        更新时间：
                    </td>
                    <td align="left">
                        &nbsp;<input id="Radio1" type="radio" name="date" runat="server" value="1" checked="true" />保持为原来的时间<br />
                        &nbsp;<input id="Radio2" type="radio" name="date" runat="server" value="2" />自定义&nbsp;&nbsp;<asp:TextBox
                            ID="txtdate" runat="server" Text="" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"
                            Width="20%">
                        </asp:TextBox><asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
                            ToolTip="鼠标点击左边输入框出现时间选择框" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        点击数初始值设置：
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtNum" runat="server" Text="0"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td  style="width: 20%" align="right">
                        指定内容模板：
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)"
                            class="button" />
                    </td>
                </tr>
            </tbody>
            <tr class="tdbgbottom">
                <td colspan="2">
                    <asp:HiddenField ID="HdnNode" runat="server" />
                    <asp:HiddenField ID="HdnModel" runat="server" />
                    <asp:Button ID="EBtnSubmit" Text="添加项目" OnClick="EBtnSubmit_Click" runat="server"  CssClass="button"/>
                    &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="存为草稿" CssClass="button" />
                    &nbsp;<asp:Button ID="BtnBack" runat="server" Text="返　回" OnClick="BtnBack_Click" CssClass="button"
                        UseSubmitBehavior="False" CausesValidation="False" />
                </td>
            </tr>
        </table>
        <br />
        <b>注：分页符：[PageCode/]</b>
    </div>
    </form>
</body>
</html>
