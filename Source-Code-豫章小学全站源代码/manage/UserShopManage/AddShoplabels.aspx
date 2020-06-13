<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_AddShoplabels, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>添加商铺标签</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript">
    function showlable(cc)
    {
    var selecttext= cc.options[cc.selectedIndex].text;
    if(selecttext=='>>输入标签')
        {
            document.getElementById("LableClass").style.display = "";
        }else
        {
            document.getElementById("LableClass").style.display = "none";
        }
        document.getElementById("LableClass").value = cc.options[cc.selectedIndex].value;
    }
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; <a href="Shoplabelsclass.aspx">店铺标签管理</a> &gt;&gt; 
        <asp:Label ID="Label3" runat="server"></asp:Label><a href="addshoplabels.aspx">添加标签</a></div>
      
     <div class="clearbox"></div>
     
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
        <tr class="tdbg">
          <td width="100%" height="24" align="center" class="title" colspan="2">
              <asp:Label ID="Label1" runat="server" Text="添加标签"></asp:Label></td>
        </tr>
        <tr class="tdbg">
          <td height="24" width="20%" align="left"><b>标签名称</b></td>
          <td height="24" width="80%" align="left">
              <asp:Label ID="Label4" runat="server"></asp:Label><asp:TextBox ID="LableName" runat="server" Width="414px"></asp:TextBox><asp:TextBox
                  ID="Lablevalue" runat="server" Width="414px"></asp:TextBox><asp:Label ID="Label5" runat="server"></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LableName"
                  ErrorMessage="标签名称不能为空!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" runat="server" id="Derivetr">
          <td width="20%" align="left" style="height: 8px"><b>派生标签</b></td>
          <td width="80%" align="left" style="height: 8px">
              <asp:TextBox ID="Derive" runat="server" Width="414px"></asp:TextBox></td>
        </tr>
        <tr class="tdbg">
          <td width="20%" align="left" style="height: 8px"><b>标签说明</b></td>
          <td width="80%" align="left" style="height: 8px">
              <asp:TextBox ID="LableInfo" runat="server" Width="414px"></asp:TextBox></td>
        </tr>
                <tr class="tdbg">
          <td height="24" width="20%" align="left"><b>标签分类</b></td>
          <td height="24" width="80%" align="left">
              <asp:DropDownList ID="LableClasslist" runat="server" onchange="showlable(this);">
              </asp:DropDownList>
              <asp:TextBox ID="LableClass" runat="server" style="display:none"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" style="display:none">
          <td height="24" width="20%" align="left"><b>标签类型</b></td>
          <td height="24" width="80%" align="left">
              <asp:RadioButtonList ID="LableType" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">系统标签</asp:ListItem>
              <asp:ListItem Selected="True" Value="0">用户标签</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
          <td width="20%" align="left" style="height: 24px"><b>标签状态</b></td>
          <td width="80%" align="left" style="height: 24px">
              <asp:RadioButtonList ID="IsTrue" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
                  <asp:ListItem Value="0">停用</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" id="Tr2" runat="server">
          <td height="24" width="20%" align="left"><b>序号初始计算值</b></td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="Initial" runat="server">1</asp:TextBox></td>
        </tr>
        <tr class="tdbg" id="Tr4" runat="server">
          <td height="24" width="20%" align="left"><b>参数说明</b></td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="Fildsinfo" runat="server" Height="50px" TextMode="MultiLine" Width="557px"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" id="Tr1" runat="server">
          <td height="24" width="20%" align="left"><b>标签间隔</b></td>
          <td height="24" width="80%" align="left">
              <asp:TextBox ID="Separator" runat="server" Height="50px" TextMode="MultiLine" Width="557px"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" id="lbcnt" runat="server">
          <td height="24" width="20%" align="left"><b>标签内容</b></td>
          <td height="24" width="80%" align="left">
              <font color="red">返回此输入框的内容，结果为</font><font color="blue"><b>真</b></font><font color="red">时显示内容
                  {$p} 为重复记数序号</font><br />
              <asp:TextBox ID="LableContent" runat="server" Height="200px" TextMode="MultiLine" Width="557px"></asp:TextBox></td>
        </tr>
        
       <tr class="tdbg" id="Tr3" runat="server">
          <td height="24" width="20%" align="left"><b>标签内容</b></td>
          <td height="24" width="80%" align="left">
              <font color="red">返回此输入框的内容，结果为</font><font color="blue"><b>假</b></font><font color="red">时显示内容</font><br />
              <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="557px"></asp:TextBox></td>
        </tr>
        <tr class="tdbg">
          <td height="24" width="100%" align="center"colspan="2">
              <asp:HiddenField ID="sid" runat="server" />
              <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="添加派生" />
              <asp:Button ID="Button1" runat="server" Text="保　存" OnClick="Button1_Click" />
              <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </tr>
     </tbody>
    </table>

</form>
</body>
</html>
