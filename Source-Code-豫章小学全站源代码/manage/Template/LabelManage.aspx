<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.LabelManage, App_Web_balgrtw4" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>标签管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript" src="../../JS/jquery-1.4.js"></script>
<script type="text/javascript" language="javascript" src="../../JS/prototype-1.5.1.js"></script>

<script type="text/javascript"> 
function showmenu(e, vmenu, mod, tops) {
    if (tops == null) {
        tops = menuOffY;
    }

    if (!vmenu) { return false; } //如果空则不显示
    var which = vmenu
    menuobj = $("popmenu")
    menuobj.innerHTML = which
    menuobj.contentwidth = menuobj.offsetWidth
    eventX = e.clientX
    eventY = e.clientY
    var rightedge = document.body.clientWidth - eventX
    var bottomedge = document.body.clientHeight - eventY
    var getlength
    if (rightedge < menuobj.contentwidth) {
        getlength = ie4 ? document.body.scrollLeft + eventX - menuobj.contentwidth + menuOffX : ns6 ? window.pageXOffset + eventX - menuobj.contentwidth : eventX - menuobj.contentwidth
    } else {
        getlength = ie4 ? ie_x(event.srcElement) + menuOffX : ns6 ? window.pageXOffset + eventX : eventX
    }
    menuobj.style.left = getlength + 'px'

    if (bottomedge < menuobj.contentheight && mod != 0) {
        getlength = ie4 ? document.body.scrollTop + eventY - menuobj.contentheight - event.offsetY + tops - 23 : ns6 ? window.pageYOffset + eventY - menuobj.contentheight - 10 : eventY - menuobj.contentheight
    }
    else {
        getlength = ie4 ? ie_y(event.srcElement) + tops : ns6 ? window.pageYOffset + eventY + 10 : eventY
    }
    menuobj.style.top = getlength + 'px'

    menuobj.style.visibility = "visible"
}

$(document).ready(function(){
$("#slt").click(function(){
    $("#select").slideToggle("slow");
  });
});
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">        
        后台管理&gt;&gt;系统设置 &gt;&gt;<a href="LabelManage.aspx">标签管理</a>&gt;&gt;<a href="LabelExport.aspx">[从旧版标签升级]</a>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr class="tdbg">
            <td align="left">
                &nbsp;<a href="LabelHtml.aspx">添加静态标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="LabelSql.aspx">添加动态标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="PageLabel.aspx">添加分页标签</a>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr class="tdbg">
            <td align="left" style="height: 19px; width:50px;">
               <span> <a href="LabelManage.aspx">所有标签</a></span>
            </td>
            <td align="left" style="height: 19px">
                标签分类：<asp:Label ID="lblLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr class="tdbg">
            <td align="left" style="height: 19px;">
                标签搜索：<asp:DropDownList ID="DDLLabelCate" runat="server">
                </asp:DropDownList>
                &nbsp;名称：<asp:TextBox ID="TxtLableName" class="l_input" runat="server"></asp:TextBox>
<%--                &nbsp;内容：<asp:TextBox ID="TxtLableContent" class="l_input" runat="server"></asp:TextBox>--%>
                &nbsp;
                <asp:Button ID="BtnSearch" class="C_input" Style="width: 100px;" runat="server" Text="搜索标签" OnClick="BtnSearch_Click" />
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" style="height: 25px;">
            <td width="5%">选择</td>
            <td width="30%">名称</td>
            <td style="width: 20%">标签分类</td>
            <td width="20%">标签类别</td>
            <td style="width: 25%">操作</td>
        </tr>
        <asp:Repeater ID="repFile" runat="server" OnItemCommand="repFileReName_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center">
                        <asp:CheckBox ID="chkSel" runat="server" />
                        <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("LabelID")%>' Visible="false"></asp:Label>
                    </td>
                    <td align="left" style="padding-left:2px;">
                        <%# GetLabelLink(Eval("LabelID", "{0}"), Eval("LabelName", "{0}"), Eval("LabelType", "{0}"))%>
                    </td>
                    <td align="center">
                        <a href="LabelManage.aspx?Cate=<%# GetLabelCate(Eval("LabelCate").ToString()) %>">
                            <%#Eval("LabelCate") %></a>
                    </td>
                    <td align="center">
                        <%#GetLabelType(Eval("LabelType").ToString()) %>
                    </td>
                    <td align="center" id="select">
                        &nbsp;
<%--                        <img id="slt" src="../../Images/jiantou.gif"/>--%>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("LabelName") %>'>修改</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Copy" CommandArgument='<%# Eval("LabelName") %>'
                        OnClientClick="return confirm('确实要复制此标签吗？');">复制</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Download" CommandArgument='<%# Eval("LabelName") %>'>下载</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("LabelName") %>'
                            OnClientClick="return confirm('确实要删除此标签吗？');">删除</asp:LinkButton>



                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div class="clearbox">
    </div>
    <div style="text-align:center;width:100%">
        <table width="100%">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbg">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
                        Width="30px"></asp:TextBox>条信息/页 转到第<asp:DropDownList ID="DropDownList2" runat="server"
                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    页
                </td>
            </tr>
        </table>
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
        Text="全选" />
    <asp:Button ID="Button1" runat="server" Text="批量导出" class="C_input" Style="width: 100px;"
        OnClick="btnExport_Click" OnClientClick="return confirm('你确定要导出选中标签吗？')" Visible="false" />
         <asp:Button ID="Button3" runat="server" Text="批量导入" Visible="false" OnClientClick="location.href='LabelImport.aspx';return false;" class="C_input" Style="width: 100px;"
        UseSubmitBehavior="true" />
    <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
        OnClientClick="return confirm('你确定要将所有选择标签删除吗？')" class="C_input" Style="width: 100px;"
        UseSubmitBehavior="true" />
    &nbsp;
   
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:HiddenField ID="HiddenField3" runat="server" />
    </form>
</body>
</html>
