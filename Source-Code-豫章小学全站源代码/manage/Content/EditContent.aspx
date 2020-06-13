<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Content.EditContent, App_Web_0tiy15lx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="ZoomLa.Ajax" Namespace="ZoomLa.Framework.Noebe.Jsons.WebControls"
    TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>编辑内容</title>
    <link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
    <link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
    <link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
    <style type="text/css">
        .elong_con_new .new_con_2 .new_con_d li
        {
            width: auto;
            padding-left: 8px;
            padding-right: 7px;
        }
        .elong_con_new .new_con_2 .new_con_d #thz
        {
            background-position: -296px -53px;
            margin-left: 8px;
            padding-left: 0;
        }
    </style>
    <script type="text/javascript" src="../Common/Common.js"></script>
    <script type="text/javascript" src="/JS/calendar.js"></script>
    <script type="text/javascript" src="/JS/RiQi.js"></script>
    <script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/JS/chinese.js"></script>
    <cc1:ZoomLaAjaxBase ID="ZoomLaAjaxBase1" runat="server" />
    <script type="text/javascript">

        function SelectKey() {
            window.open('/Common/KeyList.aspx?OpenerText=<%=TxtTagKey.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
        }

        var tID = 0;
        var eID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3");
        var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3");
        function ShowTabs(ID) {
            for (var i = 0; i <= 3; i++) {
                document.getElementById("TabTitle" + i).className = "tabtitle";
                document.getElementById("Tabs" + i).style.display = "none";
            }
            document.getElementById("Tabs" + ID).style.display = "";
            document.getElementById("TabTitle" + ID).className = "titlemouseover";
            eID = ID;
        }

        //编辑上下项
        function EditUp() {
            if (eID > 0) {
                eID = eID - 1;
            }
            if (eID >= 0 && eID < 4) {
                ShowTabs(eID);
            }
        }
        function EditDown() {
            if (eID < 3) {
                eID = eID + 1;
            }
            if (eID < 4)
            { ShowTabs(eID); }
        }

        //添加专题
        function AddToSpecial() {
            var urlstr = "SpecialList.aspx";
            var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
            var special = null;
            if (isMSIE) {
                special = window.showModalDialog(urlstr, "self,width=200,height=150,resizable=yes,scrollbars=yes");
                if (special != undefined && special != "") {
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

        //主节点
        function ShowNode(nodename) {
            document.getElementById("<%=txtNode.ClientID%>").value = nodename;
        }
        //添加节点
        function AddNode(type) {
            var nid = document.getElementById("<%=hfNode.ClientID%>").value;
            window.open('../Common/NodeList.aspx?nid=' + nid + '&type=' + type + '', 'newWin', 'modal=yes,width=400,height=300,resizable=yes,scrollbars=yes');
        }
        //添加条件行
        function AddNodeRow(nodename, nodeid) {
            AddRow(nodename, nodeid, document.all.NondeTable, "此节点", 1);
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
        var ii = 0, jj = 0;
        //添加条件行
        function AddRowNode(nodename, nodeid, tableid, text, index) {
            ii = tableid.rows.length;
            oNewRow = tableid.insertRow(ii);
            oNewRow.id = nodeid;

            //添加第一列
            oNewCell1 = tableid.rows[ii].insertCell(0)
            oNewCell1.innerHTML = "<input type='text' class=\"l_input\" id='txtNode" + nodeid + "'" + " style=\"width:250px;\" disabled=\"disabled\" value=\"" + nodename + "\">";

            //添加第二列
            oNewCell2 = tableid.rows[ii].insertCell(1)
            oNewCell2.innerHTML = "&nbsp;<input type=button class=\"C_input\" name=btnDel" + nodeid + " style=\"width:80px\" value='移除" + text + "'" + "onclick=\"if(confirm('你确定要从" + text + "中移除吗？'))DelCurrentRow(" + nodeid + "," + index + ");\">";

            jj++;
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
                hfClient = document.getElementById("<%=HdnSpec.ClientID%>");
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
        }

        function SetSpec(specname, specid) {
            var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
            if (isMSIE) {
                window.returnValue = specid + "," + specname;
                window.close();
            }
            else {
                opener.UpdateSpecial(specid + "," + specname);
                window.close();
            }
        }
        function ModifyUrl(selectinput, sid, hid) {
            if (selectinput.length == 0) return false;
            var thisurl = selectinput.value;
            if (thisurl == '') { alert('请先选择一个图片地址，再点修改按钮！'); return false; }
            var url = prompt('请输入图片地址名称和链接，中间用“|”隔开：', thisurl);
            if (url != thisurl && url != null && url != '') { selectinput.options[selectinput.selectedIndex] = new Option(url, url); }
            ChangeHiddenFieldValue(sid, hid);
        }

        function changaecolors() {
            document.getElementById('spanbgcolor').style.backgroundColor = document.getElementById('Titlecolor').value;
        }

        function storeCaret(textEl) {
            if (textEl.createTextRange)
                textEl.caretPos = document.selection.createRange().duplicate();
        }
        function insertAtCaretCallback(textEl) {
            if (textEl.toString().indexOf('||||||') > -1) {
                var srd = textEl.toString().split('||||||');

                KE.util.focus(srd[0]);
                KE.util.selection(srd[0]);
                KE.util.insertHtml(srd[0], srd[1]);

            }
        }

        function GetPicurl(imgurl) {
            var optlen = document.getElementById("selectpic").options.length;
            var isin = 0;
            for (var i = 0; i < optlen; i++) {
                var doctxt = document.getElementById("selectpic").options.item(i);
                if (doctxt.value.toLowerCase() == imgurl.toLowerCase() || imgurl.toLowerCase().indexOf("http://") > -1) {
                    isin = 1;
                }
            }

            if (isin == 0) {
                var option = document.createElement("option");
                option.text = imgurl;
                option.value = imgurl;
                document.getElementById("selectpic").add(option);
            }
        }

        function ShowPic(content) {
            if (content != "") {
                document.getElementById("picview").innerHTML = "<img width=100px height=100px src=" + content + " />";
            } else {
                document.getElementById("picview").innerHTML = "";
            }
        }

        function LoadImg(content) {
            eval("var oEditor = CKEDITOR.instances." + content);
            var contenttxt = oEditor.getData().toLowerCase();

            var myregexp = /src=\"(.*?).(gif|jpg|png)/img;
            var match = myregexp.exec(contenttxt);
            while (match != null) {
                var picurl = match[0];

                if (picurl.indexOf("http://") == -1) {
                    picurl = picurl.replace("src=\"", "")
                    GetPicurl(picurl);
                }
                else {
                    picurl = picurl.replace("src=\"", "")
                    GetPicurl(picurl);
                }
                match = myregexp.exec(contenttxt);
            }
        }
        function Addmap() {
            window.open('../Template/AddMap.aspx', 'newWin', 'modal=yes,width=900,height=600,resizable=yes,scrollbars=yes');
        }
    </script>
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
        function open_style() {
            var diag = new Dialog();
            diag.Width = 600;
            diag.Height = 400;
            diag.Title = "设置标题字体<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "../../Common/SelectStyle.htm";
            diag.show();



            //window.open("../../Common/SelectStyle.htm", "", "width=600,height=400")

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
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:HiddenField ID="nodename" runat="server" />
    <div class="r_navigation">
        后台管理gt;&gt; <a href="ContentManage.aspx">内容管理</a>&gt;&gt;<asp:Label ID="Label2" runat="server"
            Text="Label"></asp:Label>&gt;&gt;编辑内容</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td colspan="3" class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                内容信息
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                信息属性
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                流程控制
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                悬赏定义
            </td>
            <td id="Td3" class="tabnone">
            </td>
            <td id="Td1" class="tabnone">
                <img alt="" src="/images/up.gif" title="上一项" onclick="EditUp()" />
            </td>
            <td id="Td2" class="tabnone">
                <img alt="" src="/images/down.gif" title="下一项" onclick="EditDown()" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="所属节点"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtNode" CssClass="l_input" runat="server" Width="250px" Enabled="false"
                        Text="">
                    </asp:TextBox>&nbsp;<input id="Button2" class="C_input" type="button" value="更改节点"
                        style="width: 80px" onclick="AddNode('link')" />&nbsp;
                    <input id="Button4" class="C_input" type="button" value="添加到其他节点" onclick="AddNode('check')" />
                    <%--<asp:Label ID="txtNode" runat="server" Text="Label"></asp:Label>--%>
                    <table cellpadding="0" cellspacing="0" id="NondeTable" border="0">
                    </table>
                    <asp:HiddenField ID="hfNode" runat="server" Value="" />
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="zt_txt" runat="server" Text="所属专题"></asp:Label>
                    &nbsp;
                </td>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <table cellpadding="0" cellspacing="0" id="SpecTable" border="0">
                                </table>
                            </td>
                            <td valign="top">
                                &nbsp;<input type="button" class="C_input" id="Button5" value="添加到专题" onclick="AddToSpecial()" />
                                <asp:HiddenField ID="HdnSpec" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                style="display: none">
                <td class="tdbgleft" style="width: 20%;" align="right">
                    <asp:Label ID="btys_txt" runat="server" Text="标题颜色"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="Titlecolor" CssClass="l_input" runat="server" Text='' Width="10%"></asp:TextBox>
                    <script language="JavaScript" type="text/javascript">
                        function SelectColor(t, clientId) {
                            var url = "../Common/SelectColor.aspx?d=f&t=6";
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

                        function changevalue(selectvalue) {
                            if (selectvalue == "2") {
                                document.getElementById('changeins').style.display = '';
                            }
                            else {
                                document.getElementById('changeins').style.display = 'none';
                            }
                        }

                        function isgoEmpty(Str, FS_Alert) {
                            var Obj = document.getElementById(Str);
                            var value = Obj.value.replace(/(^\s*)|(\s*$)/g, "");
                            if (value == "") {
                                document.getElementById(FS_Alert).innerHTML = "<span style=\"color:Red\">数据不能为空</span>";
                                return false;
                            } else {
                                var Str_Len = "";
                                var Len_Color = "";
                                Str_Len = value.length;
                                if (Str_Len <= 50) {
                                    Len_Color = "006600";
                                }
                                else if (Str_Len > 50 && Str_Len <= 100) {
                                    Len_Color = "3300FF";
                                }
                                else if (Str_Len > 100) {
                                    Len_Color = "FF0000";
                                }
                                document.getElementById(FS_Alert).innerHTML = "<span>字数：<font style=\"color:#" + Len_Color + ";font-weight:bold;\">" + Str_Len + "</font></span>";
                                return true;
                            }
                        }

                        function query(ontxt, id) {
                            var str = document.getElementById(ontxt).value.trim();
                            if (str == "") return;
                            var arrRslt = makePy(str);
                            if (arrRslt.length > 0) {
                                document.getElementById(id).value = arrRslt.toString().toLowerCase().substring(0, 1);
                            }
                        }

                        function getstrKeys() {
                            document.getElementById("TxtTagKey").value = "";
                            var strKeys = "";
                            var strkey = "<%=getKey()%>";
                            var strTitle = document.getElementById("txtTitle").value;
                            var keys = new Array();
                            keys = strkey.split(",");
                            for (var i = 0; i < keys.length; i++) {
                                if (!(strTitle.indexOf(keys[i]) < 0)) {
                                    if (i == 0) {
                                        strKeys = keys[i];
                                    }
                                    else {
                                        strKeys = strKeys + " " + keys[i];
                                    }
                                }
                            }
                            var strtxt = document.getElementById("TxtTagKey").value;
                            document.getElementById("TxtTagKey").value = strtxt + strKeys;
                        }                        
                        
                        
                    </script>
                    &nbsp;<span id="spanbgcolor"><img alt="" onclick="SelectColor(this,'Titlecolor');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif"
                        align="absmiddle" style="border-width: 0px; cursor: pointer" /></span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label7" runat="server" Text="缩略拼音"></asp:Label>
                            &nbsp;
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td class="bqright">
                    <asp:TextBox ID="PYtitle" runat="server" Text='' Width="10%" CssClass="l_input" Height="19px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="bt_txt" runat="server" Text="内容标题"></asp:Label>
                    &nbsp;
                </td>
                <td class="tdbg">
                    <asp:TextBox ID="txtTitle" CssClass="l_input" onblur="getstrKeys()" onkeyup="isgoEmpty('txtTitle','span_txtTitle');query('txtTitle','PYtitle')"
                        runat="server" Text='' MaxLength="255" Style="width: 41%; background-image: url(/Images/bg.gif);"></asp:TextBox>
                    <span id="span_txtTitle" name="span_txtTitle"></span><span><span style="color:red">*</span></span>&nbsp;<input
                        id="Button3" type="button" value="标题属性" onclick="open_style()" class="C_input" />
                    <asp:HiddenField ID="ThreadStyle" runat="server" />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                        ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="gjz_txt" runat="server" Text="关健字"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="TxtTagKey" CssClass="l_input" runat="server" Text='' Width="50%"></asp:TextBox>
                    &nbsp;<span style="color: #0000ff"><input id="Button7" type="button" value="提取关键字"
                        onclick="getstrKeys()" class="C_input" style="width: 110px;" />【</span><a href="#"
                            onclick="SelectKey();"> <span style="text-decoration: underline; color: Green;">选择关键字</span></a><span
                                style="color: #0000ff">】</span> (使用空格分隔每个关键字)
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label21" runat="server" Text="副标题"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="Subtitle" runat="server" Text='' Width="400px" CssClass="l_input" Height="52px"
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%; line-height: 100px; height: 100px" align="right">
                    <div style="float: left; height: 100px; width: 150px; text-align: center;">
                        <label id="picview" name="picview">
                        </label>
                    </div>
                    <asp:Label ID="Label6" runat="server" Text="附属图片"></asp:Label>&nbsp;
                </td>
                <td class="bqright" style="line-height: 100px; height: 100px">
                    <select name="selectpic" id="selectpic" onchange="ShowPic(this.value)" onclick="LoadImg('txt_content')"
                        class="x_input">
                        <option value="" selected="selected">不指定附属图片</option>
                    </select>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                id="CreateHTML" runat="server">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="生成"></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:CheckBox ID="quickmake" runat="server" Checked="true" Text="是否立即生成" />&nbsp;
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs1" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <span>录入者</span> &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtInputer" CssClass="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <span>添加时间</span> &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtAddTime" CssClass="l_input" runat="server" onclick="calendar();"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <span>更新时间</span> &nbsp;
                </td>
                <td class="bqright">
                    &nbsp;<input id="Radio1" type="radio" name="date" runat="server" value="1" checked="true" />保持为原来的时间
                    <br />
                    &nbsp;<input id="Radio2" type="radio" name="date" runat="server" value="2" />自定义&nbsp;&nbsp;<asp:TextBox
                        CssClass="l_input" ID="txtdate" runat="server" Text="" onclick="calendar()" Width="20%">
                    </asp:TextBox><asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
                        ToolTip="鼠标点击左边输入框出现时间选择框" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="hits_txt" runat="server" Text="点击数"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtNum" CssClass="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <span>指定内容模板</span> &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="TxtTemplate" CssClass="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                    <input type="button" value="选择模板" class="C_input" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" />
                </td>
            </tr>
            <tr class="tdbg" id="outpdf" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="pdf_txt" runat="server" Text="生成PDF文件"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:CheckBox ID="Makepdf" runat="server" Text="启用" />
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs2" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="tj_txt" runat="server" Text="推荐级别"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:CheckBox ID="ChkAudit" Text="推荐" runat="server" />
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="zht_txt" runat="server" Text="状态"></asp:Label>
                    &nbsp; &nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="ddlFlow" runat="server" RepeatDirection="Horizontal" Width="155px">
                        <asp:ListItem Selected="True" Value="99">已审</asp:ListItem>
                        <asp:ListItem Value="0">待审</asp:ListItem>
                        <asp:ListItem Value="-1">退稿</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs3" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="发布悬赏"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="BidType" runat="server" onchange="changevalue(this.value);">
                        <asp:ListItem Value="0">选择方式</asp:ListItem>
                        <asp:ListItem Value="1">单人中标</asp:ListItem>
                        <asp:ListItem Value="2">记件工资</asp:ListItem>
                    </asp:DropDownList>
                    <div id="changeins" style="display: none">
                        我想要
                        <asp:TextBox ID="pronum" Width="30px" runat="server" CssClass="l_input">0</asp:TextBox>
                        个方案，每个
                        <asp:TextBox ID="bidmoney" Width="30px" runat="server" CssClass="l_input">0</asp:TextBox>
                        元
                    </div>
                </td>
            </tr>
            <tr id="bidmoneytable" class="tdbg" onmouseover="this.className='tdbgmouseover'"
                onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="项目完成周期"></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="proweek" runat="server" Width="30px" CssClass="l_input">0</asp:TextBox>
                    天
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnItem" runat="server" />
                <asp:HiddenField ID="HdnNode" runat="server" />
                <%--<input type="button" class="C_input" id="UpButton" name="UpButton" value="编辑上一项" onclick="EditUp()" />
               <input type="button" class="C_input" id="DownButton" name="DownButton" value="编辑下一项" onclick="EditDown()" />--%>
                <asp:Button ID="EBtnSubmit" CssClass="C_input" Text="保存项目" OnClick="EBtnSubmit_Click"
                    runat="server" />&nbsp;
                <asp:Button ID="Button1" CssClass="C_input" Text="添加为新项目" runat="server" OnClick="Button1_Click" />&nbsp;
                <asp:Button ID="BtnBack" CssClass="C_input" runat="server" Text="返　回" OnClick="BtnBack_Click"
                    UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <br />
    <b>注：分页符：[PageCode/]</b>
    <script type="text/javascript">
        window.onload = function () {

            if (document.getElementById('BidType').value == '2') {
                document.getElementById('changeins').style.display = '';
            } else {
                document.getElementById('changeins').style.display = 'none';
            }

            if (document.getElementById('<%=txtNode.ClientID%>') != null) {
                var strp = window.document.getElementById("<%=HdnSpec.ClientID%>").value;
                var strarrp = strp.split(",");
                var sp = "";
                if (strarrp.length > 0) {
                    for (var iip = 0; iip < strarrp.length; iip++) {
                        if (strarrp[iip] != "") {
                            var sarrp = strarrp[iip].split("|");

                            AddRow(sarrp[1], sarrp[0], document.all.SpecTable, "此专题", 2);

                            sp += sarrp[0] + ",";
                        }
                    }
                }

                window.document.getElementById('<%=HdnSpec.ClientID%>').value = sp;
                var str = window.document.getElementById('<%=hfNode.ClientID%>').value;
                var strarr = str.split(",");
                var s = ""; //alert(str);
                if (strarr.length > 0) {
                    if (strarr[0].indexOf('|') > -1) {
                        var sa = strarr[0].split("|");
                        if (sa.length > 2) {
                            s += sa[0] + ",";
                            var xx = sa[1];
                            if (xx != "") {
                                window.document.getElementById('<%=txtNode.ClientID%>').value = sa[1].replace("&gt;&gt;", ">>");
                            }
                            for (var ii = 0; ii < strarr.length; ii++) {
                                if (ii > 0) {
                                    if (strarr[ii] != "") {
                                        var sarr = strarr[ii].split("|");
                                        AddNodeRow(sarr[1], sarr[0]);
                                        s += sarr[0] + ",";
                                    }
                                }
                            }
                        }
                    }
                }
                ///window.document.getElementById('<%=hfNode.ClientID%>').value = s;
            }
        }
    </script>
    <script type="text/javascript">

        function change(id) {
            var hid = id.substr(5);
            if ($("select[id*='" + id + "']").val() == "0") {
                $("iframe[id*='" + id + "']").hide();
                $("#" + hid).val("0");
                return false;
            }
            $("iframe[id*='" + id + "']").show();
            var vas = $("select[id*='" + id + "']").val().split('*');
            var cid = vas[0];
            var srcva;
            if (vas[1] == "饼状图") {
                srcva = "/manage/Charts/pie-basic.aspx?Cid=" + cid;
            } else if (vas[1] == "线状图") {
                srcva = "/manage/Charts/line.aspx?Cid=" + cid;
            } else {
                srcva = "/manage/Charts/colum.aspx?Cid=" + cid;
            }
            $("iframe[id*='" + id + "']").attr({ "width": vas[2], "height": vas[3], "src": srcva });

            $("#" + hid).val(cid);
        }
        //        function TbAdd() {
        //            $("#shBa").css("top", event.clientY + 30);
        //            $("#shBa").show();
        //        }
        //        function clo() {
        //            $("#shBa").hide();
        //        }
        function ShowS(id) {
            $("select[id*='" + id + "']").show();
            $("input[id*='" + id + "'][value*='另选图表']").hide();
        }
        function seAd(id) {
            $.get("../Flex/CAddChart.aspx?addw=true", function (data) {
                var das = data.split('|'); //'86*饼状图*300*200'
                $("select[id*='" + id + "']").append("<option selected='selected' value='" + das[0] + "*" + das[1] + "*" + das[3] + "*" + das[4] + "'>" + das[2] + "</option>");
                change(id);
            })
        }
        function Uifra(width, height, title, type, id) {
            var hid = id.substr(5);

            var val = $("#" + hid).val() + "*" + type + "*" + width + "*" + height + "*" + id;
            $("select[id*='" + id + "'] option:selected").remove();
            var vas = val.split('*');
            var cid = vas[0];
            var srcva;
            srcva = "/manage/Charts/Show.aspx?Did=" + cid;

            $("iframe[id*='" + id + "']").attr({ "width": vas[2], "height": vas[3] })
            $("iframe[id*='" + id + "']").attr("src", srcva);
            var hid = id.substr(5);

            $("#" + hid).val(cid);

            $("select[id*='" + id + "']").append("<option selected='selected' value='" + val + "'>" + title + "</option>");
        }
        function Uchart(id) {
            var hid = id.substr(5);

            window.open('/manage/Flex/CAddChart.aspx?cdid=' + id + '&ChartID=' + $("#" + hid).val(), 'newWin', 'modal=yes,width=800,height=500,resizable=yes,scrollbars=yes');
        }
    </script>
    <input type="hidden" value="" id="va" />
    <%--<div id="shBa" style="z-index: 1; left:10%;position: absolute;height:550px; width:800px;display:none;">
    <div style="font-size:15px;cursor:pointer;position: absolute;padding:3px;width:100%;text-align:center;" onclick="clo()">关闭</div>
<iframe src="/manage/Flex/AddChart.aspx" width="800" height="550" style="float:left;"  frameborder="0" scrolling="no"></iframe>
</div>--%>
    </form>
</body>
</html>
