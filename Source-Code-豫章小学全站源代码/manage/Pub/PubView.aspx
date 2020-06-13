<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubView, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt;&nbsp; <span>
           查看信息</span>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenType" runat="server" />
       
    </div>
        <div class="border" style="margin-bottom: 3px; margin-top:10px;text-align:center;">
       <asp:Label ID="ptit" runat="server" Font-Bold="True" Font-Size="14px"></asp:Label>
           </div>
    <div class="clearbox" > </div>
        <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" 
                        CellPadding="4" GridLines="None" 
            Font-Size="12px" style="margin-bottom: 3px; margin-top:2px;" CssClass="r_navigation">
                        <Fields></Fields>
                        <FooterStyle Font-Bold="True"  BackColor="#FFFFFF" />
                        <CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
                        <RowStyle/>
                        <FieldHeaderStyle Font-Bold="True" />
                        <PagerStyle HorizontalAlign="Center" />
                        <HeaderStyle Font-Bold="True" />
                        <EditRowStyle />
                        <AlternatingRowStyle />
              </asp:DetailsView> 
 <asp:HiddenField ID="HiddenSmall" runat="server" />
                 <asp:HiddenField ID="HdnModelID" runat="server" />
                  <asp:HiddenField ID="HiddenID" runat="server" />
                    <asp:HiddenField ID="HiddenPubid" runat="server" />
   
    
    <div style="text-align:center;"> 
        <asp:Button ID="Button2" runat="server" class="C_input" onclick="Button2_Click" Text="回复" />
&nbsp;<asp:Button ID="Button1" runat="server" Text="返回"  class="C_input" onclick="Button1_Click" /></div>
    </form>
</body>
</html>
