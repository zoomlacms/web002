<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.ADManage, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Import Namespace="ZoomLa.BLL" %>
<%@ Import Namespace="System.Data" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>广告管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script language="javascript" type="text/javascript">
	var tID = 0;
	//var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
	var arrTabs = new Array("Div", "Div1", "Div2", "Div3", "Div4", "Div5");
	//添加专题

	function pload() {
		var ID = '<%=Request.QueryString["type"]%>';
		if (ID != '') {
			document.getElementById(arrTabs[ID].toString()).style.display = "";
			document.getElementById(arrTabs[ID].toString()).className = "titlemouseover";
			document.getElementById("Div").className = "tabtitle";

		} else {
			document.getElementById("Div").style.display = "";
			document.getElementById("Div").className = "titlemouseover";
			tID = ID;
		}
	}

    var tipTimer;
    function locateObject(n, d) {
        var p, i, x;

        if (!d) d = document;

        if ((p = n.indexOf('?')) > 0 && parent.frames.length)

        { d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p); }

        if (!(x = d[n]) && d.all) x = d.all[n];

        for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];

        for (i = 0; !x && d.layers && i < d.layers.length; i++) x = locateObject(n, d.layers[i].document); return x;
    }

    function showerrimg(obj) {
        obj.src = '/UploadFiles/nopic.gif';
    }
</script>
</head>
<body onload="pload()">
<form id="form1" runat="server">
  <div class="r_navigation">后台管理 &gt;&gt;扩展功能 &gt;&gt; <a href="ADManage.aspx">广告管理</a>&gt;&gt;广告列表&nbsp;[<a href="Advertisement.aspx" target="_self" class="red">添加广告</a>]</div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr align="center">
        <td id="Div" class="titlemouseover"><a href="ADManage.aspx?">所有广告</a></td>
        <td id="Div1" class="tabtitle"><a href="ADManage.aspx?type=1">图片</a></td>
        <td id="Div2" class="tabtitle"><a href="ADManage.aspx?type=2">动画</a></td>
        <td id="Div3" class="tabtitle"><a href="ADManage.aspx?type=3">文本</a></td>
        <td id="Div4" class="tabtitle"><a href=" ADManage.aspx?type=4">代码</a></td>
        <td id="Div5" class="tabtitle"><a href=" ADManage.aspx?type=5">页面</a></td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
  <div class="divbox" id="nocontent" runat="server"> 暂无广告信息</div>
  <div class="user_t">
    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="ADID" AllowPaging="True" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="Lnk_Click" CssClass="border" AllowSorting="true" OnRowDataBound="GridView1_RowDataBound">
      <Columns>
      <asp:TemplateField HeaderText="选择">
        <ItemTemplate>
          <asp:CheckBox ID="chkSel" runat="server" />
        </ItemTemplate>
        <ItemStyle Width="5%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:BoundField DataField="ADID" HeaderText="序号">
        <ItemStyle Width="5%" HorizontalAlign="Center" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="预览">
        <ItemTemplate> <a class="preview" rel="<%#Eval("imgurl") %>" href="PreviewAD.aspx?ADId=<%#Eval("ADId")%>"  > 预览</a> </ItemTemplate>
        <ItemStyle Width="5%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="广告名称">
        <ItemTemplate> <a href="Advertisement.aspx?ADId=<%#Eval("ADId")%>" title='<%# Eval("ADName")%>'> <%# Eval("ADName")%></a> </ItemTemplate>
        <ItemStyle Width="10%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="类型">
        <HeaderStyle Width="5%" />
        <ItemTemplate> <a href="ADManage.aspx?type=<%#Eval("ADType","{0}") %>"> <%# GetADType(Eval("ADType","{0}")) %></a> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:BoundField DataField="priority" HeaderText="权重">
        <ItemStyle Width="5%" HorizontalAlign="Center" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="点击数">
        <HeaderStyle Width="7%" />
        <ItemTemplate> <%#(bool)(Eval("countclick"))?Eval("clicks"):"不统计"%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="浏览数">
        <ItemTemplate> <%#(bool)(Eval("countview"))?Eval("views"):"不统计"%> </ItemTemplate>
        <ItemStyle Width="7%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="剩余天数">
        <ItemTemplate> <%#( (DateTime)(Eval("OverdueDate")) - DateTime.Now).Days%> </ItemTemplate>
        <ItemStyle Width="5%" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="已审核">
        <HeaderStyle Width="7%" />
        <ItemTemplate> <%# (bool)Eval("Passed") == false ? "<span style=\"color: #ff0033\">×</span>" : "√"%> </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="操作">
        <ItemTemplate>
          <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ADID") %>'>修改</asp:LinkButton>
          |
          <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ADID") %>'>复制</asp:LinkButton>
          |
          <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" OnClientClick="return confirm('确定要删除此广告吗？');" CommandArgument='<%# Eval("ADID") %>'>删除</asp:LinkButton>
          |
          <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Pass" CommandArgument='<%# Eval("ADID") %>'><%# (bool)Eval("Passed") == false ? "通过审核" : "取消审核"%></asp:LinkButton>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" Width="20%" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle ForeColor="#030E0E" HorizontalAlign="Center" />
      <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
      <HeaderStyle Font-Bold="True" ForeColor="#030E0E" BorderStyle="None" Height="30px" Font-Overline="False" CssClass="tdbg" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"  NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
  </div>
  <div style="text-align: center" class="tdbg"> <span style="text-align: center">共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    条数据
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />
    页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />
    /
    <asp:Label ID="PageSize" runat="server" Text="" />
    页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"  Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
    </span></div>
  <div class="clearbox"> </div>
  <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
  &nbsp;
  <asp:Button ID="btndelete" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择广告');return false;}else{return confirm('你确定要删除选中的广告吗？')}" Text="删除选定广告" OnClick="btndelete_Click" class="C_input" />
  &nbsp;
  <asp:Button ID="btnsetpassed" runat="server" Text="审核通过选定广告" OnClick="btnsetpassed_Click" class="C_input" />
  &nbsp;
  <asp:Button ID="btncancelpassed" runat="server" Text="取消审核选定广告" OnClick="btncancelpassed_Click" class="C_input" />
  <div id="dHTMLADPreview" style="z-index: 1000; left: 0px; visibility: hidden; width: 10px; position: absolute; top: 0px; height: 10px"> </div>
