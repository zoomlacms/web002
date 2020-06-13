<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_manageOrder, App_Web_emowutw1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("M_manageOrder_vIPCard")%></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
   <script language="javascript" type="text/javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
}
function getinfo(oid,nodeid) {
    location.href = "WapOrder.aspx?menu=edit&oid="+oid+"&nodeid="+nodeid+"";
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HiddenNode" runat="server" />
    <div class="r_navigation">
        
        <span><%=lang.Get("M_manageOrder_wAPManage")%></span> &gt;&gt; <a href="WapOrder.aspx?nodeid=<%=HiddenNode.Value %>">[ <%=lang.Get("M_manageOrder_add")%> ]</a>&nbsp;&nbsp;&nbsp;
    </div>
    <div class="clearbox">
    </div>
    <div>     
    </div>
    <div style="text-align:center">   
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="10%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
     
        <td width="30%" class="title"><%=lang.Get("M_manageOrder_name")%></td>
        <td width="10%" class="title"><%=lang.Get("M_manageOrder_type")%></td>
        <td width="10%" class="title"><%=lang.Get("M_manageOrder_location")%></td>   
       
        <td width="30%" class="title"><%=lang.Get("M_Pubmanage_operation") %></td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server" >              
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id='<%# Eval("O_ID")%>' ondblclick="getinfo(this.id,<%# Eval("O_ID")%>,<%#Eval("nodeid") %>)" >
        <td height="22" align="center"><input id="Item" name="Item" type="checkbox" value='<%# Eval("O_ID")%>'/></td>
        <td height="22" align="center"><%# getTit(Eval("OMore"))%></td>
        <td height="22" align="center"><%#getUbbType(Eval("UbbType"))%></td>
        <td height="22" align="center"><%#getPostion(Eval("Postion"))%></td>
        <td height="22" align="center"><a href="WapOrder.aspx?menu=edit&oid=<%#Eval("O_ID") %>&nodeid=<%=HiddenNode.Value %>" >修改</a>
      
      <%-- <asp:LinkButton ID="LinkButton3" runat="server"  CommandName="Del" CommandArgument='<%# Eval("O_ID") %>'>删除</asp:LinkButton>--%>
      
        &nbsp;&nbsp;&nbsp;<a href="?menu=del&oid=<%#Eval("O_ID") %>&nodeid=<%=HiddenNode.Value %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="5" align="center" class="tdbgleft">
        <%=lang.Get("M_HitsList_totalOf") %>
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        <%=lang.Get("M_GuestCateMana_number")%>
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
         <%=lang.Get("M_HitsList_page")%>：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" /><%=lang.Get("M_HitsList_page2")%>
        <%--<asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
                Width="30px"></asp:TextBox>--%><asp:Label ID="pagess" runat="server" Text="" /><%=lang.Get("M_GuestCateMana_number")%>/<%=lang.Get("M_HitsList_page2")%> <%=lang.Get("M_HitsList_go")%><asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <%=lang.Get("M_HitsList_page2")%><%--<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>--%>
              </td>
      </tr>
    </table>
    <div>
        <asp:Button ID="Button3"  class="C_input" style="width:110px;"  runat="server"  OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
                        Text="批量删除" onclick="Button3_Click1"  /></div>
    </form>
</body>
</html>
