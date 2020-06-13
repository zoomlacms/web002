<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Template.TemplateEdit, App_Web_balgrtw4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑模板</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>   
<script language="JavaScript"> 
    function hotkey() {
        var a = window.event.keyCode;
        //alert(a);
        if (window.event.altKey && a == 88) {
            opentitle("LabelPage.aspx", "选择标签[按ESC键关闭窗口]");
        }
        //window.event.returnValue = false; 
        //return false;
    } // end hotkey 

    document.onkeydown = hotkey; //当onkeydown 事件发生时调用hotkey函数 
//--> 
</script>
<style type="text/css">
    .dragspandiv
    {
        background-color: #FFFBF5;
        filter: alpha(opacity=70);
        border: 1px solid #F6B9D6;
        text-align: center;
        overflow: hidden;
        padding: 2px;
        height: 20px;
    }
    .spanfixdiv
    {
        background-color: #FFFBF5;
        border: 1px solid #F6B9D6;
        text-align: center;
        overflow: hidden;
        cursor: hand;
        height: 20px;
        margin: 4px;
    }
    .spanfixdivchechk
    {
        background-color: #FFFBF5;
        border: 1px solid #F6B9D6;
        text-align: center;
        overflow: hidden;
        cursor: hand;
        height: 20px;
        margin: 4px 4px 4px 0px;
        float: left;
        width: 75%;
        overflow: hidden;
    }
    .editdiv
    {
        text-align: center;
        overflow: hidden;
        cursor: hand;
        height: 20px;
        margin: 6px 0px 4px 2px;
        float: left;
        width: 12%;
    }
    #fixdiv
    {
        margin: 7px;
    }
    .nodefixdiv
    {
        background-color: #FFFBF5;
        border: 1px solid #F6B9D6;
        text-align: center;
        overflow: hidden;
        cursor: hand;
        padding: 2px;
        height: 20px;
    }
    .alertspandiv
    {
        background-color: #FFEBE5;
        border: 1px solid #F6B9D6;
        text-align: center;
        text-valign: middle;
        padding: 2px;
        height: 30px;
        width: 100px;
    }
    #I1
    {
        height: 31px;
        width: 99%;
    }
