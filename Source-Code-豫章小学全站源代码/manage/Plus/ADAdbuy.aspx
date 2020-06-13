<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_ADAdbuy, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>广告申请</title>
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
        window.onload = function () { alert('ad'); }
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
<style>
#GridView1 td { border: 1px solid #fff; width:auto; text-align: center; }
#GridView1 th { border: 1px solid #fff; }
</style>
</head>
<body onload="pload()">
<form id="form1" runat="server">
  <div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="ADZoneManage.aspx">广告管理</a> &gt;&gt; 广告申请 </div>
  <div class="divbox" id="nocontent" runat="server">暂无广告申请</div>
  <div class="user_t">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ZoneID" Width="100%" AllowPaging="True" OnRowCommand="Lnk_Click" CssClass="border" OnRowDataBound="GridView1_RowDataBound" EnableModelValidation="True">
      <Columns>
      <asp:TemplateField HeaderText="选择">
        <ItemTemplate>
          <asp:CheckBox ID="chkSel" runat="server" />
        </ItemTemplate>
        <HeaderStyle Wrap="False" />
        <ItemStyle  HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:BoundField HeaderText="序号" DataField="ID">
        <ItemStyle  HorizontalAlign="Center" Wrap="False" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="申请人">
        <ItemTemplate>
          <asp:HyperLink ID="LnkZoneName" ToolTip='<%# SetName(Eval("UID", "{0}"))%>' NavigateUrl='<%# Eval("UID", "/manage/User/UserInfo.aspx?ID={0}") %>' runat="server"><%# SetName(Eval("UID", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="版位名称">
        <HeaderStyle />
        <ItemTemplate>
          <asp:HyperLink ID="LnkADID" ToolTip='<%# SetZoomName(Eval("ADID", "{0}"))%>' runat="server"><%# SetZoomName(Eval("ADID", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="False" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="权重">
        <HeaderStyle />
        <ItemTemplate>
          <asp:HyperLink ID="LnkSales" ToolTip='<%#SalesType(Eval("Scale", "{0}"))%>' runat="server"><%# SalesType(Eval("Scale", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="False" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="投放时间">
        <ItemTemplate>
          <asp:HyperLink ID="LnkPtime" ToolTip='<%# SetTime(Eval("Ptime", "{0}"))%>' runat="server"><%# SetTime(Eval("Ptime", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="申请天数">
        <HeaderStyle />
        <ItemTemplate>
          <asp:HyperLink ID="LnkShowTime" ToolTip='<%# Eval("ShowTime")%>' runat="server"><%# Eval("ShowTime")%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="广告内容">
        <HeaderStyle />
        <ItemTemplate>
          <asp:HyperLink ID="LnkContent" ToolTip='<%# ContentType(Eval("Content", "{0}"))%>' runat="server"><%# ContentType(Eval("Content", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="False" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="附件">
        <HeaderStyle />
        <ItemTemplate> <%#LnkFiles(Eval("Files", "{0}"))%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="申请时间">
        <ItemTemplate>
          <asp:HyperLink ID="LnkTime" ToolTip='<%# SetTime(Eval("Time", "{0}"))%>' runat="server"><%# SetTime(Eval("Time", "{0}"))%></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Wrap="True" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="已审核">
        <HeaderStyle />
        <ItemTemplate> <%# (bool)Eval("Audit") == false ? "<span style=\"color: #ff0033\">×</span>" : "√"%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"  Height="30px" Font-Overline="False" />
      <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
    </asp:GridView>
    <div style="text-align: center" class="tdbg"> <span style="text-align: center">共
      <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
      条数据
      <asp:Label ID="Toppage" runat="server" Text="" />
      <asp:Label ID="Nextpage" runat="server" Text="" />
      <asp:Label ID="Downpage" runat="server" Text="" />
      <asp:Label ID="Endpage" runat="server" Text="" />
      页次：
      <asp:Label ID="Nowpage" runat="server" Text="" />
      /
      <asp:Label ID="PageSize" runat="server" Text="" />
      页
      <asp:Label ID="pagess" runat="server" Text="" />
      <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"  Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
      条数据/页 转到第
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
      页
      <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
      </span> </div>
  </div>
  <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
  <asp:Button ID="BtnAudit" runat="server" Text="批量审核" Width="134px" OnClientClick="if(!IsSelectedId()){alert('请选择申请');}" class="C_input" onclick="BtnAudit_Click" />
  <asp:Button ID="BtnCancel" runat="server" Text="取消审核" Width="134px" OnClientClick="if(!IsSelectedId()){alert('请选择申请');}" class="C_input" onclick="BtnCancel_Click"  />
  <asp:Button ID="BtnDelete" runat="server" Text="批量删除" Width="134px" OnClientClick="if(!IsSelectedId()){alert('请选择申请');return false;}else{return confirm('你确定要删除选中条目吗？')}" OnClick="BtnDelete_Click" class="C_input" />
</form>
</body>
</html>