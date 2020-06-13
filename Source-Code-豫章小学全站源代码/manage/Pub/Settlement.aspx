<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_Settlement, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>等级管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" language="javascript">
        function getinfo(id) {
            location.href = 'PageTemplate.aspx?id=' + id;
        }
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

    <script type="text/javascript" src="../../js/Drag.js"></script>

    <script type="text/javascript" src="../../js/Dialog.js"></script>

    <script type="text/javascript">
        function openurls(url) {
            Dialog.open({ URL: url });
        }
        function open_title(GeneralID) {
            var diag = new Dialog();
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = "修改竞标";
            diag.URL = "../Content/EditContent.aspx?GeneralID=" + GeneralID;
            diag.show();
        }

        function open_title2(userid) {
            var diag = new Dialog();
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = "用户资料";
            diag.URL = "../user/Userinfo.aspx?id=" + userid;
            diag.show();
        }

        function open_title3(Gid, Modelid) {
            var diag = new Dialog();
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = "查看内容";
            diag.URL = "../content/ShowContent.aspx?GID=" + Gid + "&modeid=" + Modelid;
            diag.show();
        }


        function open_title4(Gid) {
            var diag = new Dialog();
            diag.Width = 500;
            diag.Height = 300;
            diag.Title = "结算竞标";
            diag.URL = "AddSettlement.aspx?GID=" + Gid;
            diag.show();
        }
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>互动管理</span> &gt;&gt; <span>竞标管理</span> &gt;&gt;
        <span><a href="Settlement.aspx">结算中心</a></span>
    </div>
    <div class="clearbox">
    </div>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="8" style="height: 30px;">
               查询条件：
             
                <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="30">本月</asp:ListItem>
                    <asp:ListItem Value="7">本星期</asp:ListItem>
                    <asp:ListItem Selected="True" Value="0">今天</asp:ListItem>
                    <asp:ListItem Value="-1">昨天</asp:ListItem>
                    <asp:ListItem Value="-2">前天</asp:ListItem>
                    <asp:ListItem Value="-7">上个星期</asp:ListItem>
                    <asp:ListItem Value="-30">上个月</asp:ListItem>
                    <asp:ListItem Value="-365">去年</asp:ListItem>
                </asp:DropDownList>
                　用户名：<asp:TextBox ID="keyword" runat="server" Width="168px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="8" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tbody>
            <tr class="gridtitle" align="center" style="height: 25px;">
                <td width="5%" height="20">
                    ID
                </td>
                <td width="15%">
                    <strong>结算编号</strong>
                </td>
                <td width="10%">
                    <strong>竞标价格</strong>
                </td>
                <td width="10%">
                    <strong>中标分成</strong>
                </td>
                <td width="10%">
                    <strong>达标分成</strong>
                </td>
                <td width="10%">
                    <strong>网站商分成</strong>
                </td>
                <td width="10%">
                    <strong>结算时间</strong>
                </td>
                <td width="10%">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        style="height: 25px;">
                        <td>
                            <%#Eval("ID") %>
                        </td>
                        <td>
                            <%#Eval("SettlementTitle")%>
                        </td>
                        <td align="center">
                            <%#Eval("SettlementAllMoney","{0:F2}")%>
                        </td>
                        <td align="center">
                            <%#Eval("SuccessfulMoney", "{0:F2}")%>
                        </td>
                        <td>
                            <%#Eval("ComplianceMoney", "{0:F2}")%>
                        </td>
                        <td>
                            <%#Eval("WebSiteMoney", "{0:F2}")%>
                        </td>
                        <td>
                            <%#Eval("SettlementTime")%>
                        </td>
                        <td>
                            <a href="?menu=delete&id=<%#Eval("ID") %>" onclick="return confirm('确实要删除吗?');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td align="center" class="tdbg" style="height: 24px;" colspan="8">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="9" style="height: 30px;">
                <b>结算表：</b>ZL_SettlementInfoList
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>
