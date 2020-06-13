<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_HitsList, App_Web_0tiy15lx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head runat="server">
<title><%=lang.Get("M_HitsList_evaluationList")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script src="../../JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation navheight"><%=lang.Get("M_SpecContent_manage")%>&gt;&gt;<%=lang.Get("M_SpecContent_content")%> &gt;&gt;<%=lang.Get("M_HitsList_accessEvaluation")%>&gt;&gt;<%=lang.Get("M_HitsList_evaluationList")%></div>

    <div style=" margin-left:30px; float:left;"> <%=lang.Get("M_HitsList_title")%>： <asp:TextBox ID="txtTitle" ToolTip="支持模糊查询" runat="server" Width="100px" CssClass="l_input"></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <%=lang.Get("M_HitsList_month")%>：<asp:TextBox ID="txtTime" runat="server" Width="100px" CssClass="l_input" onclick="calendar();"   ></asp:TextBox>
            <asp:Button ID="btnSeach" runat="server" class="C_input" Text="查询" Width="80px" onclick="btnSeach_Click" />
    </div>
    <div style=" margin-right:150px; float:right;"><%=lang.Get("M_HitsList_statisticsForTheNum")%>：<asp:Label ID="txtIpCount" runat="server" ></asp:Label></div>


	<table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" align="center">
    <tbody>
        <tr class="gridtitle" align="center" style="height: 25px;">
        <td width="5%" height="20" align="center"> <strong>选择</strong></td>
        <td width="5%" height="20" align="center"> <strong>ID</strong></td>
        <td width="15%" height="20" align="center"> <strong>时间</strong></td>
        <td width="10%" height="20" align="center"> <strong>访问者</strong></td>
        <td width="20%" height="20" align="center"> <strong>信息标题</strong></td>
        <td width="15%" height="20" align="center"> <strong>来源IP</strong></td>
        <td width="8%" height="20" align="center"> <strong>是否评价</strong></td>
        </tr>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <tr class="tdbg" style="cursor:pointer;" align="center" onmouseover="this.className='tdbgmouseover '" onmouseout="this.className='tdbg '"     >
              <td width="5%" height="20" align="center"> <asp:CheckBox ID="chkSel" Checked="false" runat="server"  />
              <asp:TextBox ID="txtUserID"  Visible="false"  Text='<%# Eval("Inputer")%>'  runat="server"></asp:TextBox></td>
               <asp:TextBox ID="txtID"  Visible="false"  Text='<%# Eval("ID")%>'  runat="server"></asp:TextBox></td>
              <td width="5%" height="20" align="center"> <%# Eval("ID")%></td>
              <td width="7%" height="20" align="center"><%#  Convert.ToDateTime(Eval("UpdateTime")).ToString("yyyy-MM-dd HH:mm:ss")%></td>
              <td width="7%" height="20" align="center"><%# Eval("UserName")%></td>
              <td width="40%" height="20" align="center"><a href="?title=<%#Eval("Title") %>" > <%# getSubstring(25, Eval("Title"))%></a></td>
              <td width="15%" height="20" align="center"><%#Eval("Ip")%></td>
              <td width="8%" height="20" align="center"><%# GetStatus(Eval("status"))%></td>
              </tr>
              </ItemTemplate>
    </asp:Repeater>
     <tr class="tdbg" style="width:100%;">
            <td height="22" colspan="7" align="center" class="tdbgleft">
               <span style="text-align: center">
                   <%=lang.Get("M_HitsList_totalOf")%><asp:Label ID="Allnum" runat="server" Text=""></asp:Label><%=lang.Get("M_HitsList_data")%>
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" /><%=lang.Get("M_HitsList_page")%>：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" /><%=lang.Get("M_HitsList_page2")%>
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
                        class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> <%=lang.Get("M_HitsList_data")%>/<%=lang.Get("M_HitsList_page2")%> <%=lang.Get("M_HitsList_go")%>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_OnTextChanged"></asp:DropDownList>
                            <%=lang.Get("M_HitsList_page2")%><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
            </td>
        </tr>
    </tbody>
    </table>
     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
        Text="全选" />&nbsp;
        <asp:Button ID="btnAudit" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="评价奖励" CssClass="C_input" OnClick="btnShow_Click" OnClientClick="if(!IsSelectedId()){alert('请选择一项项以上');return false;}else{return confirm('你确定要奖励选中项吗？')}" />&nbsp;

</form>
</body>
</html>
