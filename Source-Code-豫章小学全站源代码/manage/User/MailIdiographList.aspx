<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_MailIdiographList, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>签名列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
//根据传入的checkbox的选中状态设置所有checkbox的选中状态
    function selectAll(obj)
    {
        var allInput = document.getElementsByTagName("input");
        //alert(allInput.length);
        var loopTime = allInput.length;
        for(i = 0;i < loopTime;i++)
        {
            //alert(allInput[i].type);
            if(allInput[i].type == "checkbox")
            {
                allInput[i].checked = obj.checked;
            }
        }
    }
    //判断是否选中记录，用户确认删除
    function judgeSelect()
    {
    var result = false;
    var allInput = document.getElementsByTagName("input");
    var loopTime = allInput.length;
    for(i = 0;i < loopTime;i++)
    {
        if(allInput[i].checked)
        {
            result = true;
            break;
        }
    }
    if(!result)
    {
        alert("请先选则要删除的记录！");
        return result;
    }
    result = confirm("你确认要删除选定的记录吗？");
    return result;
    } 

</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;邮件订阅&gt;&gt;签名列表<a href="AddMailIdiograph.aspx">【添加签名】</a></div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="center" class="spacingtitle">签名列表</td>
      </tr>
      <tr>
        <td valign="top" class="tdbg"><asp:GridView ID="GridView1" DataKeyNames="ID" Width="100%" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
            <asp:TemplateField>
              <HeaderStyle Width="20px" />
              <ItemTemplate>
                <input id="pidCheckbox" name="pidCheckbox" type="checkbox" value='<%#DataBinder.Eval(Container.DataItem,"ID")  %>' class="checkbox" />
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="编号" HeaderStyle-Width="35px">
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="签名名称">
              <HeaderStyle Width="100px" />
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate> <a href='addMailIdiograph.aspx?ID=<%#DataBinder.Eval(Container.DataItem,"ID") %>'><%#DataBinder.Eval(Container.DataItem, "Name")%></a> </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="签名内容">
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Context") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="添加时间">
              <HeaderStyle Width="115px" />
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("AddTime") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="签名状态">
              <HeaderStyle Width="55px" />
              <ItemTemplate> <%#GetState(DataBinder.Eval(Container.DataItem, "State").ToString())%> </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True"  HeaderStyle-Width="30px"/>
            </Columns>
          </asp:GridView></td>
      </tr>
      <tr class="tdbg">
        <td align="left"><input name="chk23" type="checkbox" ID="chk23" runat="server" onclick="selectAll(this)" class="checkbox"/>
          全选
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btn_DeleteRecords" runat="server" OnClientClick="return judgeSelect();" Text="删除选中记录" OnClick="btn_DeleteRecords_Click" class="C_input"/></td>
      </tr>
      <tr class="tdbg">
        <td align="center"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          &nbsp;
          <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
          <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
          <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
          <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
          页次：
          <asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>
          /
          <asp:Label ID="PageSize" runat="server" Text=""></asp:Label>
          页
          <asp:Label ID="pagess" runat="server" Text=""></asp:Label>
          个/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
          页</td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>