<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_CollectionStep3, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script src="/JS/RiQi.js" type="text/javascript"></script>

<script>
    function SetHr(cname, svalue, evalue,elvalue,revalue) {
        document.getElementById("hd_s_" + cname).value = svalue;
        document.getElementById("hd_e_" + cname).value = evalue;
        document.getElementById("hd_el_" + cname).value = elvalue;
        document.getElementById("hd_re_" + cname).value = revalue;
    }
    function showpage(itemid, name, alias) {
        window.open("CollectionInfoPage.aspx?ItemID=" + itemid + "&Name=" + name + "&Alias=" + alias, "newWin", "modal=yes,width=900,height=600,resizable=yes,scrollbars=yes");
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        <a href="CollectionStep3.aspx">
    采集项目管理&gt;&gt; <span>
            <%=title%></span></a>
    </div>   
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr class="tdbg">
            <td style="width: 20%" align="right">
                <strong>采集项目名称：</strong>
            </td>
            <td align="left" >
                <asp:Label ID="lblItemName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Width="100%" HeaderStyle-BackColor="#F0F6FC">
        <ItemTemplate>
            <%#GetHtml(DataBinder.Eval(Container.DataItem, "FieldAlias").ToString(), DataBinder.Eval(Container.DataItem, "FieldName").ToString(), DataBinder.Eval(Container.DataItem, "FieldType").ToString(), DataBinder.Eval(Container.DataItem, "Content").ToString(), DataBinder.Eval(Container.DataItem, "Description").ToString(), DataBinder.Eval(Container.DataItem, "ModelID").ToString())%>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList2" runat="server" Width="100%">
        <ItemTemplate>
            <%#GetHtml(DataBinder.Eval(Container.DataItem, "FieldAlias").ToString(), DataBinder.Eval(Container.DataItem, "FieldName").ToString(),  DataBinder.Eval(Container.DataItem, "FieldType").ToString(), DataBinder.Eval(Container.DataItem, "Content").ToString(), DataBinder.Eval(Container.DataItem, "Description").ToString(), DataBinder.Eval(Container.DataItem, "ModelID").ToString())%>
        </ItemTemplate>
    </asp:DataList>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr class="tdbg">
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="上一步" OnClick="Button2_Click"  CssClass="button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="保  存" OnClick="Button1_Click"  CssClass="button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Button3" type="button" value="返  回"  class="button" onclick="window.location.href='CollectionManage.aspx'" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
