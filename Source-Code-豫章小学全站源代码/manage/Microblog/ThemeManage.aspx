<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_ThemeManage, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>话题管理</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</Script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>用户管理</span> &gt;&gt; <span>微博管理</span>  &gt;&gt; <a href="ThemeManage.aspx">话题管理</a>[<a href="AddTheme.aspx">添加话题</a>]
</div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="r_navigation">
    <tr>
        <td>
            高级查询：
            <asp:DropDownList ID="souchtable" runat="server">
                <asp:ListItem Value="1">话题：</asp:ListItem>
                <asp:ListItem Value="2">话题ID：</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="souchkey" runat="server" class="l_input" />
            <asp:Button ID="souchok" runat="server" Text=" 搜索 " class="C_input" OnClick="souchok_Click" />
        </td>
    </tr>
</table>
<br />
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无话题</div>
<div id="cont" runat="server">
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tbody1">
        <tr class="tdbg">
            <td align="center" class="title">全选</td>
            <td align="center" class="title">话题</td>
            <td align="center" class="title">关注</td>
            <td align="center" class="title">分类</td>
            <td align="center" class="title">微博</td>
            <td align="center" class="title">启用</td>
            <td align="center" class="title">创建人</td>
            <td align="center" class="title">创建时间</td>
            <td align="center" class="title">操作</td>
        </tr>
        <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' /><asp:CheckBox ID="chkSel" runat="server" /></td>
                    <td align="center"><%#Eval("ThemeCon")%></td>
                    <td align="center"><%#Eval("Attention")%></td>
                    <td align="center"><%#GetClass(Eval("ClassId","{0}"))%></td>
                    <td align="center"><%#Eval("TopicNum")%></td>
                    <td align="center"><%#GetIsUser(Eval("TopicNum","{0}"))%></td>
                    <td align="center"><%#GetCreater(Eval("Creater","{0}"))%></td>
                    <td align="center"><%#DataBinder.Eval(Container.DataItem, "CreateTime", "{0:yyyy-MM-dd}")%></td>
                    <td align="center"><asp:LinkButton ID="btnupda" runat="server" CommandName="upd" CommandArgument='<%#Eval("id") %>'>修改</asp:LinkButton>|
                        <asp:LinkButton ID="btnDel" runat="server" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('确定删除！')">删除</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="24" colspan="9" align="center" class="tdbgleft">
                <span style="text-align: center">
              共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />页次：
                    <asp:Label ID="Nowpage" runat="server" Text="" />/
                    <asp:Label ID="PageSize" runat="server" Text="" />页
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                        Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
            </td>
        </tr>
        <tr>
            <td height="24" colspan="7">
             <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
            <asp:Button ID="Button1" Style="width: 110px" class="C_input" Text="批量删除" runat="server"
                OnClick="Button1_Click1" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}" />
            <asp:Button ID="btnIsUse" Style="width: 110px" class="C_input" Text="批量启用" 
                    runat="server" onclick="btnIsUse_Click" />
            <asp:Button ID="btnT" Style="width: 110px" class="C_input" Text="批量停用" 
                    runat="server" onclick="btnT_Click" />
            </td>
        </tr>
    </tbody>
</table>
</div>
</form>
</body>
</html>
