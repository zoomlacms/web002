<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.Group, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员组编辑</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }

    function SelectRule() {
        window.open('RuleList.aspx?id=<%=Request.QueryString["id"] %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }

    function VIP() {
        var dd = document.getElementByNames("RBVipG");
    }
</script>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="UserManage.aspx">会员管理</a>&gt;&gt;<a href="GroupManage.aspx">会员组管理</a>&gt;&gt;<asp:Literal ID="LNav" runat="server" Text="添加会员组"></asp:Literal></div>
  <table width="100%" cellpadding="2" cellspacing="1" class="border">
    <tr>
      <td class="spacingtitle" colspan="2" align="center"><asp:Literal ID="LTitle" runat="server" Text="添加会员组"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 35%"><strong>会员组名称：</strong></td>
      <td><asp:TextBox class="l_input" ID="TxtGroupName" runat="server" Width="156" MaxLength="200" />
        <font color="red">*</font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtGroupName">会员组名称不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>会员组别名：</strong></td>
      <td><asp:TextBox class="l_input" ID="OtherName" runat="server" Width="156" MaxLength="200" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>会员组说明：</strong></td>
      <td><asp:TextBox class="x_input" ID="TxtDescription" runat="server" TextMode="MultiLine" Width="365px" Height="43px" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>是否为招生人员：</strong></td>
      <td><asp:RadioButtonList ID="txt_Enroll" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Value="1">是</asp:ListItem>
          <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>是否注册可选：</strong></td>
      <td><asp:RadioButtonList ID="RBLReg" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
          <asp:ListItem Value="0">否</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>是否为企业用户组：</strong></td>
      <td><asp:RadioButtonList ID="RBcompanyG" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Value="1">是</asp:ListItem>
          <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>是否为VIP用户组：</strong></td>
      <td><asp:RadioButtonList ID="RBVipG" runat="server" RepeatDirection="Horizontal" onclick="VIP()">
          <asp:ListItem Value="1">是</asp:ListItem>
          <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>VIP默认级别：</strong></td>
      <td><asp:TextBox class="l_input" runat="server" ID="txtVIPNum" Text="0"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtVIPNum" ErrorMessage="请输入有效数字！" MaximumValue="999" MinimumValue="0" Type="Integer"></asp:RangeValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>升级所需费用：</strong></td>
      <td><asp:TextBox class="l_input" ID="UpGradeMoney" runat="server">0</asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="请输入有效数据！" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0" ControlToValidate="UpGradeMoney"> </asp:CompareValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>返利比率：</strong></td>
      <td><asp:TextBox class="l_input" ID="txtRebateRate" runat="server">0</asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="请输入有效数据！" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"  ControlToValidate="txtRebateRate"></asp:CompareValidator></td>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>信誉值：</strong></td>
      <td><asp:TextBox class="l_input" ID="txtCreit" runat="server">0</asp:TextBox>
        (用户达到多少信誉值可升级为此等级,0为不升级)
        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="请输入有效数据！" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"  ControlToValidate="txtCreit"></asp:CompareValidator></td>
    </tr>


    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>付费方式：</strong></td>
      <td>每个包年会员费为<asp:TextBox class="l_input" ID="Byear" style="width:40px;" runat="server">50</asp:TextBox>， 每个月最多使用<asp:TextBox class="l_input" ID="Payment" style="width:40px;" runat="server">50</asp:TextBox>篇文章&nbsp;
        <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="请输入有效数据！" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"  ControlToValidate="Payment"></asp:CompareValidator></td>
    </tr>
  </table>
  <%-- <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border">
        <tr class="gridtitle" align="center" style="height: 25px;">
            <td height="26" colspan="13" class="spacingtitle">
                <strong>角色列表</strong>
            </td>
        </tr>
        <tr class="tdbgleft">
            <td width="5%" height="24" align="center">
                <asp:CheckBox ID="CheckBox1" runat="server" onclick="CheckAll(this);" />
            </td>
            <td width="5%" height="24" align="center">
                <strong>ID</strong>
            </td>
            <td width="10%" height="24" align="center">
                <strong>角色名称</strong>
            </td>
            <td width="14%" height="24" align="center">
                <strong>角色说明</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>内容浏览</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>列表浏览</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>新增发布</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>编辑修改</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>删除内容</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>评论权限</strong>
            </td>
            <td width="8%" height="24" align="center">
                <strong>优先级</strong>
            </td>
            <td width="5%" height="24" align="center">
                <strong>状态</strong>
            </td>
            <td width="5%" height="24" align="center">
                <strong>操作</strong>
            </td>
        </tr>
        <asp:Repeater ID="Pagetable" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td height="24" align="center">
                        <input name="Item" type="checkbox" value="<%#Eval("ID") %>">
                    </td>
                    <td height="24" align="center">
                        <%#Eval("ID") %>
                    </td>
                    <td height="24" align="center">
                        <a href="Permissionadd.aspx?menu=edit&id=<%#Eval("ID") %>">
                            <%#Eval("RoleName") %></a>
                    </td>
                    <td height="24" align="center">
                        <%#Eval("info")%>
                    </td>
                    <td height="24" align="center">
                        <%#Getpagepre(Eval("Perlist", "{0}").ToString(), "ViewContent")%>
                    </td>
                    <td height="24" align="center">
                        <%#Getpagepre(Eval("Perlist", "{0}").ToString(), "ListContent")%>
                    </td>
                    <td height="24" align="center">
                        <%#Getpagepre(Eval("Perlist", "{0}").ToString(), "AddContent")%>
                    </td>
                    <td height="24" align="center">
                        <%#Getpagepre(Eval("Perlist", "{0}").ToString(), "ModefiyContent")%>
                    </td>
                    <td height="24" align="center">
                        <%#Getpagepre(Eval("Perlist", "{0}").ToString(), "DeleteContent")%>
                    </td>
                    <td height="24" align="center">
                        <%#Getpagepre(Eval("Perlist", "{0}").ToString(), "AddComm")%>
                    </td>
                    <td height="24" align="center">
                        <%#Eval("Precedence") %>
                    </td>
                    <td height="24" align="center">
                        <%#Eval("IsTrue","{0}")=="True"?"<font color=green>启用</font>":"<font color=red>停用</font>"%>
                    </td>
                    <td height="24" align="center">
                        <a href="?menu=ruledel&ruleid=<%#Eval("ID") %>&id=<%=Request.QueryString["id"] %>"
                            onclick="return confirm('确实要删除此角色吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    --%>
  <div class="clearbox"> </div>
  <table width="100%" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbgbottom">
      <td colspan="2"><asp:HiddenField ID="HdnGroupID" runat="server" />
        &nbsp;&nbsp;
        <%--<asp:Button ID="Button1" Text="添加角色" OnClientClick="SelectRule();return false;" runat="server"
                    class="C_input" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" Text="批量删除" OnClientClick="return confirm('确实要批量删除角色吗？');" runat="server" OnClick="Button2_Click" class="C_input" />
                &nbsp;&nbsp;--%>
        <asp:Button ID="EBtnSubmit" Text="保存设置" OnClick="EBtnSubmit_Click" runat="server" class="C_input" />
        &nbsp;&nbsp;
        <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="location.href='GroupManage.aspx'" /></td>
    </tr>
  </table>
</form>
</body>
</html>