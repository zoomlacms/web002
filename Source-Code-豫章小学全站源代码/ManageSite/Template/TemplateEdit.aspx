<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Template.TemplateEdit, App_Web_lfti5d2r" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑模板</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>

<style type="text/css">
    <!-- 
    .dragspandiv{
        background-color: #FFFBF5;
        FILTER: alpha(opacity=70);
        border: 1px solid #F6B9D6;
        text-align: center;
        overflow:hidden;
        padding:2px;
        height:20px;
    }
    .spanfixdiv{
        background-color: #FFFBF5;
        border: 1px solid #F6B9D6;
        text-align: center;
        overflow:hidden;
        cursor: hand;
        height:20px;
        margin: 4px;
    }
    
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
        -->
</style>

<script type="text/javascript">    
<!--
var start=0, end=0;
var x,y;
var dragspan;
var inserttext;
var nn6=document.getElementById&&!document.all;
var isdrag=false;
var labeltype = '0';

function initDrag(e) {
    var oDragHandle = nn6 ? e.target : event.srcElement;
    if (oDragHandle.className=="spanfixdiv")
    {
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

function dragend(textBox)
{   
    if(isdrag)
    {
        savePos(textBox);
        cit();
    }
}

function savePos(textBox) 
{
    if(typeof(textBox.selectionStart) == "number"){
        start = textBox.selectionStart;
        end = textBox.selectionEnd;
    }
}

function cit() {
    //var oEditor = FCKeditorAPI.GetInstance('textContent');
    var target = document.getElementById('<% =textContent.ClientID %>');
    if(nn6)
    {
        var pre = target.value.substr(0, start);
        var post = target.value.substr(end);
        if(labeltype == '1')
        {
            target.value = pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post;
            //oEditor.InsertHtml(pre + "{ZL.Label id=\"" + inserttext + "\"/}" + post);           
        }
        else if(labeltype == '2')
        {
            
            var link= "Insertlabel.aspx?n=" + escape(inserttext);
            if(window.showModalDialog != null)
            {
                var ret = showModalDialog(link,'','dialogWidth:500px; dialogHeight:300px; help: no; scroll: no; status: no; edge: sunken;');
                if (ret != null)
                {
                    if (ret.replace(/^\s+|\s+$/g,"") == "")
                    {
                        alert("不能输入空值");
                    }
                    else
                    {
                        target.value = pre + ret + post;
                        //oEditor.InsertHtml(pre + ret + post); 
                    }
                }
            }
            else
            {
                window.open(link,window,'modal=yes,width=500,height=300,menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no');
            }
        }
        else
        {
            target.value = pre + inserttext + post;
            //oEditor.InsertHtml(pre + inserttext + post); 
        }
    }
    else {
        target.focus();
        var range = document.selection.createRange();
        if(labeltype == '1')
        {
            range.text = "{ZL.Label id=\"" +inserttext + "\"/}";
            //oEditor.InsertHtml("{ZL.Label id=\"" + inserttext + "\"/}"); 
        }
        else if(labeltype == '2')
        {
            var link= "Insertlabel.aspx?n=" + escape(inserttext);
            if(window.showModalDialog != null)
            {
                var ret = showModalDialog(link,'','dialogWidth:500px; dialogHeight:300px; help: no; scroll: no; status: no; edge: sunken;');
                if (ret != null)
                {
                    if (ret.replace(/^\s+|\s+$/g,"") == "")
                    {
                        alert("不能输入空值");
                    }
                    else
                    {
                        range.text = ret;
                        //oEditor.InsertHtml(ret); 
                    }
                }
            }
            else
            {
                window.open(link,window,'modal=yes,width=500,height=300,menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no');
            }            
        }
        else if(labeltype=='3')
        {
            range.text="{ZL.Source id=\"" +inserttext + "\"/}";
            //oEditor.InsertHtml("{ZL.Source id=\"" + inserttext + "\"/}"); 
        }        
        else if(labeltype=='5')
        {
            range.text = "{ZL.Page id=\"" + inserttext + "\"/}";
            //oEditor.InsertHtml("{ZL.Page id=\"" + inserttext + "\"/}");           
        }
        else if(labeltype=='6')
        {
            range.text = "{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}";
            //oEditor.InsertHtml("{ZL.Page id=\"" + inserttext + "\" num=\"500\"/}");   
        }
        else {
            //oEditor.InsertHtml(inserttext);           
            range.text = inserttext;
        }
    }    
}

function DragPos(textBox) 
{
    if(isdrag)
    {
        if(nn6)
        {
            textBox.focus();
        }
        else
        {
            var rng = textBox.createTextRange(); 
            rng.moveToPoint(event.x,event.y); 
            rng.select(); 
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

//function changeCell() {
//    var obj = document.getElementsByTagName("div");
//    var cd = 0;
//    for (var i = 0; i < obj.length; i++) {
//        if (obj[i].id == "edit") {
//            cd = cd + 1;
//            obj[i].innerHTML = "<iframe id='txt_content' src='/editor/fckeditor_edit.html?InstanceName=textContent&Toolbar=Default' width='100%' height='400px' frameborder='no' scrolling='no'></iframe>";
//        }
//    }
//}
   

-->
</script>
<script type="text/javascript">
    function Toggle() {
        var oEditor;
        if (typeof (FCKeditorAPI) != 'undefined')
            oEditor = FCKeditorAPI.GetInstance('DataFCKeditor');

        var eTextareaDiv = document.getElementById('Textarea');
        var eFCKeditorDiv = document.getElementById('FCKeditor');

        if (eTextareaDiv.style.display != 'none') {
            if (!oEditor) {
                CreateEditor();
            }
            else {
                oEditor.SetData(document.getElementById('textContent').value);
            }

            eTextareaDiv.style.display = 'none';
            Div1.style.display = 'none'; ;
            eFCKeditorDiv.style.display = '';
            Div2.style.display = '';

            if (oEditor && !document.all) {
                if (oEditor.EditMode == FCK_EDITMODE_WYSIWYG)
                    oEditor.MakeEditable();
            }
        }
        else {
            document.getElementById('textContent').value = oEditor.GetXHTML(true);
            eTextareaDiv.style.display = '';
            Div1.style.display = '';
            eFCKeditorDiv.style.display = 'none';
            Div2.style.display = 'none';
        }
        parent.document.getElementById("main_right").height = document.body.offsetHeight;
    }

    function CreateEditor() {
        document.getElementById('DataFCKeditor').value = document.getElementById('textContent').value;
        var sBasePath = document.location.href.substring(0, document.location.href.lastIndexOf('editor'));


        var oFCKeditor = new FCKeditor('DataFCKeditor');
        oFCKeditor.BasePath = sBasePath;


        var sSkin = "silver";
        var sSkinPath = '/editor/skins/' + sSkin + '/';
        oFCKeditor.Config['SkinPath'] = sSkinPath;
        oFCKeditor.Config['PreloadImages'] =
		sSkinPath + 'images/toolbar.start.gif' + ';' +
		sSkinPath + 'images/toolbar.end.gif' + ';' +
		sSkinPath + 'images/toolbar.buttonbg.gif' + ';' +
		sSkinPath + 'images/toolbar.buttonarrow.gif';
        
        
        
        oFCKeditor.Width = '100%';
        oFCKeditor.Height = '450';
        oFCKeditor.ReplaceTextarea();
    }
 
    function FCKeditor_OnComplete(editorInstance) {
        document.getElementById('BtnSwitchTextarea').disabled = false;
    }

    function PrepareSave() {
        if (document.getElementById('Textarea').style.display == 'none') {
            var oEditor = FCKeditorAPI.GetInstance('DataFCKeditor');
            document.getElementById('textContent').value = oEditor.GetXHTML(true);
        }
    }
 
</script>

<script type="text/javascript" src="/editor/fckeditor_edit.js"></script>

<script language="javascript" type="text/javascript">
    //    function FCKeditor_OnComplete(editorInstance) {
    //        editorInstance.SwitchEditMode();
    //    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
             <div class="column">
        <div class="columntitle">
           编辑模板 &nbsp;&nbsp;&nbsp;&nbsp;文件名：
                            <asp:TextBox ID="TxtFilename" runat="server"></asp:TextBox>
                            <asp:Label ID="lblFielName" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;路径:
                            <%=ShowPath%>
                            <asp:HiddenField ID="HdnShowPath" runat="server" />
                            <asp:HiddenField ID="Hdnmethod" runat="server" />
                            <asp:HiddenField ID="HdnFilePath" runat="server" />
                            &nbsp;&nbsp;注意：模板文件命名必须是[文件名.html或.htm]格式！</div>
                <table width="99%" cellpadding="2" border="0" cellspacing="1"  align="center">
                    <tr class="tdbg">
                        <td align="left" style="height: 410px" valign="top">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 252px; vertical-align: top;" id="frmTitle">
                                        <div id="Tab1_header">
                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                <tr align="center">
                                                    <td id="TabTitle0" runat="server"  class="titlemouseover"  onclick="ShowTabs(0)">
                                                        自定标签
                                                    </td>
                                                    <td id="TabTitle1" class="tabtitle" runat="server"  onclick="ShowTabs(1)">
                                                        数据字段
                                                    </td>
                                                    <td id="TabTitle2"  class="tabtitle" onclick="ShowTabs(2)">
                                                        系统标签
                                                    </td>
                                                    <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                                                        扩展函数
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                            <div style="height:433px;  border:1px solid #86C0DF;">
                                            <table width="100%" border="0" cellpadding="" cellspacing="0">
                                                <tbody id="Tabs0" runat="server">
                                                    <tr align="center">
                                                        <td>
                                                            <asp:DropDownList ID="DDLCate" runat="server" DataValueField ="LabelCate" DataTextField="LabelCate" OnSelectedIndexChanged="ChangeCate" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr align="center">
                                                        <td>
                                                            <div style="overflow: auto; height: 410px">
                                                                <asp:Label ID="LblLabel" runat="server"></asp:Label></div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <tbody id="Tabs1" runat="server" style="display: none">
                                                    <tr align="center">
                                                        <td>
                                                            <asp:DropDownList ID="DDLField" runat="server" DataValueField ="LabelID" DataTextField="LabelName"  OnSelectedIndexChanged="ChangeSourceField" AutoPostBack="true">
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
                                            </div>
                                        </div>
                                    </td>
                                    <td height="435x" align="left">
                                        <a href="#" onclick='javascript:if(confirm("返回将放弃当前修改，是否继续？")) window.location.href="TemplateManage.aspx?nid=<%=Request.QueryString["nid"]%>&Dir=<%=Server.UrlEncode(Request.QueryString["Dir"]) %>";'>返回模板列表</a>
                                        
               
                                      <div id="Textarea">
            <asp:TextBox TextMode="MultiLine" runat="server" ID="textContent" Width="100%" Height="435px"></asp:TextBox>
		</div>

		<div id="FCKeditor" style="display: none">
			<textarea id="DataFCKeditor" cols="80" rows="20"></textarea>
		</div>
                                        
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="tdbg">
                <td align="left">
                 <div style="float:left; padding-left:250px">
                    <asp:Button ID="btnSave" runat="server" Text="保存模板" CssClass="button" OnClick="btnSave_Click" OnClientClick="PrepareSave()" />&nbsp;&nbsp;&nbsp;<asp:Button ID="btnReset" CssClass="button" runat="server" Text="恢复模板" OnClick="btnReset_Click" />&nbsp;&nbsp;&nbsp;
        </div>
        
        <div id="Div1" style="float:left">
			<input type="button" value="可视化预览"  Class="button"  onclick="Toggle()" />
		</div>

		<div id="Div2" style="display: none" style="float:left">
			<input id="BtnSwitchTextarea" type="button"  Class="button"  disabled="disabled" value="返回代码编辑" onclick="Toggle()" />
		</div>
		
                </td>
            </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
  
    </div>
    </form>
</body>
</html>
