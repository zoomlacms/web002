<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_Projects, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_Projects_view")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
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
    function getinfo(id) {
        location.href = "ProjectsDetail.aspx?ProjectID=" + id + "";
    }

    function ShowTabs(type, orderby) {
        location.href = 'Projects.aspx?txtPage=<%=Request.QueryString["txtPage"]%>&DDList0=<%=Request.QueryString["DDList0"]%>&keyword=<%=Server.UrlEncode(Request.QueryString["keyword"]) %>&typeid=<%=Request.QueryString["typeid"] %>&tname=' + type + '&orderby=' + orderby + '&pid=<%=Request.QueryString["pid"]==null?"0":Request.QueryString["pid"]%>&timess=<%=Request.QueryString["timess"]%>&timeval=<%= Request.QueryString["timeval"]%>&adminname=<%=Request.QueryString["adminname"]%>&OpjectID=<%=Request.QueryString["OpjectID"] %>';

    }
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6");

    function pload() {
        var ID = '<%=Request.QueryString["tname"]%>';
        if (ID == null || ID == "") {
            ID = 0;
        }
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
       
    }

    function changeTime(obj,sel) {
        var select1 = document.getElementById("times");
        if (select1 != null) {
            select1.innerHTML = "";
            if (obj <= 0) {
                var newOption0 = new Option("请选择", "-1");
                select1.options.add(newOption0);

                var newOption1 = new Option("一月", "1");
                select1.options.add(newOption1);

                var newOption2 = new Option("二月", "2");
                select1.options.add(newOption2);

                var newOption3 = new Option("三月", "3");
                select1.options.add(newOption3);

                var newOption4 = new Option("四月", "4");
                select1.options.add(newOption4);

                var newOption5 = new Option("五月", "5");
                select1.options.add(newOption5);

                var newOption6 = new Option("六月", "6");
                select1.options.add(newOption6);

                var newOption7 = new Option("七月", "7");
                select1.options.add(newOption7);

                var newOption8 = new Option("八月", "8");
                select1.options.add(newOption8);

                var newOption9 = new Option("九月", "9");
                select1.options.add(newOption9);

                var newOption10 = new Option("十月", "10");
                select1.options.add(newOption10);

                var newOption11 = new Option("十一月", "11");
                select1.options.add(newOption11);

                var newOption12 = new Option("十二月", "12");
                select1.options.add(newOption12);
            }
            if (obj == 1) {
                var newOption0 = new Option("请选择", "-1");
                select1.options.add(newOption0);

                var newOption1 = new Option("第一季度", "1");
                select1.options.add(newOption1);

                var newOption2 = new Option("第二季度", "4");
                select1.options.add(newOption2);

                var newOption3 = new Option("第三季度", "7");
                select1.options.add(newOption3);

                var newOption4 = new Option("第四季度", "10");
                select1.options.add(newOption4);
            }
            if (obj == 2) {
                var day = new Date();
                var i = day.getFullYear();
                j = i + 35;
                for (i = i - 25; i <= j; i++) {
                    var newOPtion = new Option(i.toString() + "年", i.toString());
                    select1.options.add(newOPtion);
                }
            }
            if (sel > 0) {
                select1.value = sel;
            }
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span><%=lang.Get("m_Projects_manage")%></span>&nbsp;&gt;&gt;&nbsp;<span><%=lang.Get("m_Projects_crm")%></span>&nbsp;&gt;&gt;&nbsp;<span><%=lang.Get("m_Projects_crm")%></span>&nbsp;&gt;&gt;&nbsp;<span><a
            href="Projects.aspx"><%=lang.Get("m_Projects_project")%></a></span>【<a
                href="AddProjects.aspx" style="color: Red"><%=lang.Get("m_Projects_new")%></a>】
    </div>
    <div class="clearbox">
    </div>
    <div class="line">
        <%=lang.Get("m_Projects_new")%>：
        <asp:DropDownList ID="DDList0" runat="server">
            <asp:ListItem Value="" Text="请选择"></asp:ListItem>
            <asp:ListItem Value="0" Text="项目名称"></asp:ListItem>
            <asp:ListItem Value="1" Selected="True" Text="项目经理"></asp:ListItem>
            <asp:ListItem Value="2" Text="技术负责人"></asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TxtADName" runat="server" class="l_input" onclick="if(this.value=='关键字'){this.value=this.value=='关键字'?'':this.value;}"
            onblur="if(this.value==''){ this.value=this.value==''?'关键字':this.value;}">关键字</asp:TextBox>
             &nbsp;<%=lang.Get("m_Projects_time")%>：<select id="timeval" runat="server" onchange="changeTime(this.value,'-1')">
                                <option value="0">按月份</option>
                                <option value="1">按季度</option>
                                <option value="2">按年份</option>
                            </select>
            &nbsp;<asp:DropDownList ID="times" runat="server">
                    <asp:ListItem Value="-1" Selected="True">请选择</asp:ListItem>
                     <asp:ListItem Value="1">一月</asp:ListItem>
                     <asp:ListItem Value="2">二月</asp:ListItem>
                     <asp:ListItem Value="3">三月</asp:ListItem>
                     <asp:ListItem Value="4">四月</asp:ListItem>
                     <asp:ListItem Value="5">五月</asp:ListItem>
                     <asp:ListItem Value="6">六月</asp:ListItem>
                     <asp:ListItem Value="7">七月</asp:ListItem>
                     <asp:ListItem Value="8">八月</asp:ListItem>
                     <asp:ListItem Value="9">九月</asp:ListItem>
                     <asp:ListItem Value="10">十月</asp:ListItem>
                     <asp:ListItem Value="11">十一月</asp:ListItem>
                     <asp:ListItem Value="12">十二月</asp:ListItem>
                </asp:DropDownList>
            <asp:Button ID="BntSearch" runat="server" Text="查询" OnClick="BntSearch_Click" class="C_input" />
         </div>
    <div class="clearbox">
    </div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        <%=lang.Get("m_Projects_none")%></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0,0)">
                <%=lang.Get("m_Projects_all")%>
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1,0)">
                <%=lang.Get("m_Projects_unaudit")%>
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2,0)">
                <%=lang.Get("m_Projects_audit")%>
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3,0)">
                <%=lang.Get("m_Projects_not")%>
            </td>
            <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4,0)">
                <%=lang.Get("m_Projects_started")%>
            </td>
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5,0)">
                <%=lang.Get("m_Projects_completed")%>
            </td>
            <td id="TabTitle6" class="tabtitle" onclick="ShowTabs(6,0)">
                <%=lang.Get("m_Projects_save")%>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table width="100%" cellpadding="0" cellspacing="1" class="border" border="0">
        <tbody>
            <div id="aa" runat="server">
            </div>
            <tr class="gridtitle" align="center" style="height: 25px">
                <td width="4%">
                    <%=lang.Get("m_Projects_selects")%>
                </td>
                <td width="3%">
                    <a href="?txtPage=<%=Request.QueryString["txtPage"] %>&tname=<%=Request.QueryString["tname"] %>&DDList0=<%=Request.QueryString["DDList0"] %>&keyword=<%=Request.QueryString["keyword"] %>&pid=<%=Request.QueryString["pid"] %>&Currentpage=<%=Request.QueryString["Currentpage"] %>&adminname=<%=Request.QueryString["adminname"] %>&timess=<%=Request.QueryString["timess"]%>&timeval=<%= Request.QueryString["timeval"]%>&OpjectID=<%=Request.QueryString["OpjectID"] %>&orderby=<%=Request.QueryString["orderby"]=="11"?"12":"11" %>"><B>ID</B></a><%=Request.QueryString["orderby"] == "11" ? "▲" : "▼"%>
                </td>
                <td width="10%">
                    <%=lang.Get("m_Projects_name")%>
                </td>
                <td width="7%">
                    <%=lang.Get("m_Projects_type")%>
                </td>
                <td width="7%">
                    <a href="?txtPage=<%=Request.QueryString["txtPage"] %>&tname=<%=Request.QueryString["tname"] %>&DDList0=<%=Request.QueryString["DDList0"] %>&keyword=<%=Request.QueryString["keyword"] %>&pid=<%=Request.QueryString["pid"] %>&Currentpage=<%=Request.QueryString["Currentpage"] %>&adminname=<%=Request.QueryString["adminname"] %>&timess=<%=Request.QueryString["timess"]%>&timeval=<%= Request.QueryString["timeval"]%>&OpjectID=<%=Request.QueryString["OpjectID"] %>&orderby=<%=Request.QueryString["orderby"]=="21"?"22":"21" %>"><B><%=lang.Get("m_Projects_price")%></B></a><%=Request.QueryString["orderby"] == "21" ? "▲" : "▼"%>
                </td>
                <td width="12%">
                    <a href="?txtPage=<%=Request.QueryString["txtPage"] %>&tname=<%=Request.QueryString["tname"] %>&DDList0=<%=Request.QueryString["DDList0"] %>&keyword=<%=Request.QueryString["keyword"] %>&pid=<%=Request.QueryString["pid"] %>&Currentpage=<%=Request.QueryString["Currentpage"] %>&adminname=<%=Request.QueryString["adminname"] %>&timess=<%=Request.QueryString["timess"]%>&timeval=<%= Request.QueryString["timeval"]%>&OpjectID=<%=Request.QueryString["OpjectID"] %>&orderby=<%=Request.QueryString["orderby"]=="31"?"32":"31" %>"><B><%=lang.Get("m_Projects_start")%></B></a><%=Request.QueryString["orderby"] == "31" ? "▲" : "▼"%>
                </td>
                <td width="8%">
                    <%=lang.Get("m_Projects_projectmanager")%>
                </td>
                <td width="5%">
                    <%=lang.Get("m_Projects_audits")%>
                </td>
                <td width="5%">
                    <%=lang.Get("m_Projects_project")%>
                </td>
                <td width="7%">
                    <%=lang.Get("m_Projects_current")%>
                </td>
                <td width="12%">
                    <a href="?txtPage=<%=Request.QueryString["txtPage"] %>&tname=<%=Request.QueryString["tname"] %>&DDList0=<%=Request.QueryString["DDList0"] %>&keyword=<%=Request.QueryString["keyword"] %>&pid=<%=Request.QueryString["pid"] %>&Currentpage=<%=Request.QueryString["Currentpage"] %>&adminname=<%=Request.QueryString["adminname"] %>&timess=<%=Request.QueryString["timess"]%>&timeval=<%= Request.QueryString["timeval"]%>&OpjectID=<%=Request.QueryString["OpjectID"] %>&orderby=<%=Request.QueryString["orderby"]=="51"?"52":"51" %>"><B><%=lang.Get("m_Projects_applytime")%></B></a><%=Request.QueryString["orderby"] == "51" ? "▲" : "▼"%>
                </td>
                <td width="24%">
                    <%=lang.Get("m_Projects_operate")%>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr id='<%#Eval("ID") %>' class="tdbg" height="25px" align="center" onmouseover="this.className='tdbgmouseover'"
                        onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id);" title="双击查看此项目详情">
                        <td>
                            <asp:CheckBox ID="ChBx" runat="server" /><asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'
                                Visible="false"></asp:Label>
                        </td>
                        <td>
                            <%# Eval("ID","{0}")%>
                        </td>
                        <td>
                            <a href="ProjectsDetail.aspx?ProjectID=<%# Eval("ID","{0}")%>">
                                <%# Eval("Name")%></a>
                        </td>
                        <td>
                            <a href="Projects.aspx?pid=<%#Eval("TypeID") %>">
                                <%# GetProType(Eval("TypeID","{0}")) %></a>
                        </td>
                        <td>
                            <%# GetManageGroup(Eval("Leader","{0}")) == 1 ? Eval("Price", "￥{0}.00") : "******"%>
                        </td>
                        <td>
                            <%#Eval("ProStatus", "{0}") == "0" ? "----" : Eval("BeginTime", "{0}")%>
                        </td>
                        <td>
                            <a href="<%#GetLink(Eval("Leader","{0}")) %>">
                                <%#GetLeader(Eval("Leader","{0}"))%></a>
                        </td>
                        <td>
                            <%# GetAudit(Eval("AuditStatus","{0}"))%>
                        </td>
                        <td>
                            <%# GetProStatus(Eval("ProStatus", "{0}"))%>
                        </td>
                        <td>
                            <a href='<%#Eval("ID","ProjectsProcesses.aspx?ID={0}") %>'>
                                <div style="width: 90%; border: solid 1px green; height: 5px">
                                    <div id="line" runat="server" style="background-color: #bddb52; height: 5px; float: left">
                                    </div>
                                </div>
                            </a>
                        </td>
                        <td>
                            <%#(Eval("ApplicationTime", "{0}") == "9999-12-31 23:59:59") ? "-" : Eval("ApplicationTime", "{0}")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("ID")%>'
                                CommandName="Run"><%#Eval("ProStatus", "{0}") == "0" ? "启动项目" : "已启动"%></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ID")%>'
                                CommandName="Audit"><%#Eval("AuditStatus", "{0}") == "1" ? "<font color=green>通过审核</font>" : "<font color=red>取消审核</font>"%></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ID")%>'
                                CommandName="manage"><%=lang.Get("m_Projects_rework")%></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("ID")%>'
                                CommandName="del" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');"><%=lang.Get("m_Projects_del")%></asp:LinkButton>
                            <asp:LinkButton ID="LbtnComments" runat="server" CommandArgument='<%# Eval("ID")%>'
                                CommandName="Comments"><%=lang.Get("m_Projects_comment")%></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <div style="text-align: center" class="tdbg">
        <span style="text-align: center"><%=lang.Get("m_Projects_total")%>
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            <%=lang.Get("m_Projects_item")%>
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
             <%=lang.Get("m_Projects_perpage")%>：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" /> <%=lang.Get("m_Projects_page")%>
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            <%=lang.Get("m_Projects_item")%>/<%=lang.Get("m_Projects_page")%> <%=lang.Get("m_Projects_go")%>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div>
    <table>
        <tr>
            <td>
                <asp:CheckBox ID="Checkall" runat="server" onclick="javascript:CheckAll(this);" Text="全选" />
                <asp:Button ID="btnDeleteAllbutton" runat="server" Style="width: 110px;" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                    Text="批量删除" OnClick="btnDeleteAll_Click" class="C_input" />
                <asp:Button ID="BtnNoAudit" runat="server" Style="width: 110px;" OnClientClick="return confirm('你确定要执行此操作吗？请认真审核')"
                    Text="取消审核" class="C_input" OnClick="BtnNoAudit_Click" />
                <asp:Button ID="btnexcel" runat="server" class="C_input" Text="批量导出"  onclick="btnexcel_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
