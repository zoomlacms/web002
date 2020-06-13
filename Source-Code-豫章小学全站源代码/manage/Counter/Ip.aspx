<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_Ip, App_Web_jul0migs" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register TagPrefix="ZL" Namespace="ZoomLa.Controls" Assembly="ZoomLa.Controls" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>总访问报表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style>
.border td{ border:1px solid #fff; width:auto; text-align:center; background:#e8f5ff}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation" >后台管理&gt;&gt; 扩展功能 &gt;&gt; <a href="Counter.aspx">访问统计</a> &gt;&gt; 总访问报表</div>

	<table cellspacing="0" cellpadding="2"  align="center"  width="100%">
		<tr class="title_link">
           <td class="spacingtitle" style="height: 22px" align="center"><a style="float: right;" href="counter.aspx">[返回]</a>访客累计：<%=allcount%>  </td>
            </tr>
            <tr>
             <td style="vertical-align: top;height:100%;" width="100%"> <div class="user_t"><div align="center">
                <table width="100%" border="0" align="center"   cellpadding="2"  cellspacing="1" style="height: 100%;">
                     <tr class="tdbg">
                      <td height="231" align="center" valign="top" bgcolor="#ffffff">
                          <%  if (allcount == 0) { %>
                                    <table width="100%"  align="center" cellpadding="2"  cellspacing="0" bordercolor="#6595d6">
                                        <tr> <td>
                                                <div align="center"> 没有任何数据</div>
                                            </td>
                                        </tr>
                                    </table>
                                    <% } else {%>
                                    <table width="100%" align="center"  class="border"  style="border-collapse:collapse" >
                                        <tr align="center" bgcolor="#e2e9ff" class="tdbg">
                                            <td width="10%">
                                                记录号
                                            </td>
                                            <td width="10%">访问者IP </td>
                                            <td width="10%">所在地</td>
                                            <td width="15%"> 访问日期</td>
                                            <td width="30%"> 引用页 </td>
                                            <td width="30%">  来源 </td>
                                        </tr>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr  bgcolor="#ffffff">
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountId") %>&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountIp") %>&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountCountry") %>
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountLogtime") %>
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountSource") %>
                                                    </td>
                                                    <td align="center">
                                                        <a href="#" title="<%# DataBinder.Eval(Container.DataItem,"CountReferer") %>">
                                                            <%# DataBinder.Eval(Container.DataItem,"CountReferer") %>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                    <%}%>
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <%-- <tr>
                                            <td style="text-align: center;">
                                                <ZL:Pager Style="margin-left: auto; margin-right: auto;" ID="pager" runat="server"
                                                    SubmitButtonText="跳转" PageSize="5" AlwaysShow="True" 
                                                    UrlPageIndexName="pageindex" ShowCustomInfoSection="Left" NumericButtonTextFormatString="[{0}]"
                                                    PagingButtonSpacing="8" NextPageText="<FONT face=webdings>4</FONT>" PrevPageText="<FONT face=webdings>3</FONT>"
                                                    LastPageText="<FONT face=webdings>:</FONT>" FirstPageText="<FONT face=webdings>9</FONT>"
                                                    NumericButtonCount="5" CssClass="paginator" HorizontalAlign="Left" ShowBoxThreshold="0"
                                                    Width="90%" OnPageChanged="AspNetPager1_PageChanged" 
                                                    CustomInfoSectionWidth="30%" ShowInputBox="Always" >
                                                </ZL:Pager>
                                                
                                            </td>
                                        </tr>--%>
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
                                                <asp:Label ID="pagess" runat="server" Text="" />10条信息/页 转到第
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                页
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