</style>
<script type="text/javascript">    
    var start = 0, end = 0;
    var x, y;
    var dragspan;
    var inserttext;
    var nn6 = document.getElementById && !document.all;
    var isdrag = false;
    var labeltype = '0';

    function initDrag(e) {

        var oDragHandle = nn6 ? e.target : event.srcElement;
        if (oDragHandle.className == "spanfixdiv" || oDragHandle.className == "spanfixdivchechk") {
            isdrag = true;
            dragspan = document.createElement('div');
            dragspan.style.position = "absolute";
            dragspan.className = "dragspandiv";
            y = nn6 ? e.clientY + 5 : event.clientY + 5;
            x = nn6 ? e.clientX + 10 : event.clientX + 10;
            dragspan.style.width = oDragHandle.style.width;
            dragspan.style.height = oDragHandle.style.height;
            dragspan.style.top = y + "px";
            dragspan.style.left = x + "px";
            dragspan.innerHTML = oDragHandle.innerHTML;
            document.body.appendChild(dragspan);
            document.onmousemove = moveMouse;
            inserttext = oDragHandle.getAttribute("code");
            labeltype = oDragHandle.getAttribute("outtype");
            return false;
        }
    }

    function moveMouse(e) {
        if (isdrag) {
            dragspan.style.top = (nn6 ? e.clientY : event.clientY) + document.documentElement.scrollTop + 5 + "px";
            dragspan.style.left = (nn6 ? e.clientX : event.clientX) + document.documentElement.scrollLeft + 10 + "px";
            return false;
        }
    }

    function dragend(textBox) {
        if (isdrag) {
            savePos(textBox);
            cit();
        }
    }

    function savePos(textBox) {
        if (typeof (textBox.selectionStart) == "number") {
            start = textBox.selectionStart;
            end = textBox.selectionEnd;
        }
    }

    function cit() { 
        //var oEditor = FCKeditorAPI.GetInstance('textContent');
        var targetEdit = document.getElementById('<% =textContent.ClientID %>');
        if (nn6) {
            var pre = targetEdit.value.substr(0, start);
            var post = targetEdit.value.substr(end);
                
            if (labeltype == '1') { 
                targetEdit.value = pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post;
                //oEditor.InsertHtml(pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post);           
            }
            else if (labeltype == '2') { 

                var link = "Insertlabel.aspx?n=" + escape(inserttext);
                if (window.showModalDialog != null) {
                    var ret = showModalDialog(link, '', 'dialogWidth:500px; dialogHeight:300px; help: no; scroll: no; status: no; edge: sunken;');
                    if (ret != null) {
                        if (ret.replace(/^\s+|\s+$/g, "") == "") {
                            alert("不能输入空值");
                        }
                        else {
                            targetEdit.value = pre + ret + post;
                        }
                    }
                }
                else {
                    window.open(link, window, 'modal=yes,width=500,height=300,menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no');
                }
            }
            else if (labeltype == '3') { 
                targetEdit.value = pre + "{ZL.Source id=\"" + inserttext + "\"/}" + post;
                //oEditor.InsertHtml(pre + inserttext + post); 
            }
            else if (labeltype == '5') { 
                targetEdit.text = "{ZL.Page id=\"" + inserttext + "\"/}";
            }
            else if (labeltype == '6') { 
                targetEdit.text = "{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}";
            }
            else{ 
                targetEdit.value = pre +  inserttext + post;
                //oEditor.InsertHtml(pre + inserttext + post); 
            }
			 
        }
        else {  
            targetEdit.focus();
            var s = targetEdit.scrollTop; //获得滚动条的位置

            var range = document.selection.createRange();
               
            if (labeltype == '1') {  
                range.text = "{ZL.Label id=\"" + inserttext + "\"/}";
            }
            else if (labeltype == '2') {  
                var link = "Insertlabel.aspx?n=" + escape(inserttext);
                if (window.showModalDialog != null) {
                    var ret = showModalDialog(link, '', 'dialogWidth:500px; dialogHeight:300px; help: no; scroll: no; status: no; edge: sunken;');
                    if (ret != null) {
                        if (ret.replace(/^\s+|\s+$/g, "") == "") {
                            alert("不能输入空值");
                        }
                        else {
                            range.text = ret;
                        }
						
                    }
                }
                else {
                    window.open(link, window, 'modal=yes,width=500,height=300,menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no');
                }
            }
            else if (labeltype == '3') {
                range.text = "{ZL.Source id=\"" + inserttext + "\"/}";
            }
            else if (labeltype == '5') {
                range.text = "{ZL.Page id=\"" + inserttext + "\"/}";        
            }
            else if (labeltype == '6') {
                range.text = "{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}";
            }
            else {         
                range.text = inserttext;
            }
            range.select();
            targetEdit.scrollTop = s; //把滚动条恢复到以前的位置
        }
    }

    function DragPos(textBox) { 
        if (isdrag) {
            if (nn6) {
                textBox.focus();
            }
            else {
                var rng = textBox.createTextRange();
                try {
                    rng.moveToPoint(event.x, event.y);
                    rng.select();
                } catch (Error)
                { }
            }
        }
    }

    document.onmousedown = initDrag;

    document.onmouseup = function() {
        isdrag = false;
        if (dragspan != null) {
            document.body.removeChild(dragspan);
            dragspan = null;
        }
    }
</script>   
<script language="javascript" type="text/javascript">
    function addubb(ubb) {
        //Form1.top.value=Form1.top.value+ubb;
        var textEl = form1.textContent;
        var text = ubb;
        if (textEl.createTextRange && textEl.caretPos) {
            var caretPos = textEl.caretPos;
            caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
        }
        else
            textEl.value = textEl.value + text;
    }
