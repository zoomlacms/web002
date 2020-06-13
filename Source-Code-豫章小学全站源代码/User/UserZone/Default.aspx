<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Default, App_Web_b1vdkvuv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link href="../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script language="javascript">
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
<style type="text/css">
.U_input { border:1px solid #aaaaaa; height:18px; }
.U_input:hover { background:#FFFFD8; }
#Nametxt { border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; border-color: #8762D5; }
</style>
</head>
<body>
<form id="form1" runat="server">
  <div style="margin:auto; width:100%">
    <asp:MultiView ID="MultiView1" runat="server">
      <asp:View ID="View1" runat="server">
        <div class="us_topinfo" style="width:98%">
          <div class="us_pynews">
            您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank">
              <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
              </a></span><span>&gt;&gt; </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent"> 会员中心</a></span><span> &gt;&gt; </span><span><a title="我的空间" href="/User/Userzone/Default.aspx"> 我的空间</a></span></span>
          </div>
        </div>
        <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
        <div class="us_topinfo" style="margin-top: 10px; width:98%"> <a href="/user/userzone/Default.aspx">修改空间基本信息</a> | <a href="/user/userzone/StyleSet.aspx"> 设定空间模板</a> | <a href="/ShowList.aspx?id=<%=id %>" target="_blank">个人空间首页</a></div>
        <div class="us_topinfo" style="margin-top: 10px; width:98%">
          <li style="width: 120px; float: left; line-height: 30px; text-align: right;"> 空间名称： </li>
          <li style="width: 70%; line-height: 30px">
            <asp:TextBox ID="Nametxt" class="U_input" runat="server" Text='' Width="35%" MaxLength="30"></asp:TextBox>
            <span><font color="red">*</font></span>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Nametxt">名称必填</asp:RequiredFieldValidator>
          </li>
          <li style="width: 120px; float: left; line-height: 30px; text-align: right">空间简介： </li>
          <li style="width: 70%; line-height: 30px; font-weight: bold;">
            <textarea id="textareacontent" class="U_input" style="width: 294px; height: 138px" runat="server"></textarea>
          </li>
          <li style="width: 120px; float: left; line-height: 30px; text-align: right">推广地址： </li>
          <li style="width: 70%; line-height: 30px">
            <asp:TextBox ID="txtPromotion" runat="server" Width="300px"></asp:TextBox>
          </li>
          <li style="width: 400px; float: left; line-height: 30px; text-align:center;">
            <asp:Button ID="EBtnSubmit" class="i_bottom"  runat="server" OnClick="EBtnSubmit_Click"  Text="信息提交"  />
            &nbsp;
            <input ID="Button1" class="i_bottom" onclick="javascript:history.go(-1)" type="button"  value="返  回"  />
            <asp:HiddenField ID="HiddenField1" runat="server" />
          </li>
          <li style="width:100%; height:30px; "> </li>
        </div>
      </asp:View>
      <asp:View ID="View2" runat="server"> 系统未开启此功能，请在后台-系统设置-网站参数设置启用该功能。 </asp:View>
    </asp:MultiView>
    <!-- str --> 
  </div>
</form>
</body>
</html>