<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_CarManage, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; <span>抢车位管理</span> &gt;&gt; <a href="CarManage.aspx">[车辆列表]</a>  |  <a href="CarAdd.aspx">[添加车辆]</a>  |  <a href="CarRuleManage.aspx" >[抢车位规则管理]</a>
        </div>
        <div>
            <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
            <tr class="tdbg">
                    <td colspan="2" align="center"  class="spacingtitle" >
                        车辆列表信息</td>
                </tr>
                <tr>
                    <td class="tdbg">
                        <asp:DataList ID="DataList1" Width="100%" DataKeyField="Pid" runat="server" RepeatColumns="4"
                            RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table width="100%">
                                    <tr>
                                        <td align="center">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#ResolveUrl(DataBinder.Eval(Container.DataItem,"P_car_img").ToString())%>' /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#ResolveUrl(DataBinder.Eval(Container.DataItem,"P_car_img_logo").ToString())%>' /><%#DataBinder.Eval(Container.DataItem,"P_car_name")%></td>
                                    </tr>
                                    <tr>
                <td align="center">
                价格：<%#DataBinder.Eval(Container.DataItem,"P_car_money")%>元
                </td>
                </tr>
                                    <tr>
                                        <td align="center" style="height: 23px">
                                            <asp:Button ID="Button1" runat="server" CommandName="Edit" Text='<%#GetStr(DataBinder.Eval(Container.DataItem,"P_car_check").ToString())%>'
                                                OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server"
                                                    Text="编 辑" OnClick="Button2_Click" /></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr class="tdbg">
                    <td height="24" colspan="6" align="center" class="tdbgleft">
                        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                            Text="" />页
                        <asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1"
                            runat="server" AutoPostBack="True">
                        </asp:DropDownList>页</td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>
