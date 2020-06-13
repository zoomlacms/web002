<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Template.PageLabel, App_Web_0medrxrm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title>分页标签编辑</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
        padding: 2px 2px 2px 2px; 
        width: 80px;
        height: 25px;
        float: left;
        text-align: center;
        margin: 5px;
        overflow:hidden;
        cursor: hand;
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

function initDrag(e)
{
    var oDragHandle = nn6 ? e.target : event.srcElement;
    if (oDragHandle.className=="spanfixdiv"||oDragHandle.className=="spanfixdiv1")
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

function cit()
{
    var target = document.getElementById('<% =TxtLabelTemplate.ClientID %>');
    if(nn6)
    {
        var pre = target.value.substr(0, start);
        var post = target.value.substr(end);
        target.value = pre + inserttext + post;        
    }
    else
    {
        target.focus();
        var range = document.selection.createRange();
        range.text = inserttext;
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
    isdrag=false;
    if(dragspan != null)
    {
        document.body.removeChild(dragspan);
        dragspan = null;
    }
}
    -->
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<a href="LabelManage.aspx">标签管理</a>&gt;&gt;<span>动态标签设置</span>
	</div>
    <div class="clearbox"></div>
    <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" colspan="2" align="center" style="height: 26px">
                <b>分页标签设置</b></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 80px">
                <strong>标签名称：&nbsp;</strong></td>
            <td class="tdbg" align="left">
                <asp:TextBox ID="TxtLabelName" class="l_input" runat="server" Width="288px" />
                <asp:RequiredFieldValidator runat="server" ID="NReq" ControlToValidate="TxtLabelName"
                    Display="Dynamic" ErrorMessage="请输入标签名称" ></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtLabelName"
                    ErrorMessage="标签名称重复" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width: 80px">
                <strong>标签分类：&nbsp;</strong></td>
            <td class="tdbg" align="left">
                <asp:DropDownList ID="DDLType" runat="server">
                    <asp:ListItem Selected="True" Value="5">列表分页</asp:ListItem>
                    <asp:ListItem Value="6">内容分页</asp:ListItem>
                </asp:DropDownList>              
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 80px">
                <strong>标签说明：&nbsp;</strong></td>
            <td class="tdbg" align="left">
                <asp:TextBox ID="TxtLabelIntro" class="l_input" runat="server"  TextMode="MultiLine" Columns="50" Rows="3" Height="60px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>标签内容：&nbsp;</strong></td>
            <td class="tdbg" align="left">
                <table style="width: 95%">
                    <tr>
                        <td>
                            <div id="labellist">
                                <div code="{totalrecord/}" onclick="cit()" class="spanfixdiv">
                                    总记录</div>
                                <div code="{totalpage/}" onclick="cit()" class="spanfixdiv">
                                    总页数</div>
                                <div code="{pagesize/}" onclick="cit()" class="spanfixdiv">
                                    每页显示数</div>
                                <div code="{currenturl/}" onclick="cit()" class="spanfixdiv">
                                    当前页路径</div>
                                <div code="{firsturl/}" onclick="cit()" class="spanfixdiv">
                                    首页地址</div>
                                <div code="{prvurl/}" onclick="cit()" class="spanfixdiv">
                                    上一页地址</div>
                                <div code="{nexturl/}" onclick="cit()" class="spanfixdiv">
                                    下一页地址</div>
                                <div code="{endurl/}" onclick="cit()" class="spanfixdiv">
                                    尾页地址</div>                                   
                                <div code="{currentpage/}" onclick="cit()" class="spanfixdiv">
                                    当前页码</div>
                                <div code="{prvpage/}" onclick="cit()" class="spanfixdiv">
                                    上一页页码</div>
                                <div code="{nextpage/}" onclick="cit()" class="spanfixdiv">
                                    下一页页码</div>
                                <div code="{endpage/}" onclick="cit()" class="spanfixdiv">
                                    尾页页码</div>
                                <div code="{loop range=\'显示半径\'}循环代码$$$当前代码{/loop}" onclick="cit()" class="spanfixdiv">
                                    分页循环</div>
                                <div code="{pageid/}" onclick="cit()" class="spanfixdiv">
                                    循环内页码</div>                                
                                <div code="{pageurl/}" onclick="cit()" class="spanfixdiv">
                                    循环内路径</div>
                            </div>
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td>
                            <asp:TextBox ID="TxtLabelTemplate" class="l_input"  runat="server" Height="250px" Wrap="true" Width="100%" TextMode="MultiLine"
                                Rows="12" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                 ControlToValidate="TxtLabelTemplate" runat="server" ErrorMessage="标签内容不可以为空！"></asp:RequiredFieldValidator>
                                                  
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center" colspan="2" style="height: 21px">
                <asp:HiddenField ID="HdnlabelID" runat="server" />
                &nbsp;
                &nbsp;<asp:Button ID="BtnSave" class="C_input"  OnClick="BtnSave_Click"
                        runat="server" Style="cursor: pointer; cursor: hand; width: 88px;" Text="保存标签" />&nbsp;&nbsp;&nbsp;<input id="BtnCancel" type="button"
                        class="C_input" value="取　消" onclick="window.location.href='LabelManage.aspx'" style="cursor: pointer;  cursor: hand; width: 88px;" />
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>