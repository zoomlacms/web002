<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_DeliverUserManage, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>送货员管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的店铺" href="Default.aspx">我的店铺</a>&gt;&gt;<a title="送货员管理" href="DeliverUserManage.aspx">送货员管理</a>
</div>
<div class="us_seta"  style="margin-top:5px;"><h1 align="center">已保存的送货员信息</h1></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border" style="margin: 0 auto;background-color: white;">
      <tr align="center" style="background-color:#C6E3F7">
        <td class="title" width="10%"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td class="title">送货人姓名</td>
        <td class="title" >手机号码</td>
        <td class="title">操作</td>
      </tr>
    <asp:Repeater ID="Repeater1" runat="server">       
     <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("id")%>'/></td>
        <td height="22" align="center"><%#Eval("DeName")%></td>
        <td height="22" align="center"><%#Eval("ModelNum")%></td>
        <td height="22" align="center">
         <a href="DeliverUserManage.aspx?menu=upd&id=<%#Eval("id") %>">修改</a>
         <a href="DeliverUserManage.aspx?menu=del&id=<%#Eval("id") %>" OnClick="return confirm('确定删除？');">删除</a></td>
      </tr>
     </ItemTemplate>
    </asp:Repeater>
    </table>
   <div><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" OnClientClick="return confirm('确定删除？');" Text="批量删除"  CausesValidation="false" />&nbsp;</div>
   <div style="margin-top:10px;"><asp:Label ID="lbl" runat="server"  style="color:Red;font-size:14px;font-weight:bold" Visible="false"></asp:Label>
 <br />
 <asp:Label ID="lbltips" runat="server" style="color:Green;font-size:14px;font-weight:bold">添加送货员</asp:Label>
    <asp:HiddenField ID="hfuserid" runat="server" />
    姓名：<asp:TextBox ID="txtname" runat="server"></asp:TextBox> &nbsp;&nbsp;手机号码：<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^1[(0-9)]{10}$"  ControlToValidate="txtMobile" ErrorMessage="按照手机号规则输入"></asp:RegularExpressionValidator>
    &nbsp;<asp:Button ID="btn" runat="server" Text="提交" onclick="btn_Click" />
 </div>
</form>
</body>
</html>