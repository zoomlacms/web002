<%@ page language="C#" autoeventwireup="true" inherits="User_survey_SurveyAll, App_Web_qnehxnvg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>竞猜游戏</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
var x_open_path = ""; //设置图标地址 
</script>
<script type="text/javascript" src="../../JS/x_open.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>用户中心</span> &gt;&gt; 问卷投票调查&nbsp;&nbsp;<%--【<a href="#">我的问卷投票</a>】--%><asp:HiddenField 
        ID="Hidd" runat="server" />
</div>
<div class="clearbox">
</div>
<div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="SurveyID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging"  EmptyDataText="无相关数据">
        <Columns>   
            <asp:BoundField DataField="SurveyID" HeaderText="ID">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="10%" />
            </asp:BoundField>  
            <asp:TemplateField HeaderText="问卷名">
                <ItemTemplate>                                
                <a href="SurveyScore.aspx?surveyID=<%#Eval("SurveyID") %>"><%# Eval("SurveyName")%></a>                     
                </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    <HeaderStyle Width="30%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="投票类型">
                <ItemTemplate>                                
                    <%# Eval("SurType","{0}")=="1"?"投票":"问卷" %>
                </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    <HeaderStyle Width="10%" />
            </asp:TemplateField>
                <asp:TemplateField HeaderText="操作">                
            <ItemTemplate>
                <a href="SurveyScore.aspx?surveyID=<%#Eval("SurveyID") %>">回答</a>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns> 
    </asp:GridView>                                  
    <tr class="tdbg">
    <td height="22" align="center" class="tdbgleft">
        共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    个信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />
    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
        Text="" />页
    <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
        runat="server" AutoPostBack="True">
    </asp:DropDownList>
    页
    </td>
    </tr>
</table>
</div>
</form>
</body>
</html>