<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.ContentManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>内容管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
    <script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
    <script type="text/javascript">
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4");
        var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4");

        function ShowTabs(ID) {
            location.href = 'ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;
        }

        function pload() {
            var ID = '<%=Request.QueryString["id"]%>';
            if (ID != tID) {
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
                tID = ID;
            }
            //parent.document.getElementById("content_right").height = document.body.offsetHeight;
        }

        function Page() {

        }

        function Contribute(str) {
            var i = '<%= getcombox() %>';
            var tablename = '<%= getModeid() %>';
            if (i > 0) {
                if (tablename != "") {
                    window.open('/ManageSite/Common/Contribute.aspx?nid=<%=Request.QueryString["NodeID"] %>&tbname=' + str, '', 'width=600,height=450,resizable=0,scrollbars=yes');
                } else { alert("对不起！该内容不能投搞！"); }
            } else { alert("对不起！请选择要投搞的内容！"); }
        }

        function Rejection(str) {
            var i = '<%= getcombox() %>';
            if (i > 0 && str != "") {
                window.open('/ManageSite/Common/Rejection.aspx?nid=<%=Request.QueryString["NodeID"] %>&tbname=' + str, '', 'width=600,height=450,resizable=0,scrollbars=yes');
            } else { alert("对不起！请选择要退稿的内容！"); }
        }
        function returnContribute(val) {
            document.getElementById("hfContribute").value = val;
            alert(document.getElementById("hfContribute").value);
            form1.submit();
        }
        function chechs() {

        } 
    </script>
    <style type="text/css">
        .dragspandiv
        {
            background-color: #FFFBF5;
            filter: alpha(opacity=70);
            border: 1px solid #F6B9D6;
            text-align: center;
            overflow: hidden;
            padding: 2px;
            height: 20px;
        }
        .spanfixdiv
        {
            background-color: #FFFBF5;
            border: 1px solid #F6B9D6;
            text-align: center;
            overflow: hidden;
            cursor: hand;
            height: 20px;
            margin: 4px;
        }
    </style>
