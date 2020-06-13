<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_InsertUrlRewr, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8"/> 
<title>域名列表</title>
<link type="text/css" rel="stylesheet" href="Css/global.css" />
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
    <div class="urlmain">
    <div class="urlm_title urlm_top">绑定域名</div>
        <div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
                <tr align="center">
                    <th width="5%" class="title">
                        <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                    </th>
                    <th width="15%" class="title">网址</th>
                    <th width="15%" class="title">状态</th>
                    <th width="15%" class="title">操作</th>
                </tr>
                <asp:Repeater ID="gvCard" runat="server" OnItemCommand="gvCard_ItemCommand">
                    <ItemTemplate>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td height="22" align="center">
                                <input name="Item" type="checkbox" value='<%# Eval("SID")%>' />
                            </td>
                            <td height="22" align="center">
                                <%# Eval("domainname")%><img src="<%#SiteFlag(Convert.ToBoolean(Eval("flag")))%>" />
                            </td>
                            <td height="22" align="center">
                                <%#SiteFlagtext(Convert.ToBoolean(Eval("flag")))%>
                            </td>
                            <td height="22" align="center">
                                <a href="InsertUrlRewr.aspx?menu=stop&id=<%#Eval("SID") %>">停用</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                                <a href="InsertUrlRewr.aspx?menu=start&id=<%#Eval("SID") %>">启用</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                                <asp:LinkButton ID="dellink" runat="server" CommandName="Del" CommandArgument='<%#Eval("SID") %>' Enabled='<%#Sitedel((Eval("domainname").ToString())) %>' OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</asp:LinkButton><%--<a href="InsertUrlRewr.aspx?menu=del&id=<%#Eval("SID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>--%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr class="tdbg">
                    <td height="22" colspan="4" align="left" class="tdbgleft">
                        <asp:Button runat="server" ID="btn3" Text="批量删除" OnClick="btn3_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="urlm_set">
            域名:<asp:TextBox runat="server" ID="txtdomainname" CssClass="txtdom"></asp:TextBox>
            <asp:Button runat="server" ID="btn1" Text="保存" OnClick="btn1_Click" />
        </div>
        <div class="urlm_txt">
            <table width="100%">
                <tr>
                    <td colspan="4" class="f_left">
                        1、默认开通子站即拥有一个固定的二级域名访问，是不可删除的。<br />
                        2、默认的二级域名记录在库中，不是记录完整网址，而是前缀，后缀是随siteurl或黄页来变化。<br />
                        3、可以添加审核
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>