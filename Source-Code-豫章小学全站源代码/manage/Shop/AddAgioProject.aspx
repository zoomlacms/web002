<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="manage_Shop_AddAgioProject, App_Web_yc1b2kmm" enableviewstatemac="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加促销方案</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
function SelectProducer()
{
    if(document.getElementById("RadioButtonList1_0").checked)
        window.open('AddAgioCommodity.aspx?type=1','','width=600,height=450,resizable=0,scrollbars=yes');
    else
        window.open('AddAgioCommodity.aspx?type=2','','width=600,height=450,resizable=0,scrollbars=yes');
}
function Clearoption()
{
    var hiddenidvalue = document.getElementById("PromoProlist"); //获取已经存在的ID值
        
    for(var i=hiddenidvalue.options.length-1;i>= 0;i--)
    {
        if(hiddenidvalue[i].selected==true)
        {
            hiddenidvalue[i]=null;  
        }
    }

}

</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;商城管理&gt;&gt; 促销管理 &gt;&gt; <a href="AgioProject.aspx" >打折方案管理</a> &gt;&gt; <%=type %>打折方案</div>
  <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
      <table width="100%" cellpadding="2" cellspacing="1" border="0" class="border" >
        <tr align="center">
          <td colspan="2" class="spacingtitle"><%=type %>打折方案</td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="22" class="tdbgleft" align="right" style="width: 24%"><strong>方案名称：</strong></td>
          <td width="76%" valign="middle"><asp:TextBox ID="txtName" class="l_input" runat="server" Width="253px" />
            <font color=red>*
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="方案名称不能为空!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </font></td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="22" class="tdbgleft" align="right" style="width: 24%"><strong>有效期：</strong></td>
          <td height="22" valign="middle"><asp:TextBox ID="txtStartTime" class="l_input" runat="server" Width="96px" onclick="calendar()" />
            &nbsp;
            <asp:Image
      ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" />
            &nbsp;止
            <asp:TextBox ID="txtEndTime" runat="server"  class="l_input" Width="96px" onclick="calendar()" />
            <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
      ToolTip="鼠标点击左边输入框出现时间选择框" />
            不填写为不限制有效期</td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td align="right" class="tdbgleft" height="22" style="width: 24%"><strong>方案类型：</strong></td>
          <td height="22" valign="middle"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"  AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
              <asp:ListItem Value="1" Selected="True">按商品打折</asp:ListItem>
              <asp:ListItem Value="2">按商品类型打折</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top"><strong>商品列表：</strong></td>
          <td height="22" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="height: 22px"><asp:ListBox ID="PromoProlist" runat="server" Height="144px" SelectionMode="Multiple"
                Width="323px"></asp:ListBox>
                  <br />
                  <asp:Button ID="Button2" runat="server" class="C_input" Text="添加打折商品" style="width:110px;"  OnClientClick="SelectProducer();return false;" />
                  <asp:Button ID="Button3" runat="server" class="C_input" Text="删除" OnClientClick="Clearoption();return false;" />
                  <br />
                  <font color="red">非选中</font><font color="green">状态的商品添加或更新后将被</font><font color="red">删除<br />
                  <font color="red"><b>选中状态</b></font><font color="green">的商品将被更新</font> 支持<b>Ctrl</b>或<b>Shift</b>键多选 </font></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td colspan="2" align="center"></td>
        </tr>
      </table>
    </ContentTemplate>
  </asp:UpdatePanel>
  <table width="100%" cellpadding="2" cellspacing="1" border="0" class="border" >
    <tr class="tdbg">
      <td height="22" colspan="5" align="center" class="tdbgleft"><asp:HiddenField ID="HiddenID" runat="server" />
        <asp:Button ID="Button4" class="C_input" runat="server" Text="提  交" OnClick="Button4_Click" />
        &nbsp; &nbsp; &nbsp;
        <input id="Button5"  class="C_input" type="button" value="返  回" onclick="javascript:window.history.go(-1);" /></td>
    </tr>
  </table>
</form>
</body>
</html>