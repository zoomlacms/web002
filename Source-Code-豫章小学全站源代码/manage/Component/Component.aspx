<%@ page language="C#" autoeventwireup="true" inherits="manage_Component_Component, App_Web_vh0dja20" responseencoding="utf-8" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>组件列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
    window.onload = function () {
        pload();
    }
    function ShowTabs(ID) {
        location.href = 'Component.aspx?status=' + ID;
    }

    function pload() {
        var tID = '<%=Request.QueryString["status"]%>';
        if (tID) {
            if (tID == 0) {

                for (var i = 0; i < arrTabTitle.length; i++) {
                    document.getElementById(arrTabTitle[i].toString()).className = "tabtitle";
                }
                document.getElementById(arrTabTitle[1].toString()).className = "titlemouseover";
            } else if (tID == 99) {
                for (var i = 0; i < arrTabTitle.length; i++) {
                    document.getElementById(arrTabTitle[i].toString()).className = "tabtitle";
                }
                document.getElementById(arrTabTitle[2].toString()).className = "titlemouseover";
            }
        }

    }
</script>

<script type="text/javascript">
    function IsSelectedId() {
        var flag = false;
        var s = document.form1.getElementsByTagName("INPUT")
        for (var i = 0; i < s.length; i++) {
            if (s[i].type == "checkbox") {
                if (s[i].checked) {
                    flag = true;
                    break;
                }
            }
        }
        return flag;
    }
  
</script>
<script src="/JS/pacalendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理 </span>&gt;&gt;<span> 用户社区 </span>&gt;&gt; <span><a href="Component.aspx">组件列表</a></span>&nbsp;&nbsp;<span>【<a href="AddEditComponent.aspx">添加组件 </a>】</span>
</div>
    <div class="clearbox">
    </div>
    <div>
        <table width="240px" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(1000)">
                    所有组件
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(0)">
                    待审核
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(99)">
                    已审核
                </td>
                <td></td>
            </tr>
        </table>
    </div>
     <table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 25px;">
              <td width="5%" height="20" align="center"> <strong>选择</strong></td>
              <td width="5%" height="20" align="center"> <strong>ID</strong></td>
               <td width="10%" height="20" align="center"> <strong>所属会员</strong></td>
              <td width="20%" height="20" align="center"> <strong>标题</strong></td>
              <td width="20%" height="20" align="center"> <strong>链接地址</strong></td>
              <td width="10%" height="20" align="center"> <strong>状态</strong></td>
               <td width="15%" height="20" align="center"> <strong>修改时间</strong></td>
               <td width="15%" height="20" align="center"> <strong>操作</strong></td>
                </tr>
     <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
        <ItemTemplate>
        <tr class="tdbg" style="cursor:pointer;" align="center" onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '" id="<%# Eval("Id") %>"  ondblclick="window.location.href='AddEditComponent.aspx?Id=<%# Eval("Id") %>'"  >
              <td width="5%" height="20" align="center"> <asp:CheckBox ID="chkSel" Checked="false" runat="server" /></td>
              <td width="5%" height="20" align="center"> <%# Eval("Id") %></td>
              <td width="10%" height="20" align="center"><%# Eval("UId") %></td>
              <td width="20%" height="20" align="center"> <%# getSubstring(25, Eval("Title"))%></td>
              <td width="20%" height="20" align="center"> <%# getSubstring(25, Eval("Url")) %></td>
              <td width="10%" height="20" align="center">  <%#GetStatus(Eval("Status", "{0}")) %></td>
              <td width="15%" height="20" align="center"> <%# Convert.ToDateTime(Eval("UpdateTime")).ToString("yyyy-MM-dd")%></td>
              <td width="15%" height="20" align="center">
              <asp:TextBox ID="txtID" Text='<%# Eval("Id")%>' runat="server" style="display:none;"></asp:TextBox>
                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Edit" CommandArgument='<%# Eval("Id")%>' PostBackUrl="#">修改</asp:LinkButton>
                |
                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Hiddle" CommandArgument='<%# Eval("Id")%>' >审核</asp:LinkButton>
                | 
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('确实要删除此项组件吗？');">删除</asp:LinkButton>
                </td>
              </tr>
               </ItemTemplate>
       </asp:Repeater>
    <tr class="tdbg" style="width:100%;">
            <td height="22" colspan="11" colspan="10" align="center" class="tdbgleft">
               <span style="text-align: center">
                   共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />页次：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
                        class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_OnTextChanged"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
            </td>
        </tr>
        </tbody>
    </table>
     <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
        Text="全选" />&nbsp;
        <asp:Button ID="btnAudit" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="审核通过" CssClass="C_input" OnClick="btnShow_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要审核选中内容吗？')}" />&nbsp;
    <asp:Button ID="btnUnAudit" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="取消审核" CssClass="C_input" OnClick="btnHanddle_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要取消审核选中内容吗？')}" />&nbsp;
    <asp:Button ID="btnDeleteAll" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="删除" CssClass="C_input" OnClick="btnDal_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要将选中项删除吗？')}" />&nbsp;
</form>
</body>
</html>