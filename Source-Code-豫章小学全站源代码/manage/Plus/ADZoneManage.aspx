<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.ADZoneManage, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>广告版位管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript">
var tID = 0;
//var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4", "Div5", "Div6", "Div7");
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
function pload() {
    window.onload = function() { alert('ad'); }
    var ID = '<%=Request.QueryString["type"]%>';
    if (ID != '') {

        document.getElementById(arrTabs[ID].toString()).style.display = "";
        document.getElementById(arrTabs[ID].toString()).className = "titlemouseover";
        document.getElementById("Div").className = "tabtitle";
    } else {
        document.getElementById("Div").style.display = "";
        document.getElementById("Div").className = "titlemouseover";
        tID = ID;
    }
}
</script>
</head>
<body onload="pload()">
<form id="form1" runat="server">
 <div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="ADZoneManage.aspx">广告管理</a> &gt;&gt; 版位管理&nbsp;<span class="red">[<a href="ADZone.aspx" style="color: Red">添加版位</a>]</span>&nbsp;<span class="line"><asp:TextBox ID="TxtADName" runat="server" class="l_input" style="vertical-align:middle;"> 版位名称</asp:TextBox><asp:Button ID="BntSearch" runat="server" Text="查询" OnClick="BntSearch_Click" class="C_input"  style="vertical-align:middle;"/></span>
    </div>
  <div class="clearbox"></div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="Div" class="titlemouseover"><a href="ADZoneManage.aspx">所有版位</a></td>
                <td id="Div0" class="tabtitle"><a href="ADZoneManage.aspx?type=0">矩形横幅</a></td>
                <td id="Div1" class="tabtitle"><a href="ADZoneManage.aspx?type=1">弹出窗口</a></td>
                <td id="Div2" class="tabtitle"><a href="ADZoneManage.aspx?type=2">随屏移动</a></td>
                <td id="Div3" class="tabtitle"><a href=" ADZoneManage.aspx?type=3">固定位置</a></td>
                <td id="Div4" class="tabtitle"><a href=" ADZoneManage.aspx?type=4">漂浮移动</a></td>
                <td id="Div5" class="tabtitle"><a href=" ADZoneManage.aspx?type=5">文字代码</a></td>
                <td id="Div6" class="tabtitle"><a href=" ADZoneManage.aspx?type=6">对联广告</a></td>
                <td>&nbsp;  </td>
            </tr>
        </table>
    </div>
    <div class="divbox" id="nocontent" runat="server">暂无版位信息</div>
    <div class="user_t">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ZoneID" Width="100%" AllowPaging="True" PageSize="10" OnRowCommand="Lnk_Click" CssClass="border" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <ItemStyle Width="5%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="序号" DataField="zoneid">
                <ItemStyle Width="5%" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="版位名称">
                <ItemTemplate>
                    <asp:HyperLink ID="LnkZoneName" ToolTip='<%# Eval("ZoneName")%>' NavigateUrl='<%# Eval("ZoneId", "ADManage.aspx?ZoneId={0}") %>' runat="server"><%# Eval("ZoneName")%></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle Width="20%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="类型">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <a href="ADZoneManage.aspx?type=<%#Eval("ZoneType") %>">
                        <%#getzonetypename(DataBinder.Eval(Container.DataItem, "ZoneType").ToString())%></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="显示类型">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <%#getzoneshowtypename(DataBinder.Eval(Container.DataItem, "ShowType").ToString())%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="尺寸">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <%#Eval("ZoneWidth")%>
                    x
                    <%#Eval("ZoneHeight")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态">
                <HeaderStyle Width="5%" />
                <ItemTemplate>
                    <%#GetActive(DataBinder.Eval(Container.DataItem, "Active").ToString())%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="AddAdv" CommandArgument='<%# Eval("ZoneID") %>'>添加</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ZoneID") %>'>修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ZoneID") %>'>复制</asp:LinkButton><br />
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Del" OnClientClick="return confirm('确定删除此版位？');" CommandArgument='<%# Eval("ZoneID") %>'>删除</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Clear" OnClientClick="return confirm('确定清空此版位？');" CommandArgument='<%# Eval("ZoneID") %>'>清空</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton6" runat="server" CommandName="SetAct" CommandArgument='<%# Eval("ZoneID") %>'><%# GetUnActive(DataBinder.Eval(Container.DataItem, "Active").ToString())%></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="版位JS">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton7" runat="server" CommandName="PreView" CommandArgument='<%# Eval("ZoneID") %>'>预览</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton9" runat="server" CommandName="Refresh" CommandArgument='<%# Eval("ZoneID") %>'>刷新</asp:LinkButton><br />
                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="JS" CommandArgument='<%# Eval("ZoneID") %>'>获取广告代码</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
    </asp:GridView>
    <div style="text-align: center" class="tdbg">
        <span style="text-align: center">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div></div>
    <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
    <asp:Button ID="BtnDelete" runat="server" Text="批量删除选定版位" Width="134px" OnClientClick="if(!IsSelectedId()){alert('请选择版位');return false;}else{return confirm('确定删除选中版位？')}" OnClick="BtnDelete_Click" class="C_input" />
    <asp:Button ID="BtnActive" runat="server" Text="激活版位" OnClientClick="if(!IsSelectedId()){alert('请选择版位');return false;}else{return confirm('你确定要激活选中的版位吗？')}" OnClick="BtnActive_Click" class="C_input" />
    <asp:Button ID="BtnPause" runat="server" Text="暂停版位" OnClientClick="if(!IsSelectedId()){alert('请选择版位');return false;}else{return confirm('你确定要暂停选中版位吗？')}" OnClick="BtnPause_Click" class="C_input" />
    <asp:Button ID="BtnRefurbish" runat="server" Text="刷新版位JS" OnClick="BtnRefurbish_Click" class="C_input" />
    </form>
</body>
</html>