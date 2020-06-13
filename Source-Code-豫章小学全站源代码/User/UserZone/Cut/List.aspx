<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Pcutlist, App_Web_efmtsymw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
<title>剪刀列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/App_Themes/UserThem/cut.css" type="text/css" rel="stylesheet" />
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
</head>
<body>
<form id="form1" runat="server">
<div class="us_pynews">
<a href="~/">首页</a>&gt;&gt;<a href="../../Default.aspx">会员中心</a> &gt;&gt;<a href="List.aspx">网页剪刀</a>&nbsp;<font color="red">[<a href="Home.aspx" style="color: Red" target="_blank">添加组件</a>]</font></div>
    <table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 25px;">
              <td width="5%" height="20" align="center"> <strong>选择</strong></td>
              <td width="5%" height="20" align="center"> <strong>ID</strong></td>
              <td width="12%" height="20" align="center"> <strong>标题</strong></td>
              <td width="18%" height="20" align="center"> <strong>URL</strong></td>
              <td width="5%" height="20" align="center"> <strong>上边距</strong></td>
              <td width="5%" height="20" align="center"> <strong>左边距</strong></td>
              <td width="5%" height="20" align="center"> <strong>宽度</strong></td>
               <td width="5%" height="20" align="center"> <strong>高度</strong></td>
               <td width="15%" height="20" align="center"> <strong>裁剪时间</strong></td>
                <td width="6%" height="20" align="center"> <strong>是否显示</strong></td>
                <td width="18%" height="20" align="center"> <strong>操作</strong></td>
                 </tr>
     <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
        <ItemTemplate>
           <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%# Eval("Id") %>" >
              <td width="5%" height="20" align="center"><asp:CheckBox ID="chkSel" Checked="false" runat="server" /></td>
              <td width="5%" height="20" align="center"><%# Eval("Id") %></td>
              <td width="12%" height="20" align="center"><%# getSubstring(8, Eval("Title"))%></td>
              <td width="18%" height="20" align="center"><%# getSubstring(25, Eval("Url")) %></td>
              <td width="5%" height="20" align="center"><%# Eval("PositionTop") %></td>
              <td width="5%" height="20" align="center"><%# Eval("PositionLeft") %></td>
              <td width="5%" height="20" align="center"><%# Eval("PositionWidth") %></td>
               <td width="5%" height="20" align="center"><%# Eval("PositionHeight") %></td>
               <td width="15%" height="20" align="center"><%# Eval("UpdateTime")%></td>
                <td width="6%" height="20" align="center"><%# getIsVisble(Eval("IsVisble"))%></td>
                <td width="18%" height="20" align="center"> 
                             
                           
                            <asp:TextBox ID="txtID" Text='<%# Eval("Id")%>' runat="server" style="display:none;"></asp:TextBox>
                            <input type="text" id="inputId" value='<%# Eval("Id")%>' runat="server"  style="display:none;" />
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Show" CommandArgument='<%# Eval("Id")%>' PostBackUrl="#">显示</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Hiddle" CommandArgument='<%# Eval("Id")%>' >隐藏</asp:LinkButton>
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
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
            </td>
        </tr>
        </tbody>
    </table>
     <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />&nbsp;
        <asp:Button ID="btnShow" CausesValidation="false" Style="width: 110px;" runat="server" Text="显示" CssClass="C_input" OnClick="btnShow_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要将选中内容设为显示吗？')}" />&nbsp;
    <asp:Button ID="btnHanddle" CausesValidation="false" Style="width: 110px;" runat="server" Text="隐藏" CssClass="C_input" OnClick="btnHanddle_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要将选中内容设为隐藏吗？')}" />&nbsp;
    <asp:Button ID="btnDal" CausesValidation="false" Style="width: 110px;" runat="server" Text="删除" CssClass="C_input" OnClick="btnDal_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要将选中内容删除吗？')}" />&nbsp;
    </form>
</body>
</html>