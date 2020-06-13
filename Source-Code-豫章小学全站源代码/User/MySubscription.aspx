<%@ page language="C#" autoeventwireup="true" inherits="User_MySubscription, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的订阅管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/JavaScript">
var tID=0;
var arrTabTitle = new Array("TabTitle0","TabTitle1");
var arrTabs = new Array("Tabs0","Tabs1");
function ShowTabs(ID)
{
	if(ID!=tID)
	{
		document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
		document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
		document.getElementById(arrTabs[tID].toString()).style.display = "none";
		document.getElementById(arrTabs[ID].toString()).style.display = "";
		tID=ID;
	}
}
</script>
<script type="text/javascript">
//根据传入的checkbox的选中状态设置所有checkbox的选中状态
function selectAll(obj)
{
    var allInput = document.getElementsByTagName("input");
    //alert(allInput.length);
    var loopTime = allInput.length;
    for(i = 0;i < loopTime;i++)
    {
        //alert(allInput[i].type);
        if(allInput[i].type == "checkbox")
        {
            allInput[i].checked = obj.checked;
        }
    }
}
//判断是否选中记录，用户确认删除
function judgeSelect()
{
var result = false;
var allInput = document.getElementsByTagName("input");
var loopTime = allInput.length;
for(i = 0;i < loopTime;i++)
{
    if(allInput[i].checked)
    {
        result = true;
        break;
    }
}
if(!result)
{
    alert("请先选择要删除的记录！");
    return result;
}
result = confirm("你确认要删除选定的记录吗？");
return result;
} 

</script>
<style type="text/css">
.tabtitle { font-weight: normal; width: 80px; text-align: center; }
.titlemouseover { font-weight: bold; width: 80px; text-align: center; }
</style>
</head>
<body>
<form id="form1" runat="server">
    <div class="us_topinfo">
        您现在的位置：<a title="网站首页" href="/" target="_blank">
          <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 订阅管理
    </div>

    <div class="us_seta" id="Tabs0" style="margin-top: 10px;">
      <h1 style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="我的订阅管理"></asp:Label>
      </h1>
      <asp:Panel ID="Orderlist" runat="server" Width="100%">
        <ul style="background-color: Blue">
          <li style="width: 18%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC"> 订阅编号 </li>
          <li style="width: 20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC"> 订阅标题 </li>
          <li style="width: 20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC"> 生效日期 </li>
          <li style="width: 20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC"> 到期日期 </li>
          <li style="width: 20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC"> 操作</li>
        </ul>
        <asp:Repeater ID="MySub" runat="server" OnItemCommand="MySub_ItemCommand" onitemdatabound="MySub_ItemDataBound">
          <ItemTemplate>
            <ul >
              <li style="width: 18%; float: left; line-height: 28px; text-align: center; white-space: nowrap;overflow: hidden"><%#Eval("Id")%></li>
              <li style="width: 20%; float: left; line-height: 28px; text-align: center; white-space: nowrap; overflow: hidden">
                <asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("id") %>' />
                <asp:HyperLink ID="lbTitle" runat="server" ><%#Eval("title") %></asp:HyperLink>
              </li>
              <li style="width: 20%; float: left; line-height: 28px; text-align: center;"><%#Eval("effectTime")%></li>
              <li style="width: 20%; float: left; line-height: 28px; text-align: center;"><%#GetDate(Eval("endTime","{0}"))%> </li>
              <li style="width: 20%; float: left; display: block; line-height: 28px; text-align: center;">
                <asp:LinkButton ID="lbDel" runat="server" CommandName="Del" CommandArgument='<%# Eval("Id") %>'>删除</asp:LinkButton>
              </li>
            </ul>
          </ItemTemplate>
        </asp:Repeater>
        <ul>
          <br />
          <span style="width: 350px;">
          <%--<input name="chk23" type="checkbox" ID="chk23" runat="server" onclick="selectAll(this)" class="checkbox"/> 全选--%>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <%--<asp:Button ID="btn_DeleteRecords" runat="server" OnClientClick="return judgeSelect();" Text="删除选中记录" OnClick="btn_DeleteRecords_Click" />--%>
          </span>
          <li style="width: 98.5%; float: left; line-height: 28px; text-align: center;"> 共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条信息
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页 <span style="text-align: center">
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
            </span>条信息/页  转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            页 </li>
        </ul>
        </asp:Panel>
    </div>
  </div>
</form>
</body>
</html>
