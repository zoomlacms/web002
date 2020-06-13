<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_ResumeManage, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>应聘职位简历列表</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/calendar.js"></script>
<script type="text/javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1");
    var arrTabs = new Array("Div0", "Div1");

    function ShowTabs(ID) {
        location.href = 'ResumeManage.aspx?id=' + ID ;
    }
    function pload() {
        var ID = '<%=Request.QueryString["id"]%>';
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
        //parent.document.getElementById("main_right").height = document.body.offsetHeight;
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="us_topinfo">
            <div class="us_showinfo">
                    您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                        ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                        </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                            &gt;&gt; </span><span>应聘职位简历列表</span></span>
            </div>
            <div class="cleardiv">
            </div>
        </div>
        <div class="clearbox">
        </div>
        <div style="position: relative;">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                    <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                        未邀请应聘者
                    </td>
                    <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                        已邀请应聘者
                    </td>
                    <td>
                    &nbsp;
                </td>
                </tr>
            </table>
            <asp:GridView ID="gvJob" runat="server" DataKeyNames="Mid" EmptyDataText="<font color='red'>暂时没有数据</font>"
                Width="100%" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="简历ID" DataField="Mid" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center" />
                    <asp:TemplateField HeaderText="应聘者" HeaderStyle-Width="25%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#GetUname(Eval("UserID").ToString(), Eval("JobID").ToString())%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="应聘职位" HeaderStyle-Width="25%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#GetJob(Eval("JobID").ToString())%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="投递时间" DataField="Mtime" HeaderStyle-Width="25%" ItemStyle-HorizontalAlign="Center" />
                    <asp:TemplateField HeaderText="操作" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="邀请面试" OnClientClick="return confirm('确定要邀请这位应聘者吗？');"
                                Visible ='<%#GetE(Eval("UserID").ToString(), Eval("JobID").ToString()) %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" Text="删除" OnClientClick="return confirm('确定删除该这封简历吗？');"
                                OnClick="LinkButton2_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
                <tr class="tdbg">
                    <td height="22" colspan="6" align="center" class="tdbgleft">
                        共
                        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                        个信息
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                            Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" Text="" Width="26px" 
                            CssClass="l_input" AutoPostBack="True" ontextchanged="txtPage_TextChanged" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
                            runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        页
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
