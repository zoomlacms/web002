<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CommentManage, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("M_CommentManage_comment")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <style>
 .rap { word-wrap: break-word; word-break: break-all;}
#Egv  td{ border:1px solid #fff; width:auto; text-align:center}
.user_t{border:1px solid #9bbde6; border-top:none}
 .borders{ border-bottom:1px solid #40a2fd}</style>
 <script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript">
    function getinfo(id) {
       location.href = 'AddProduct.aspx?id=' + id;
    }
 var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
    window.onload = function () {
        pload();
    }
    function ShowTabs(ID) {
        location.href = 'CommentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;
    }

    function pload() {
        var ID = '<%=Request.QueryString["id"]%>';
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
    }
 </script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<%=lang.Get("M_SpecContent_manage")%> &gt;&gt;<%=lang.Get("M_CommentManage_system")%> &gt;&gt; <a href="ContentManage.aspx"><%=lang.Get("M_SpecContent_content")%></a>&gt;&gt;<%=lang.Get("M_CommentManage_comment")%>
</div>
<div class="clearbox">
</div>
   <div class="borders">
  <table border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)"><%=lang.Get("M_CommentManage_allComment")%>
                 <div style="display:none"> <asp:LinkButton ID="LbtnAllComment" runat="server" OnClick="BtnAllComment_Click"></asp:LinkButton>
                      <asp:LinkButton ID="LbtnUNAuditedComment" runat="server" OnClick="BtnUNAuditedComment_Click"><%=lang.Get("M_CommentManage_pendingReview")%></asp:LinkButton>
                           <asp:LinkButton ID="LbtnuditedComment" runat="server" OnClick="BtnAuditedComment_Click"><%=lang.Get("M_CommentManage_haveReviewd")%></asp:LinkButton></div>
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
               <%=lang.Get("M_CommentManage_pendingReview")%>
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
              <%=lang.Get("M_CommentManage_haveReviewd")%>
		</td>
	</tr>
</table>
</div>
<div class="clearbox">
</div>
<div class="user_t">
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CommentID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%">
	<Columns>
		<asp:TemplateField HeaderText="选择">
			<HeaderStyle Width="5%" />
			<ItemTemplate>
				<asp:CheckBox ID="chkSel" runat="server" />
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" />
		</asp:TemplateField>
		<asp:BoundField DataField="CommentID" HeaderText="ID">
			<HeaderStyle Width="5%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="所属内容标题">
			<HeaderStyle Width="20%" />
			<ItemTemplate>
				<a href="<%# GetUrl(Eval("GeneralID", "{0}"))%>" target="_blank">
					<%# GetTitle(Eval("GeneralID", "{0}"))%></a>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="left" />
		</asp:TemplateField>
		<asp:BoundField DataField="Title" HeaderText="评论标题">
			<HeaderStyle Width="10%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="left" />
		</asp:BoundField>
		<asp:BoundField DataField="Contents" HeaderText="评论内容">
			<HeaderStyle Width="25%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="left" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="发表日期">
			<HeaderStyle Width="10%" />
			<ItemTemplate>
				<%# Eval("CommentTime", "{0:yyyy-mm-dd}")%>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="发表人">
			<HeaderStyle Width="10%" />
			<ItemTemplate>
				<%# GetUserName(Eval("UserID", "{0}"))%>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="操作">
			<ItemTemplate>
				<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("CommentID") %>' OnClientClick="return confirm('你确定将该数据彻底删除吗？')"><%=lang.Get("delete")%></asp:LinkButton>
				|
				<asp:LinkButton ID="LinkButton1" runat="server" CommandName="Audit" CommandArgument='<%# Eval("CommentID") %>' OnClientClick="return confirm('你确定将该数据还原吗？')"><%=lang.Get("m_CommentManage_audit")%></asp:LinkButton>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
	<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView></div>
<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
<asp:Button ID="Button1"   runat="server" Text="删除选定的评论" OnClick="BtnSubmit1_Click" UseSubmitBehavior="False" OnClientClick="if(!confirm('确定要批量删除评论吗？')){return false;}" class="C_input"/>
<asp:Button ID="Button2"   runat="server" Text="审核通过选定的评论" OnClick="BtnSubmit2_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button3"  runat="server" Text="取消审核选定的评论" OnClick="BtnSubmit3_Click" UseSubmitBehavior="False" class="C_input" />

</form>
</body>
</html>