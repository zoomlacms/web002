<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_PointRecord, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的积分</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../Common/Common.js" type="text/javascript"></script>
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
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a> &gt;&gt;<a href="PointRecord.aspx">我的积分</a>
</div>
    <div class="us_seta"  style="margin-top:5px;">
      <h1 align="center">我的积分</h1>
    </div>
    <div>
      <asp:Literal ID="liPoint" runat="server"></asp:Literal>
    </div>
    <div align="center">
      <table width="100%">
        <tr>
          <td align="center" width="20%">日期</td>
          <td align="center" width="20%">所得积分</td>
          <td align="center" width="20%">类型</td>
          <td align="center" width="40%">备注</td>
        </tr>
      </table>
      <asp:Repeater ID="repf" runat="server">
        <ItemTemplate>
          <table width="100%">
            <tr>
              <td align="center" width="20%"><asp:Label ID="AddTime" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"AddTime","{0:yyyy-MM-dd}") %>'></asp:Label></td>
              <td align="center" width="20%"><asp:Label ID="Points" runat="server" Text='<%#Eval("Points") %>'></asp:Label></td>
              <td align="center" width="20%"><asp:Label ID="Type" runat="server" Text='<%#Eval("Type") %>'> </asp:Label></td>
              <td align="center" width="40%"><asp:Label ID="Remark" runat="server" Text='<%#Eval("Remark") %>'></asp:Label></td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:Repeater>
      <table>
        <tr class="tdbg">
          <td height="24" colspan="3" align="center" class="tdbgleft"><asp:Label id="divTips" runat="server" ForeColor="Red"></asp:Label>
            共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条信息
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页 <span style="text-align: center">
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
            </span>条信息/页  转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            页 </td>
        </tr>
      </table>
    </div>
</form>
</body>
</html>