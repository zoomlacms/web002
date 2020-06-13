<%@ page language="C#" autoeventwireup="true" inherits="manage_User_MailListManage, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮址列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
<style>
#Panel1{float:left;}
</style>
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
<div class="r_navigation">后台管理&gt;&gt; 附件管理&gt;&gt;邮件订阅&gt;&gt;邮箱列表</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="center" class="spacingtitle"> 邮箱列表</td>
      </tr>
      <tr class="tdbg">
        <td>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
          <asp:ListItem>全部分类</asp:ListItem>
          <asp:ListItem>按字母查询</asp:ListItem>
          <asp:ListItem>按数字查询</asp:ListItem>
          <asp:ListItem>按加入日期查询</asp:ListItem>
          <asp:ListItem>按最后发送时间查询</asp:ListItem>
          <asp:ListItem>按邮箱后缀查询</asp:ListItem>
          <asp:ListItem>按状态查询</asp:ListItem>
          <asp:ListItem>按订阅类别</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"> </asp:DropDownList>
        <asp:TextBox class="l_input" ID="txtType" runat="server"></asp:TextBox>
        <asp:Panel ID="Panel1" Visible="false" runat="server">
          <asp:TextBox class="l_input" ID="txtStartTime" onfocus="setday(this)" runat="server"></asp:TextBox>
          ~
          <asp:TextBox class="l_input" ID="txtEndTime" onfocus="setday(this)" runat="server"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtStartTime" ErrorMessage="请输入正确的日期" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtEndTime" ErrorMessage="请输入正确的日期" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
          </asp:Panel><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查 询" class="C_input"/>
        添加邮箱地址：
          <asp:TextBox class="l_input" ID="txtMail" runat="server" Width="200px"></asp:TextBox>
          <asp:Button ID="Button2" runat="server" Text="添  加" OnClick="Button2_Click" class="C_input"/>
          <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="批量导入" class="C_input"/>
          <asp:Button ID="Button4" runat="server" Text="批量导出" OnClick="Button4_Click" class="C_input"/>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="请输入正确的邮箱地址" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
      </tr>
      <tr>
        <td valign="top" class="tdbg"><asp:GridView ID="GridView1" DataKeyNames="ID" Width="100%" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
            <asp:TemplateField>
              <ItemTemplate>
                <input id="pidCheckbox" name="pidCheckbox" type="checkbox" value='<%#DataBinder.Eval(Container.DataItem,"ID")  %>' class="checkbox" />
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="编号">
              <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="邮箱地址">
              <EditItemTemplate>
                <asp:TextBox class="l_input" ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' Width="200px"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" Text="提 交" OnClick="Button5_Click" />
              </EditItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" ToolTip="点击校正修改邮址" runat="server" OnClick="LinkButton2_Click"><%#DataBinder.Eval(Container.DataItem, "Email")%></asp:LinkButton>
              </ItemTemplate>
              <HeaderStyle Width="280px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="申请时间">
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("AddTime") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="最后发送时间">
              <ItemStyle HorizontalAlign="Center" />
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("BackMostTime") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="邮箱状态">
              <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><%#GetState1(DataBinder.Eval(Container.DataItem, "State").ToString())%></asp:LinkButton>
                <%#GetState(DataBinder.Eval(Container.DataItem, "State").ToString())%> </ItemTemplate>
              <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
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