</head>
<body onload="pload()">
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >> <a href="ContentManage.aspx">内容管理</a></div>
        <div style="padding-left: 10px; text-align: left">
            <asp:LinkButton ID="btnAudit" CausesValidation="false" runat="server" Text="审核通过"
                OnClick="btnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}" />
            <asp:Label ID="Label1" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="btnUnAudit" CausesValidation="false" runat="server" Text="取消审核"
                OnClick="btnUnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要取消审核选中内容吗？')}" />
            <asp:Label ID="Label2" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="Button2" CausesValidation="false" runat="server" Text="批量推荐"
                OnClientClick="if(!IsSelectedId()){alert('请选择项');return false;}else{return confirm('你确定要将所有选择项设为推荐吗？')}"
                OnClick="Button2_Click" />
            <asp:Label ID="Label3" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="Button3" CausesValidation="false" runat="server" Text="取消推荐"
                OnClientClick="if(!IsSelectedId()){alert('请选择项');return false;}else{return confirm('你确定要取消所有选择项推荐吗？')}"
                OnClick="Button3_Click" />
            <asp:Label ID="Label4" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="btnDeleteAll" CausesValidation="false" runat="server" Text="批量删除"
                OnClick="btnDeleteAll_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}" />
            <asp:Label ID="Label5" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="LinkButton4" runat="server" Text="投稿" OnClick="LinkButton4_Click"></asp:LinkButton>
            <asp:Label ID="Label6" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="btnEsc" CausesValidation="false" runat="server" Text="退稿" OnClick="btnEsc_Click" />
            <asp:Label ID="Label7" runat="server" Text="&nbsp;|"></asp:Label>
            <asp:LinkButton ID="Button4" CausesValidation="false" runat="server" Text="生成" OnClick="Button4_Click" />
            &nbsp;<asp:HiddenField ID="HiddenNodeID" runat="server" />
        </div>
        <div style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
            background-repeat: repeat-x">
        </div>
        <div style="padding-left: 10px; text-align: left">
            <table>
                <tr>
                    <td>
                    <b>内容操作： </b>
            <asp:Label ID="lblAddContent" runat="server" Text="Label"></asp:Label>
                    </td>
                     <td style=" width:700px; font-size:12px" align="right">
                         文章总数：<asp:Label ID="LblAllContent" runat="server" Text=""></asp:Label>
                         点击数:<asp:Label runat="server" Text="" ID="LblHits"></asp:Label>
                     </td>
                </tr>
            </table>
            
        </div>
        <div style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
            background-repeat: repeat-x">
        </div>
        <% if (Request.QueryString["isDivImp"] != null && Request.QueryString["isDivImp"] == "1")
           { %>
        <div id="divImp" class="divline" style="padding-left: 10px; display: block">
            选择导入源：<asp:FileUpload ID="fileImp" runat="server" />
            <asp:Button ID="btnCurrentImport" runat="server" OnClick="btnCurrentImport_Click"
                Text="导入" CausesValidation="true" Width="75px" Height="19px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fileImp"
                Display="Dynamic" ErrorMessage="请选择Excel(xls/xlsx)文件,可下载模板!"></asp:RequiredFieldValidator>
            <asp:LinkButton ID="lbtnSaveTempter" runat="server" OnClick="lbtnSaveTempter_Click"
                CausesValidation="False"><font color=red>*</font>下载<%=this.bmode.GetModelById(ZoomLa.Common.DataConverter.CLng(int.Parse(this.Request.QueryString["ModelID"]))).ItemName %>导入模板 </asp:LinkButton>
        </div>
        <%} %>
        <div>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                    <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                        所有内容
                    </td>
                    <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                        草稿
                    </td>
                    <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                        待审核
                    </td>
                    <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                        已审核
                    </td>
                    <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)">
                        退稿
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID"
            HeaderStyle-BackColor="#F0F6FC" FooterStyle-BorderColor="White" PageSize="20"
            OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging"
            OnRowCommand="Lnk_Click" Width="100%" BorderStyle="None">
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSel" runat="server" AutoPostBack="true" />
                    </ItemTemplate>
                    <HeaderStyle Width="5%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField HeaderText="ID" DataField="GeneralID" ItemStyle-BackColor="White">
                    <HeaderStyle Width="5%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="标题" ItemStyle-BackColor="White" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <%# GetPic(Eval("ModelID", "{0}"))%>
                        <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="35%" />
                    <ItemStyle CssClass="tdbg" />
                </asp:TemplateField>
                <asp:BoundField HeaderText="点击数" DataField="Hits" ItemStyle-BackColor="White">
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    <HeaderStyle Width="8%" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="推荐" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetElite(Eval("EliteLevel", "{0}")) %>
                    </ItemTemplate>
                    <HeaderStyle Width="7%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="状态" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetStatus(Eval("Status", "{0}")) %>
                    </ItemTemplate>
                    <HeaderStyle Width="7%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="投稿" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetContribute(Eval("GeneralID", "{0}"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="7%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已生成" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetCteate(Eval("IsCreate", "{0}"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="6%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetTitles(Eval("GeneralID", "{0}"), Eval("ModelID", "{0}"))%>
                        |
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'
                            CausesValidation="false">修改</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton3" runat="server" Enabled='<%#getenabled(Eval("GeneralID").ToString()) %>'
                            CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick='<%#getdel() %>'>删除</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton1" runat="server" Enabled='<%#getenabled(Eval("GeneralID").ToString()) %>'
                            CommandName="DelHtml" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick='<%#getdels() %>'>删除文件</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <PagerSettings Visible="False" />
            <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
            <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
                Height="30px" Font-Overline="False" BorderColor="White" />
            <%--<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
            NextPageText="下一页" PreviousPageText="上一页" />--%>
        </asp:GridView>
        <%# GetPic(Eval("ModelID", "{0}"))%>
        <div style="text-align: center">
            <span style="text-align: center">共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" OnTextChanged="txtPage_TextChanged"
                    Width="30px"></asp:TextBox>
                条数据/页 转到第
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                    ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </span>
        </div>
        <div style="padding-left: 10px; text-align: left">
            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
                Text="全选" /></div>
    </div>
    <asp:HiddenField ID="hfContribute" runat="server"></asp:HiddenField>
    </form>
</body>
</html>
