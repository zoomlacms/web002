<%@ page language="C#" autoeventwireup="true" inherits="manage_Workload_Subject, App_Web_bbiau0zi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head id="Head1" runat="server">
    <title>工作统计</title>
    <link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        后台管理&gt;&gt; 企业办公&gt;&gt; 工作统计</div>
    <div id="t1" runat="server">
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    <b>
                        <asp:Label ID="title" runat="server"></asp:Label></b>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right" style="height: 28px; width: 180px;">
                    <asp:Label ID="left" Text="" runat="server"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="UserName" runat="server" Visible="false"></asp:TextBox><asp:ListBox
                        ID="LstNodes" runat="server" DataTextField="NodeName" DataValueField="NodeId"
                        SelectionMode="Multiple" Height="282px" Width="200px"></asp:ListBox>
                    <input type="text" runat="server" id="start" visible="false" onclick="aa();" />
                    <asp:Calendar ID="Calendar1" Width="200" BorderColor="Gray" BackColor="AliceBlue" TitleStyle-BackColor="LightSkyBlue"
                        Style="top: 85px; left: 180px; position: absolute; z-index: 444; display: none;" ShowGridLines="True"
                        OnSelectionChanged="Calendar1_SelectionChanged"  SelectedDayStyle-BackColor="#DBDBDB" OnVisibleMonthChanged="OnVisibleMonthChanged1"  runat="server"></asp:Calendar>
                    <asp:Label ID="endtime" runat="server">
                    </asp:Label>
                    <input type="text" runat="server" id="end" onclick="bb();" visible="false" />
                    <asp:Calendar ID="Calendar2" Width="200" BorderColor="Gray" BackColor="AliceBlue" TitleStyle-BackColor="LightSkyBlue"
                        Style="position: absolute; top: 85px; left: 400px; z-index: 444; display: none;" ShowGridLines="True"
                        OnSelectionChanged="Calendar2_SelectionChanged" OnVisibleMonthChanged="OnVisibleMonthChanged2" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right">
                </td>
                <td align="left">
                    <asp:Button runat="server" ID="count" CssClass="C_input" Text="开始统计" OnClick="count_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div id="Top" runat="server" visible="false" style="text-align: center; font-size: 15px;
        font-weight: bold;">
        <asp:Label Text="统计报告" runat="server"></asp:Label></div>
    <div id="t2" runat="server" visible="false" style="text-align: center;">
        <%--  <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
    <tr class="tdbg" runat="server" id="NodeNames">
    <td align="center" height="24" width="10%"><b>ID</b></td>
     <td align="center" height="24" width="10%"><b>栏目名称</b></td>
     <td align="center" height="24" width="20%"><b>合计</b></td>
    </tr>
    <asp:Repeater ID="repeater1" runat="server" >
    <ItemTemplate>
    <tr class="tdbg"  id="<%#Eval("NodeID")%>" runat="server" onmouseover="this.className='tdbgmouseover'"onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id )" style="text-align: center;" >
    <td><strong><%# Eval("ID") %></strong></td>
    <td><strong><%# Eval("nodeid")%></strong></td>
    <td><strong><%# Eval("countNum")%></strong></td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
   </table>--%>
    </div>
    <div id="Excel" runat="server" visible="false" style="text-align: center; margin-top: 10px;">
        <input type="button" id="back" name="back" value="返回" class="C_input" onclick="javascript:history.back();" />
        <input type="button" id="GetExcel" name="GetExcel" value="导出为Excel" class="C_input"
            onclick="javascript:GetExcel1('tb');" />
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function GetExcel1(obj) {
        var gt;
        ($("#" + obj)).find("tr").each(function (i, item) {
            ($(item)).find("td").each(function (j, iten) {
                gt += $.trim($(iten).text()) + "$t";
            });
            gt += "$n";
        });
        window.location.href = "/manage/Content/GetExcel.aspx?txt=" + $.trim(gt.replace("undefined", ""));
    }
    function aa() {
        $("#Calendar1").css("display", "");
    }
    function bb() {
        $("#Calendar2").css("display", "");
    }
</script>
