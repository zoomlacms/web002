<%@ page language="C#" autoeventwireup="true" inherits="manage_User_SubscriptListManage, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容订阅列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
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
        alert("请先选择要删除的记录！");
        return result;
    }
    result = confirm("你确认要删除选定的记录吗？");
    return result;
    } 

</script>
</head>

<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;邮件订阅&gt;&gt;<asp:HyperLink ID="hyname" runat="server"></asp:HyperLink><a href="AddSubscriptionCount.aspx?menu=add">[新增订阅]</a></div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr style="margin-top:5px;">
        <td valign="top" class="tdbg"><asp:GridView ID="GridView1" DataKeyNames="Id" Width="100%" runat="server"  AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound">
            <Columns>
            <asp:TemplateField HeaderText="选择">
              <ItemTemplate>
                <asp:HiddenField ID="hfId" Value='<%#Eval("id") %>' runat="server" />
                <asp:CheckBox ID="pidCheckbox" runat="server" />
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="编号">
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="标题">
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate> <%# Eval("Title") %> </ItemTemplate>
              <HeaderStyle />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="订阅者">
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:Label ID="lblUser" runat="server"></asp:Label>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="生效时间">
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("effectTime") %>'></asp:Label>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="到期时间">
              <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("endTime") %>'></asp:Label>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="用户类型">
              <ItemTemplate>
                <asp:Label ID="lblUsertype" runat="server" Text='<%# GetRes(Eval("Reserve","{0}")) %>'></asp:Label>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="允许退订">
              <ItemTemplate>
                <asp:Label ID="lblRe" runat="server" Text='<%# GetRes(Eval("Reserve","{0}")) %>'></asp:Label>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
              <ItemTemplate>
                <asp:LinkButton ID="upd" runat="server" PostBackUrl='<%# Eval("Id","AddSubscriptionCount.aspx?menu=update&id={0}") %>' Text="修改/"></asp:LinkButton>
                <asp:LinkButton ID="end" runat="server"  CommandName="End" CommandArgument='<%#Eval("Id") %>'>终止订阅/</asp:LinkButton>
                <asp:LinkButton ID="Del" runat="server"  CommandName="Del" CommandArgument='<%#Eval("Id") %>' OnClientClick="if(confirm('确定删除?')) return true; else return false;">删除</asp:LinkButton>
                <asp:LinkButton ID="audit" runat="server"  CommandName="Audit" CommandArgument='<%#Eval("Id") %>'>通过审核</asp:LinkButton>
              </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            </Columns>
          </asp:GridView></td>
      </tr>
      <tr class="tdbg">
        <td align="left"><asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
          &nbsp;
          <asp:Button ID="btn_DeleteRecords" runat="server" OnClientClick="return judgeSelect();" Text="删除选中记录" OnClick="btn_DeleteRecords_Click" class="C_input"/></td>
      </tr>
      <tr class="tdbg">
        <td align="center"><span> 共
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
          <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
          条数据/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
          页
          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
          </span></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>