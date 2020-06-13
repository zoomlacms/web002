<%@ page language="C#" title="发送短信息" autoeventwireup="true" inherits="User.Message, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑短信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
      <tr align="center">
        <td colspan="2" class="spacingtitle"><b>批量删除操作</b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 28px; width: 45%;"><strong>批量删除会员（发件人）短消息：<br />
          </strong>可以用英文状态下的逗号将用户名隔开实现多会员同时删除 </td>
        <td style="height: 28px; width: 511px;"><asp:TextBox class="l_input" ID="TxtSender" runat="server"></asp:TextBox>
          <asp:Button ID="BtnDelSender" runat="server" Text="删除" OnClientClick="return confirm('确定要删除吗？');"
                        OnClick="BtnDelSender_Click" class="C_input" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 28px; width: 45%;"><strong>批量删除指定日期范围内的短消息：<br />
          </strong>默认为删除已读信息 </td>
        <td style="height: 28px; width: 511px;"><asp:DropDownList ID="DropDelDate" runat="server">
            <asp:ListItem Value="1">一天前</asp:ListItem>
            <asp:ListItem Value="3">三天前</asp:ListItem>
            <asp:ListItem Value="7">一星期前</asp:ListItem>
            <asp:ListItem Value="30">一个月前</asp:ListItem>
            <asp:ListItem Value="60">两个月前</asp:ListItem>
            <asp:ListItem Value="180">半年前</asp:ListItem>
            <asp:ListItem Value="0">所有短消息</asp:ListItem>
          </asp:DropDownList>
          <asp:Button ID="BtnDelDate" runat="server" Text="删除" OnClientClick="return confirm('确定要删除吗？');" OnClick="BtnDelDate_Click" class="C_input" /></td>
      </tr>
    </table>
    <div class="divbox" id="nocontent" runat="server">
      <div style="width: 100%; height: 19px; text-align: center;" class="title"> 消&nbsp;息&nbsp;管&nbsp;理</div>
      暂无短消息</div>
    <div class="clearbox"> </div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="Row_Command" CssClass="border">
      <Columns>
      <asp:TemplateField HeaderText="选择">
        <ItemTemplate>
          <asp:CheckBox ID="cheCk" runat="server" />
        </ItemTemplate>
        <ItemStyle CssClass="tdbg" Width="5%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="短消息主题">
        <ItemTemplate> <a href="MessageRead.aspx?id=<%#Eval("MsgID")%>" title='<%# Eval("Title")%>'> <%# Eval("Title")%></a> </ItemTemplate>
        <ItemStyle CssClass="tdbg" Width="20%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="收件人">
        <HeaderStyle Width="15%" />
        <ItemTemplate> <%# Eval("Incept")%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="收件人状态">
        <HeaderStyle Width="10%" />
        <ItemTemplate> <%#GetInceptStatus(Convert.ToInt32(Eval("MsgID")))%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="发件人">
        <ItemTemplate> <%# Eval("Sender")%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" Width="15%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="发件人状态">
        <ItemTemplate> <%#GetSenderStatus(Convert.ToInt32(Eval("MsgID")))%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" Width="10%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="发送日期">
        <ItemTemplate> <%# Eval("PostDate")%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" Width="15%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="操作">
        <ItemTemplate>
          <asp:LinkButton ID="btnDel" runat="server" CommandName="DeleteMsg" OnClientClick="if(!this.disabled) return confirm('确实要删除此信息吗？');"  CommandArgument='<%# Eval("MsgID")%>' Text="删除"></asp:LinkButton>
          <asp:LinkButton ID="lbRead" runat="server" CommandName="ReadMsg" CommandArgument='<%# Eval("MsgID")%>'>阅读信息</asp:LinkButton>
        </ItemTemplate>
        <ItemStyle CssClass="tdbg" Width="10%" HorizontalAlign="Center" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"  Height="30px" Font-Overline="False" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <div class="clearbox"> </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
    <asp:Button ID="Button1" runat="server" Font-Size="9pt" Text="取消" OnClick="Button1_Click" class="C_input" />
    <asp:Button ID="Button2" runat="server" Font-Size="9pt" Text="批量删除" OnClick="Button2_Click" class="C_input" />
    <br />
  </div>
</form>
</body>
</html>