</script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">    
    var diag = new Dialog();
    function openurls(url) {
        Dialog.open({ URL: url });
    }

    function opentitle(url, title) {
        diag.Width =800;
        diag.Height = 600;
        diag.Title = title;
        diag.URL = url;
        diag.show();
        skin:'v2';
        enterMode: 2;
        shiftEnterMode: 2;
    }

    function closdlg() {
        Dialog.close();
    }
    function op() {
        window.open('../Template/Default.aspx', '', 'width=600,height=450,resizable=1,scrollbars=yes', 'createEditor()');
        return false;
    }
    var editor;
    function createEditor() {
        var html = document.getElementById('textContent').value;
        if (document.getElementById("buttons").value == "可视化预览") {                
            document.getElementById('textContent').style.display = "none";
            editor = CKEDITOR.replace('<% =textContent.ClientID %>',
    {
        skin: 'v2',
        enterMode: 2,
        shiftEnterMode: 2,
        width: "100%", height: 410,
        toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
    });
            editor.setData(html);
            document.getElementById("buttons").value = "返回代码编辑";
        } else {
            if (editor) {
                var oEditor = CKEDITOR.instances.textContent;
                document.getElementById('textContent').value = editor.getData();
                document.getElementById('textContent').style.display = '';
                editor.destroy();
                editor = null;
                document.getElementById("buttons").value = "可视化预览";
            }
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">    
<div class="r_navigation">后台管理&gt;&gt;系统设置&gt;&gt; <a style="cursor:pointer" onclick="javascript:if(confirm('返回将放弃当前修改，是否继续？')) window.location.href='TemplateManage.aspx';">模板管理</a>&gt;&gt;模板编辑</div>

    <table width="100%" cellpadding="2" border="0" cellspacing="1" class="border" align="center">
            <tr class="title" style="font-weight:normal;">
                <td align="left" colspan="2">
                     &nbsp;<%=ShowPath.Trim()%><asp:TextBox ID="TxtFilename" class="l_input" runat="server"></asp:TextBox>
                    <asp:Label ID="lblFielName" runat="server" Text="Label"></asp:Label>
                    <asp:HiddenField ID="HdnShowPath" runat="server" />
                    <asp:HiddenField ID="Hdnmethod" runat="server" />
                    <asp:HiddenField ID="HdnFilePath" runat="server" />
                    &nbsp;&nbsp;注意：模板后缀名须为.html或.htm格式！
                </td>
            </tr>
            <tr class="tdbg">
                <td align="left" style="height: 410px" width="322px" valign="top">
                    <div id="Tab1_header">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr align="center">
                                <td id="TabTitle0" runat="server" class="titlemouseover" onclick="ShowTabs(0)">
                                    自定标签
                                </td>
                                <td id="TabTitle1" runat="server" class="tabtitle" onclick="ShowTabs(1)">
                                    数据字段
                                </td>
                                <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                                    系统标签
                                </td>
                                <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                                    扩展函数
                                </td>
                                <td>&nbsp;
                                    
                                </td>
                            </tr>
                        </table>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 96%">
                                    <tbody id="Tabs0" runat="server">
                                        <tr align="center">
                                            <td>
                                                <asp:DropDownList ID="DDLCate" runat="server" OnSelectedIndexChanged="ChangeCate"
                                                    AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td>
                                                <div style="overflow: auto; height: 410px">
                                                    <asp:Label ID="LblLabel" runat="server"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tbody id="Tabs4" runat="server">
                                    </tbody>
                                    <tbody id="Tabs1" runat="server" style="display: none">
                                        <tr align="center">
                                            <td>
                                                <asp:DropDownList ID="DDLField" runat="server" OnSelectedIndexChanged="ChangeSourceField"
                                                    AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td>
                                                <div style="overflow: auto; height: 410px">
                                                    <asp:Label ID="LblSourceField" runat="server"></asp:Label></div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tbody id="Tabs2" style="display: none">
                                        <tr align="center">
                                            <td>
                                                <div style="overflow: auto; height: 410px">
                                                    <asp:Label ID="lblSys" runat="server"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tbody id="Tabs3" style="display: none">
                                        <tr align="center">
                                            <td>
                                                <div style="overflow: auto; height: 410px">
                                                    <asp:Label ID="lblFun" runat="server"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </td>
                <td height="435x" align="left">
                    <iframe style="height: 30px; width: 530px;" frameborder="0" name="I1" id="I1" scrolling="no"
                        src="label.htm"></iframe>
                    <div id="Textarea">
                        <asp:TextBox TextMode="MultiLine" runat="server" ID="textContent" Style="border: solid 1px #8EC1EE"
                            Width="100%" Height="435px"></asp:TextBox>
                    </div>
                </td>
            </tr>
            <tr class="tdbg">
                <td align="left" colspan="2">
                    <div style="float: left; padding-left: 250px">
                        <asp:Button ID="btnSave" runat="server" Text="保存模板" Class="C_input" OnClick="btnSave_Click"
                            OnClientClick="PrepareSave()" />&nbsp;&nbsp;&nbsp;<asp:Button ID="btnReset" Class="C_input"
                                runat="server" Text="恢复模板" OnClick="btnReset_Click" />&nbsp;&nbsp;&nbsp;
                    </div>
                    <div id="Div1" style="float: left">
                    <asp:Button ID="btn" runat="server" Text="可视化预览" class="C_input"  onclick="btn_Click" />
                        <%--<input type="button" id="buttons" name="buttons" value="可视化预览" class="C_input" onclick="opentitle('Default.aspx','可视化窗口')" />--%>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>