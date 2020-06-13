<%@ page language="C#" autoeventwireup="true" inherits="manage_User_SelectContent, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>查询所有内容</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/calendar.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="../../JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="../../JS/Popmenu.js"></script>
<script type="text/javascript" src="../../JS/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
    function openurls(url) {
        Dialog.open({ URL: url });
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
    
    function onstr() {
        parent.Dialog.close();
    }

    function setvalue(objname,valuetxt) {
        var mainright = window.top.main_right;
        mainright.frames[parent.nowWindow].document.getElementById(objname).value = valuetxt;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;内容管理&gt;&gt;选择内容</div>
  <div>
    <div style="width:25%; float:left">
      <asp:TreeView ID="tvNav" runat="server" ShowLines="True" EnableViewState="False" NodeIndent="10">
        <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
        <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
        <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
        <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
      </asp:TreeView>
    </div>
    <div style="float:right;text-align:center;width:70%">
      <div class="divbox" id="nocontent"  runat="server" style="float:right;text-align:center;width:100%"> 暂无内容信息</div>
      <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID"  Width="100%">
        <Columns>
        <asp:BoundField HeaderText="ID" DataField="GeneralID">
          <HeaderStyle />
          <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="标题">
          <ItemTemplate> <%# GetPic(Eval("ModelID", "{0}"))%> <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%> </ItemTemplate>
          <ItemStyle HorizontalAlign="Center" />
          <ItemStyle />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操作">
          <ItemTemplate> <a href='?menu=select&id=<%#Eval("GeneralID") %>'>选择</a> </ItemTemplate>
          <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle ForeColor="Black" BackColor="#f6fdf6" Height="20px" />
      </asp:GridView>
      <div id="Egvdiv" runat="server" style="text-align: center" class="tdbg"> <span style="text-align: center">共
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
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged" Width="25px"></asp:TextBox>
        条数据/页 转到第
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"> </asp:DropDownList>
        页
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span></div>
      <asp:HiddenField ID="HiddenNodeID" runat="server" />
    </div>
  </div>
</form>
</body>
</html>