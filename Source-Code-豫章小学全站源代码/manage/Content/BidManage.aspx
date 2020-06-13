<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_BidManage, App_Web_0tiy15lx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html  >
<head runat="server">
<title>中标信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript">
    var arrTabTitle = new Array("TabTitle1", "TabTitle2");
    var param1 =<%=this.ViewState["GeneralID"] %> ;
    var param2=<%=this.ViewState["NodeID"] %> ;
    window.onload = function () {
        pload();
    }
    function ShowTabs(ID) {
        location.href = 'BidManage.aspx?GeneralID='+param1+'&NodeID='+param2+'&status=' + ID;
    }

    function pload() {
        var tID = '<%=Request.QueryString["status"]%>';
        if (tID) {
            if (tID == 10) {
                document.getElementById(arrTabTitle[1].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[0].toString()).className = "titlemouseover";
            } else if (tID == 99) {
                document.getElementById(arrTabTitle[0].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[1].toString()).className = "titlemouseover";
            }
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
     <span>后台管理</span> &gt;&gt; <span><a href="ContentManage.aspx">内容管理</a></span> &gt;&gt; <span>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span> &gt;&gt; <span>中标信息</span>
    </div>
        <div class="clearbox">
    </div>
    <div>
        <table width="160px" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle1" class="titlemouseover" onclick="ShowTabs(10)">
                   已中标
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(99)">
                   未中标
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
               <td width="7%" height="20" align="center"> <strong>所属会员</strong></td>
              <td width="40%" height="20" align="center"> <strong>评论内容</strong></td>
              <td width="15%" height="20" align="center"> <strong>评论时间</strong></td>
              <td width="8%" height="20" align="center"> <strong>状态</strong></td>
               <td width="20%" height="20" align="center"> <strong>操作</strong></td>
                </tr>
     <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
        <ItemTemplate>
        <tr class="tdbg" style="cursor:pointer;" align="center" onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '" id="<%# Eval("commentID") %>"   >
              <td width="5%" height="20" align="center"> <asp:CheckBox ID="chkSel" Checked="false" runat="server" /></td>
              <td width="5%" height="20" align="center"> <%# Eval("CommentID")%></td>
              <td width="7%" height="20" align="center"><%# Eval("userID")%></td>
              <td width="40%" height="20" align="center"> <%# getSubstring(50, Eval("Contents"))%></td>
              <td width="15%" height="20" align="center"><%# Convert.ToDateTime(Eval("CommentTime")).ToString("yyyy-MM-dd HH:mm:ss")%></td>
              <td width="8%" height="20" align="center"><%# GetStatus(Eval("status"))%></td>
              <td width="20%" height="20" align="center">
              <asp:TextBox ID="txtID" Text='<%# Eval("CommentID")%>' runat="server" style="display:none;"></asp:TextBox>
                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="OK" CommandArgument='<%# Eval("CommentID")%>' PostBackUrl="#">审核中标</asp:LinkButton>
                |
                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Cancel" CommandArgument='<%# Eval("CommentID")%>' >取消中标</asp:LinkButton>
                | 
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("CommentID") %>' OnClientClick="return confirm('确实要删除此项组件吗？');">删除</asp:LinkButton>
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
        Text="审核中标" CssClass="C_input" OnClick="btnShow_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要审核中标选中内容吗？')}" />&nbsp;
    <asp:Button ID="btnUnAudit" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="取消中标" CssClass="C_input" OnClick="btnHanddle_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要取消中标选中内容吗？')}" />&nbsp;
    <asp:Button ID="btnDeleteAll" CausesValidation="false" Style="width: 110px;" runat="server" Text="删除" CssClass="C_input" OnClick="btnDal_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要将选中项删除吗？')}" />&nbsp;
  <%--  <asp:Button ID="btnPay" CausesValidation="false" Style="width: 110px;" runat="server" Text="结付" CssClass="C_input" OnClick="btnDal_Click" />&nbsp;--%>
    </form>
    <div class="emptyDiv" ></div>
   <table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" align="center">
        <tbody>
         <tr class="gridtitle" align="center" style="height: 25px;">
        <td  height="20" align="center" colspan="2"> <strong>竞标结果</strong></td>
        </tr>
         <tr class="tdbg"  onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"    >
        <td style="width:200px;">标题：</td>
        <td><asp:Label ID="lblTitle" runat="server" Text=" "></asp:Label></td>
        </tr>
          <tr class="tdbg"  onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"    >
        <td>发起人：</td>
        <td><asp:Label ID="lblUser" runat="server" Text=" "></asp:Label></td>
        </tr>
          <tr class="tdbg"  onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"    >
        <td>参与者：</td>
        <td><asp:Label ID="lblCID" runat="server" Text=" "></asp:Label></td>
        </tr>
          <tr class="tdbg"  onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"    >
        <td>竞标类型：</td>
        <td><asp:Label ID="lblType" runat="server" Text=" "></asp:Label></td>
        </tr>
        <tr class="tdbg"  onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"    >
        <td>胜出用户：</td>
        <td><asp:Label ID="lblWinID" runat="server" Text=" "></asp:Label></td>
        </tr>
        <tr class="tdbg"  onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"    >
        <td>最终状态：</td>
        <td><asp:Label ID="lblCheck" runat="server" Text=" "></asp:Label></td>
        </tr>
    </tbody>
    </table>
</body>
</html>
