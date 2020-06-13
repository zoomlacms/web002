<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_UpdateFlowerEn, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>花材设定</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的店铺" href="Default.aspx">我的店铺</a><&gt;&gt; <a title="花材管理" href="UpdateFlowerEn.aspx">设定花材是否充足</a>
</div>
<div style="line-height:25px;color:red">功能：1、打勾的为“花材充足”，即有货；没有打勾的为缺货，所有包含该花材的花束将不再任何分类中显示！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、取消或打勾后，必须要点击“确定修改花材是否充足” 按钮,才能生效！！！</div>
<div class="cleardiv"></div>
<asp:HiddenField ID="hfval" runat="server" />
  <div class="us_seta"  style="margin-top:5px;"><h1 align="center">设定花材是否充足</h1></div>
  <div style="width:100%">
    <asp:Repeater ID="repter" runat="server">
        <ItemTemplate>
        <asp:HiddenField ID="hffid" runat="server" Value='<%#Eval("FID") %>' />
        <asp:HiddenField  ID="txtprice" runat="server" Value='<%#Eval("flo_Price") %>'/>
        <div style="width:25%;float:left;border-top:1px #CCC solid;"><asp:Label ID="lbl" runat="server" Text='<%#Eval("Flo_Name")%>' Width="80px" style="Align:center"></asp:Label>&nbsp;
        <asp:CheckBox ID="chbox" runat="server" Checked='<%#GetChec(Eval("isEnougth","{0}")) %>' />
        </div>
        </ItemTemplate>
    </asp:Repeater>
  </div>
    <div style="width:100%;margin-top:5px; border-top:2px #CCC solid">
      <asp:Repeater ID="reppei" runat="server" >
            <ItemTemplate>
        <asp:HiddenField ID="hffid" runat="server" Value='<%#Eval("FID") %>' />
         <asp:HiddenField  ID="txtprice" runat="server" Value='<%#Eval("flo_Price") %>'/>
             <div style="width:20%;float:left;border-top:1px #CCC solid;"><asp:Label ID='lbll' runat="server" Text='<%#Eval("Flo_Name")%>' Width="40px" style="text-align:right"></asp:Label>&nbsp;
               <asp:CheckBox ID="chbox" runat="server" Checked='<%#GetChec(Eval("isEnougth","{0}")) %>' />
            </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div align="center" style="margin-top:25px;">
    <div align="center" >
    <asp:Button ID="btn" runat="server"  Text="修改花材是否充足" onclick="btn_Click" /></div>
    </div>
</div>
</form>
</body>
</html>