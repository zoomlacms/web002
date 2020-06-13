<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectsDetail_, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>查看项目</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/js/Console.js"></script>
    <script type="text/javascript" src="/js/Drag.js"></script>
    <script type="text/javascript" src="/js/Dialog.js"></script>
    <script language="javascript" type="text/javascript">
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
        var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
        function show1(SID) {

            if (SID != tID) {
                if (document.getElementById(arrTabTitle[tID].toString()) != null)
                    document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                if (document.getElementById(arrTabTitle[SID].toString()) != null)
                    document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
                if (document.getElementById(arrTabs[tID].toString()) != null)
                    document.getElementById(arrTabs[tID].toString()).style.display = "none";
                if (document.getElementById(arrTabs[SID].toString()) != null)
                    document.getElementById(arrTabs[SID].toString()).style.display = "block";
                tID = SID;
            }

            try {
                //parent.document.getElementById("main_right").height = document.body.offsetHeight;
            } catch (Error)
         { }
            //alert("tID" + tID);
        }

        function del(){
            var mainright = window.top.main_right;
            if (mainright.frames["main_right_" + parent.nowWindow] != null) {
                mainright.frames["main_right_" + parent.nowWindow].location.reload();
            } else {
                mainright.frames["main_right_" + window.top.nowWindow].location.reload();
            }
        }

        function getinfo(id) {
            location.href = "AddProcesses.aspx?processesid=" + id + "";
        }
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

        function OpenProcess() {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Width = 800;
            diag.Height = 400;
            diag.Title = "导入流程";
            diag.URL = "insertProcess.aspx?projectid=<%=Request.QueryString["ProjectID"] %>";
            diag.show();
        }

        function Link() {
            if (document.getElementById("Comments").style.display == "none") {
                document.getElementById("Comments").style.display = "block";
            } else {
                document.getElementById("Comments").style.display = "none";
            }
        }

        function Show() {
            document.getElementById("TxtContent").value = "";
            document.getElementById("TxtRating").value = "";
        }
 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span>CRM应用</span>&nbsp;&gt;&gt;&nbsp;<span><a
            href="Projects.aspx">项目管理</a></span>&nbsp;&gt;&gt;&nbsp;<span>项目查看</span>&nbsp;&gt;&gt;&nbsp;<span>项目明细</span>
    </div>
    <table>
    </table>
    <br />
    <div>
        <table border="0" cellpadding="0" cellspacing="0" >
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="show1(0)">
                    项目进度
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="show1(1)">
                    项目详情
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="show1(2)">
                    交流互动
                </td>
            </tr>
        </table>
    </div>
    <div id="Tabs0">
        <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="height: 24px;">
                    <strong style="float: left">当前进度：</strong> <a href='ProjectsProcesses.aspx?ID=<%=Request.QueryString["ProjectID"] %>'
                        title="点击管理进度" style="cursor: pointer">
                        <div style="float: left; width: 92%; border: solid 1px #5192BC; background: #9bbde6;
                            height: 20px">
                            <div id="line" runat="server" style="float: left; background-color: #5192BC; height: 20px;">
                            </div>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
        <div class="clearbox">
        </div>
        <table width="100%" cellpadding="0" cellspacing="1" align="center" class="border"
            border="0">
            <tbody>
                <tr class="gridtitle" align="center" style="height: 25px">
                    <td width="7%">
                        选择
                    </td>
                    <td width="7%">
                        ID
                    </td>
                    <td width="7%">
                        项目ID
                    </td>
                    <td width="15%">
                        流程名称
                    </td>
                    <td width="15%">
                        当前进度
                    </td>
                    <td width="10%">
                        是否完成
                    </td>
                    <td width="15%">
                        完成时间
                    </td>
                    <td width="24%">
                        操作
                    </td>
                </tr>
                <asp:Repeater ID="RepProcesses" runat="server" OnItemCommand="RepProcesses_ItemCommand">
                    <ItemTemplate>
                        <tr class="tdbg" style="height: 20px; cursor: pointer;" align="center" onmouseover="this.className='tdbgmouseover'"
                            title="双击查看<%#Eval("Name") %>详情" onmouseout="this.className='tdbg'" id='<%#Eval("ID") %>'
                            ondblclick="getinfo(this.id);">
                            <td>
                                <asp:CheckBox ID="ChBx" runat="server" /><asp:Label ID="Label1" runat="server" Text='<%#Eval("ID") %>'
                                    Visible="false"></asp:Label>
                            </td>
                            <td>
                                <%#Eval("ID")%>
                            </td>
                            <td>
                                <%#Eval("OpjectID")%>
                            </td>
                            <td>
                                <a href='AddProcesses.aspx?processesid=<%#Eval("ID") %>'>
                                    <%#Eval("Name")%></a>
                            </td>
                            <td>
                                <%#Eval("Progress")%>%
                            </td>
                            <td>
                                <%#GetComplete(Eval("IsComplete","{0}"))%>
                            </td>
                            <td>
                                <%#Eval("CompleteTime")%>
                            </td>
                            <td>
                                <asp:LinkButton ID="LkBtnEdit" runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="Edit">编辑</asp:LinkButton>&nbsp;|&nbsp;
                                <asp:LinkButton ID="LkBtnComplete" runat="server" CommandArgument='<%#Eval("ID")%>'
                                    OnClientClick="return confirm('确定执行此操作吗？');" CommandName="Complete"><%#GetCom(Eval("IsComplete","{0}"))%>完成</asp:LinkButton>&nbsp;|&nbsp;
                                <asp:LinkButton ID="LkBtnDel" runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="Del"
                                    OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');">删除</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <table>
            <tr>
                <td>
                    <asp:CheckBox ID="Checkall" runat="server" Text="全选" AutoPostBack="True" OnCheckedChanged="Checkall_CheckedChanged" />
                    <asp:Button ID="btnDeleteAll" runat="server" Style="width: 110px;" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                        Text="批量删除" class="C_input" OnClick="btnDeleteAll_Click" />
                    <asp:Button ID="Button2" runat="server" Text="导入流程" CssClass="C_input" OnClientClick="OpenProcess();return false;" />
                </td>
            </tr>
        </table>
    </div>
    <div id="Tabs1" style="display: none">
        <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
            <tr>
                <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center">
                    项目详情
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>项目名称：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlName" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>项目类型：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlType" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>项目价格：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlPrice" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>项目经理：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlLeader" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>技术负责人：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlCoding" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>所属客户：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitCusName" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>创建时间：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlApplicationTime" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td>
                    <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                    <strong>项目要求：</strong>
                </td>
                <td align="left" class="tdbg">
                    <asp:Literal ID="LitlReq" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="修改信息" CssClass="C_input" OnClick="Button1_Click" />
    </div>
    <div id="Tabs2" style="display: none">
        <tbody>
            <tr>
                <td>
                    <table width="100%" cellpadding="0" cellspacing="1" class="border" border="0">
                        <asp:Repeater ID="RpComments" runat="server" OnItemCommand="RpComments_ItemCommand">
                            <ItemTemplate>
                                <tr class="tdbg" style="height: 7px; align="center" onmouseover="this.className='tdbgmouseover'"
                                    onmouseout="this.className='tdbg'" class="tdbg">
                                    <td width="10%" align="right">
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("CommentsID")%>'></asp:Label><asp:CheckBox
                                            ID="ChkBox" runat="server" /><strong>评分：</strong>
                                    </td>
                                    <td width="5%" align="left">
                                        <asp:Label ID="lblRating" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td width="5%" align="right">
                                        <strong>作者：</strong>
                                    </td>
                                    <td width="7%">
                                        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td width="5%" align="right">
                                        <strong>时间：</strong>
                                    </td>
                                    <td width="15%">
                                        <%#Eval("CommentsDate")%>
                                    </td>
                                    <td width="40%">
                                        <asp:LinkButton ID="LBtn" runat="server" OnClientClick="return confirm('你确定要永久删除吗？');"
                                            CommandArgument='<%#Eval("CommentsID") %>'>删除</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr class="tdbg" style="height: 40px" align="center" onmouseover="this.className='tdbgmouseover'"
                                    onmouseout="this.className='tdbg'">
                                    <td align="right">
                                        <strong>内容：</strong>
                                    </td>
                                    <td colspan="6" align="left">
                                        <%#Eval("Content") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="100%">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />页次：
                    <asp:Label ID="Nowpage" runat="server" Text="" />/
                    <asp:Label ID="PageSize" runat="server" Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                        Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                    条数据/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnTextChanged="DropDownList1_TextChanged">
                    </asp:DropDownList>
                    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                </td>
            </tr>
        </tbody>
        <table>
            <tr>
                <td>
                    <asp:CheckBox ID="ChkAll" runat="server" Text="全选" AutoPostBack="True" OnCheckedChanged="ChkAll_CheckedChanged" />
                    <asp:Button ID="BtnDelComment" runat="server" Style="width: 110px" OnClientClick="return confirm('你确定删除吗？')"
                        Text="批量删除" class="C_input" OnClick="BtnDelComment_Click" />
                    <a href="javascript:;" onclick="Link()">我想评论</a>
                </td>
            </tr>
        </table>
        <div class="clearbox">
        </div>
        <table id="Comments" width="100%" border="0" cellpadding="2" cellspacing="1" class="border"
            style="margin: 0 auto; display: none;" runat="server">
            <tbody id="Tabs4">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td style="width: 288px" class="tdbgleft">
                        <strong>评分：</strong><br />
                        给该项目/流程打分，请输入0-100间的数字
                    </td>
                    <td>
                        <asp:TextBox ID="TxtRating" class="l_input" runat="server" Width="222px" /><font
                            color="red">*</font>
                        <asp:RangeValidator ID="RVRating" runat="server" ControlToValidate="TxtRating" Display="Dynamic"
                            ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="0" Type="Integer">请输入数字</asp:RangeValidator>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td>
                        <strong>项目评价：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtContent" class="l_input" runat="server" Height="82px" TextMode="MultiLine"
                            Width="381px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="BtnCommit" runat="server" Text="评论" class="C_input" OnClick="BtnCommit_Click" />
                        <input type="button" name="btnCan" value="取消" class="C_input" onclick="Show()" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
