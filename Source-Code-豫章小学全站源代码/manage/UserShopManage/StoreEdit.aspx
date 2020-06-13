<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_StoreEdit, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>商品列表</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
	}
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 商家店铺管理 
	</div>
      
<%--<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">

      <tbody id="Tabs" >

        <tr class="tdbg">
          <td width="34%" height="24" class="title">选择类型查询：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
            <asp:ListItem value="2">店铺名称</asp:ListItem>
            <asp:ListItem value="3">申请人</asp:ListItem>
          </asp:DropDownList>
              关键字:
              <asp:TextBox ID="keytxt" runat="server"></asp:TextBox>
              <asp:Button ID="Searchbtn" runat="server" Text="搜  索" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="keytxt"
                  ErrorMessage="请输入关键字"></asp:RequiredFieldValidator></td>
        </tr>
      </tbody>
    </table>
    --%>
     <div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="0" width="99%" border="0" align="center">
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 156px; height: 30px;">
                    店铺名称：
                </td>
                <td style="height: 30px">
                    <asp:Label ID="Namelabel" runat="server"></asp:Label></td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 156px; height: 30px;">
                    申请人用户名：
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 15%; height: 30px;">
                    店铺类型：
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" CellPadding="4" GridLines="None" Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="">
                        <Fields>
                        </Fields>
                        <FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
                        <CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
                        <FieldHeaderStyle Font-Bold="True" />
                        <PagerStyle HorizontalAlign="Left" />
                        <HeaderStyle Font-Bold="True" />
                        <EditRowStyle />     
                        <AlternatingRowStyle />
                    </asp:DetailsView>
                </td>
            </tr>
            <%--<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>--%>
            <tr >
                <td class="tdbgleft" colspan="2" align="center" >
                    <input id="Button1" type="button" value="返  回" OnClick="javascript:history.go(-1)"/></td>
            </tr>
    </table>
</form>
</body>
</html>

