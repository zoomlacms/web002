<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Message, App_Web_4fbteau0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>收件箱</title> 
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo"> 
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt;<a title="短消息管理" href="/User/Message/Message.aspx">收件箱</a>
</div>

<div class="us_topinfo">
<ul>
<li><a href="MessageSend.aspx">写短消息</a></li>
<li><a href="Message.aspx">收件箱</a></li>
<li><a href="MessageOutbox.aspx">发件箱</a></li>
<li><a href="MessageDraftbox.aspx">草稿箱</a></li>
<li><a href="MessageGarbagebox.aspx">垃圾箱</a></li>
<li><a href="Mobile.aspx">手机短信</a></li>
</ul>
</div>

<div style="margin-top: 10px;">
<div class="us_infoa">
<div class="us_seta" style="margin-top: 5px;">
    <h1 align="center"> 收件箱</h1>
    <div class="us_pynews"> <span lang="zh-cn">&nbsp;&nbsp; </span>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing"
            Width="100%" DataKeyNames="MsgID" OnRowCommand="Row_Command" >
            <Columns>
                <asp:TemplateField HeaderText="选择" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="center">
                    <ItemTemplate><asp:CheckBox ID="cheCk" runat="server" /></ItemTemplate>
                    <HeaderStyle Width="5%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="主题">
                    <HeaderStyle Width="40%" />
                    <ItemTemplate><%# Eval("Title", "{0}")%>（<%#getStatus(Eval("status","{0}"))%>)</ItemTemplate>
                    <ItemStyle HorizontalAlign="left" />
                </asp:TemplateField>
                <asp:BoundField DataField="Sender" HeaderText="发件人" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="center">
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="PostDate" HeaderText="发送日期" HeaderStyle-Width="20%" ItemStyle-HorizontalAlign="center">
                    <HeaderStyle Width="20%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="操作" HeaderStyle-Width="20%" ItemStyle-HorizontalAlign="center">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDel" runat="server" CommandName="DeleteMsg" OnClientClick="if(!this.disabled) return confirm('确实要删除此信息到垃圾箱吗？');"
                            CommandArgument='<%# Eval("MsgID")%>' Text="删除"></asp:LinkButton>
                        <asp:LinkButton ID="lbRead" runat="server" CommandName="ReadMsg" CommandArgument='<%# Eval("MsgID")%>'><%#getMess(Eval("status","{0}"))%></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="20%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <RowStyle  Height="25px" CssClass="tdbg" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
                Height="30px" Font-Overline="False" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
                NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
            Text="全选" />
        <asp:Button ID="Button1" runat="server" class="C_input" Font-Size="9pt" Text="取消"
            OnClick="Button1_Click" />
        <asp:Button ID="Button2" class="C_input" runat="server" Font-Size="9pt" Text="批量删除"
            OnClick="Button2_Click" />
             共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页 <span style="text-align: center">
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        </span>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList> 页
    </div>
</div>
</div>
</div>
</form>
</body>
</html>