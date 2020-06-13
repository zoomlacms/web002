<%@ page language="C#" enableviewstatemac="false" autoeventwireup="true" inherits="manage_Plus_ChartManage, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head id="Head1" runat="server">
<title>图表管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
	$(function () {
		$("#ShowBiao").hide();
		var ID = '<%=Request.QueryString["type"]%>';
		if (ID != '') {
			$("#Div" + ID).attr("class", "titlemouseover");
			document.getElementById("Div").className = "tabtitle";

		} else {
			document.getElementById("Div").className = "titlemouseover";
		}
	})
	function Move(cla) {
		$("#ShowBiao").show().css({ "top": event.clientY, "left": event.clientX });
		var type = $(cla).parent().next().text();
		var cid = $(cla).parent().parent().children().first().text();
		var srcva;
	   
			srcva = "/manage/Charts/Show.aspx?Did=" + cid+"&height=300&width=400";
		
		$("#ShowBiao").attr("src", srcva).css("border", "5px solid #cbe6fc");
	}
	function Mout() {
		$("#ShowBiao").hide();
}
function GsLlistShow() {
    $("#GsLi").show();
}
function GsLlistHide() {
    $("#GsLi").hide();
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="GsLi" style="z-index:6000; left: 0px; top: 28px; position: absolute; height:80%; width: 100%;background-color:White;display:none;
    padding:10 0 0 10;">
        <div style="text-align:center;">[<span style="cursor:pointer;font-size:16px;color:Green;" onclick="GsLlistHide()">返回</span>]</div>
        <div>
        <table width="100%" cellpadding="0" cellspacing="1" border="0" class="border">
              <tr class="title" align="center" style="height: 24px"><td>股市名称</td><td>操作</td></tr>
            <asp:Repeater ID="GsList" runat="server">
                <ItemTemplate>
                <tr align="center"  class="tdbg" onmouseover="this.className='tdbgmouseover';" onmouseout="this.className='tdbg';" style="height: 24px"><td><a href='../../Plugins/Stock.aspx?ID=<%# GetGname(Eval("Name").ToString())%>' target="_blank"><%# GetGname(Eval("Name").ToString())%></a></td><td>
                <a href='../../Plugins/Stock.aspx?ID=<%# GetGname(Eval("Name").ToString())%>' target="_blank">查看</a></td></tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
    </div>

    <iframe id="ShowBiao" src="" style="z-index: 1; left: 0px;position: absolute;background-color:White;" width="430" height="320"  onmouseout="Mout()" frameborder="0" scrolling="no"></iframe>
    <div class="r_navigation">后台管理 &gt;&gt;扩展功能 &gt;&gt; 图表管理&gt;&gt;&nbsp;图表列表<font color="red">[<a href="../Flex/AddChart.aspx" target="_self" style="color:Red;" >添加图表</a>]
    [<a style="color:Red;cursor:pointer" onclick="GsLlistShow()">股市列表</a>]</font></div>

    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr align="center">
        <td id="Div" class="titlemouseover"><a href="ChartManage.aspx?">所有图表</a></td>
        <td id="Div1" class="tabtitle"><a href="ChartManage.aspx?type=1">饼状图</a></td>
        <td id="Div2" class="tabtitle"><a href="ChartManage.aspx?type=2">线状图</a></td>
        <td id="Div3" class="tabtitle"><a href="ChartManage.aspx?type=3">柱状图</a></td>
        <td>&nbsp;</td>
      </tr>
    </table>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ChartID" Width="100%" AllowPaging="True" PageSize="10" OnRowCommand="Lnk_Click" CssClass="border" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField HeaderText="ID"  DataField="ChartID">
                <ItemStyle Width="5%" CssClass="Charid" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="图表标题(点击预览)">
                <HeaderStyle Width="20%" />
                <ItemTemplate>
                    <a class="preview" onclick="Move(this)" style="cursor:pointer"  > <%# Eval("ChartTitle")%></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="图表类型">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                    <%# Eval("ChartType")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="图表单位">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <%# Eval("ChartUnit")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="图表宽(px)">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                    <%# Eval("ChartWidth")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="图表高(px)">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                    <%# Eval("ChartHeight")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ChartID") %>'>修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Del" OnClientClick="return confirm('确定删除此图表？');" CommandArgument='<%# Eval("ChartID") %>'>删除</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="ifframe" CommandArgument='<%# Eval("ChartID") %>'>获取图表代码</asp:LinkButton>
                    
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
    </asp:GridView>
    <div style="text-align: center" class="tdbg">
        <span style="text-align: center">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div>
    </form>
</body>
</html>