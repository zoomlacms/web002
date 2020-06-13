<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyManage, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>问卷投票管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;问卷投票管理</div>
  <table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%"
        id="Table1">
    <tr>
      <td style="height: 21px"> 问卷投票名：
        <asp:TextBox ID="txtSurKey" class="l_input" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" class="C_input" />
        <asp:HiddenField ID="HdnKey" runat="server" /></td>
    </tr>
  </table>
  <div style="line-height:25px; padding-left:10px;">* 问卷投票调用方法：在页面相应的位置用Iframe嵌入，链接页面地址："/Common/Vote.aspx?sid=问卷投票ID"。</div>
  <div class="clearbox"> </div>
  <asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="SurveyID"
        runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%"
        OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据" OnRowDataBound="Gdv_RowDataBound">
    <Columns>
    <asp:TemplateField HeaderText="选中">
      <ItemTemplate>
        <asp:CheckBox ID="chkSel" runat="server" />
      </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
      <HeaderStyle Width="5%" />
    </asp:TemplateField>
    <asp:BoundField DataField="SurveyID" HeaderText="序号">
      <ItemStyle  HorizontalAlign="Center" />
      <HeaderStyle Width="5%" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="问卷投票名">
      <ItemTemplate> <a href="survey.aspx?SID=<%# Eval("SurveyID")%>"> <%# Eval("SurveyName")%></a> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Left" />
      <HeaderStyle Width="30%" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="类别">
      <ItemTemplate> <%# Eval("SurType","{0}")=="1"?"投票":"问卷" %> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
      <HeaderStyle Width="10%" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="启用">
      <ItemTemplate> <%# GetUsedFlag(Eval("IsOpen","{0}")) %> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
      <HeaderStyle Width="10%" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("SurveyID") %>'>修改</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("SurveyID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="QList" CommandArgument='<%# Eval("SurveyID") %>'>问题列表</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Result" CommandArgument='<%# Eval("SurveyID") %>'>查看结果</asp:LinkButton>
      </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
    <SelectedRowStyle BackColor="#def2dd" Font-Bold="True" ForeColor="White" />
    <PagerStyle  ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle Font-Bold="True" ForeColor="#def2dd" BorderStyle="None"  Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
  </asp:GridView>
  <div class="clearbox"> </div>
  <table  border="0" cellpadding="0" cellspacing="0" width="100%"
        id="sleall">
    <tr>
      <td style="height: 21px"><asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="全选" />
        &nbsp; &nbsp;
        <asp:Button ID="btndelete" runat="server" OnClientClick="return confirm('确定要删除选中的项目吗？')" Text="批量删除" OnClick="btndelete_Click" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>