</form>
<script>
	this.imagePreview = function () {
		xOffset = 10;
		yOffset = 30;
		$("a.preview").hover(function (e) {
			//alert(this.rel);
			this.t = this.title;
			this.title = "";
			var c = (this.t != "") ? "<br/>" + this.t : "";
			$("body").append("<div id='preview'><img src='" + this.rel + "' alt='Image preview' onerror='javascript:errpic(this);' />" + c + "</div>");
			$("#preview")
		.css("top", (e.pageY - xOffset) + "px")
		.css("left", (e.pageX + yOffset) + "px")
		.css("z-index", "1000")
		.fadeIn("fast");

			GetImageSize();
			var W = imgWidth > 600 ? "600" : imgWidth;
			var H = imgHeight > 600 ? "600" : imgHeight;
			if (imgWidth <= imgHeight) {
				W = imgWidth / imgHeight * H;
			} else {
				H = imgHeight / imgWidth * W;
			}
			$("#preview img").css("height", H);
			$("#preview img").css("width", W);
		},
function () {
	this.title = this.t;
	$("#preview").remove();
});
		$("a.preview").mousemove(function (e) {
			$("#preview")
		.css("top", (e.pageY - xOffset) + "px")
		.css("left", (e.pageX + yOffset) + "px");
		});
	};
	$(document).ready(function () {
		imagePreview();
	});
</script>
</body>
</html>
<script type="text/javascript">
    var OriginImage = new Image();
    var imgWidth;
    var imgHeight;
    function GetImageSize() {
        OriginImage.src = $("#preview img").attr("src");
        imgWidth = OriginImage.width;
        imgHeight = OriginImage.height;
    }
    function errpic(thepic) {
        $("#preview img").attr("src", "/UploadFiles/nopic.gif");
        OriginImage.src = "/UploadFiles/nopic.gif";
        imgWidth = OriginImage.width;
        imgHeight = OriginImage.height;
    }
</script>