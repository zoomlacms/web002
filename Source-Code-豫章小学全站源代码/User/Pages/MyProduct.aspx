<%@ page language="C#" autoeventwireup="true" inherits="page_Content_MyProduct, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的内容</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="../../JS/SelectCheckBox.js"></script>
</head>
<body>
<div class="us_pynews">
<div class="us_seta">
您的位置：<a title="网站首页" href="/" target="_top"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;投稿管理&gt;&gt;<asp:Label ID="lblNodeName" runat="server" Text="Label"></asp:Label>
</div>
</div>
<div class="us_pynews">
    <div class="us_seta">
        <asp:Label ID="lblAddContent" runat="server" Text="Label"></asp:Label>
    </div>
</div>          
<div class="us_pynews">
    <form id="form1" runat="server">
    <div class="us_seta">
        <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="GeneralID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:TemplateField HeaderText="选择">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkSel" runat="server" />
                  </ItemTemplate>
                  <ItemStyle HorizontalAlign="Center" />                
                </asp:TemplateField>
                <asp:BoundField DataField="ID" HeaderText="ID">
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="标题">
                <HeaderStyle Width="50%" />
                <ItemTemplate>  
                    <a href="<%# GetUrl(Eval("ID", "{0}"))%>" target="_blank"><%# Eval("Proname")%></a>     
                </ItemTemplate>            
                </asp:TemplateField>
                <asp:TemplateField HeaderText="状态">
                <ItemTemplate>  
                    <%# GetStatus(Eval("istrue", "{0}")) %>       
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已生成">
                <ItemTemplate>  
                    <%# GetCteate(Eval("MakeHtml", "{0}"))%>     
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>            
                <asp:TemplateField HeaderText="操作" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>'>修改</asp:LinkButton> | 
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('你确定将该数据删除到回收站吗？')">删除</asp:LinkButton>
                  </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" Height="25px" />
            <EditRowStyle BackColor="#2461BF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>       
       <div style="width:100%; float:left;line-height:30px; margin-top:5px;">
            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="选中本页显示的所有项目" />
            <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" CssClass="button" UseSubmitBehavior="true" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">按标题查找</asp:ListItem>
                <asp:ListItem Value="1">按ID查找</asp:ListItem>                    
            </asp:DropDownList>
            <asp:TextBox ID="TxtSearchTitle" runat="server"></asp:TextBox>
            <asp:Button ID="Btn_Search" runat="server" Text="搜索" CssClass="button" OnClick="Btn_Search_Click" />
           <asp:HiddenField ID="HiddenField1" runat="server" />
           <asp:HiddenField ID="HiddenField2" runat="server" />
        </div>                 
    </div>          
  </form>
</div>
</body>
</html>