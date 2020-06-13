<%@ page language="C#" debug="true" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ContentManage, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_ContentManage_content")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
    var diag = new Dialog();
    function openurls(url) {
        Dialog.open({ URL: url });
    }
    function open_title(ModelID, NodeID) {
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "添加内容<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
        diag.URL = "AddContent.aspx?ModelID=" + ModelID + "&NodeID=" + NodeID;
        diag.show();
    }

    function opentitle(url, title) {
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }

    function closdlg() {
        Dialog.close();
    }
</script>
<script type="text/javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5" );
    window.onload = function () {
        pload();
    }
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
       
    }

    function chechs() {

    }
    function getinfo(cid) {
        //alert(cid);
        //location.href = 'ContentShow.aspx?id=' + id;
    }

    function dialogOpen() {
        document.getElementById("divTranPross").style.display = "block";
        document.getElementById("divBackPross").style.display = "block";
    }

    function dialogClose() {
        document.getElementById("divTranPross").style.display = "none";
        document.getElementById("divBackPross").style.display = "none";
    }

</script>
<script src="/JS/pacalendar.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="divTranPross" style="display: none; z-index: 998; filter: alpha(opacity=40,style=0);
                opacity: 0.4; background-color: #77C6FE; text-align: center; height: 150%; width: 100%;
                border: 0px solid black; position: absolute; left: 0px; right: 0px;">
            </div>
            <div id="divBackPross" style="display: none; z-index: 999; text-align: center; height: 150%;
                width: 100%; border: 0px solid black; position: absolute; left: 0px; top: 0px;">
                <table style="height: 50%; width: 100%;">
                    <tr>
                        <td style="vertical-align: middle;">
                            <div style="margin-left: auto; margin-right: auto; line-height: 30px; vertical-align: middle;
                                width: 200px; height: 30px; background-color: #0D6FC3; position: relative;">
                                <div id="divPross" style="width: 10px; height: 30px; background-color: #77C6FE; position: absolute;
                                    left: 0px; top: 0px;">
                                </div>
                                <%=lang.Get("m_ContentManage_inport")%>...
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="r_navigation">
        <span style="float: right; background: url(../../../Images/ModelIcon/edit.gif) no-repeat left; padding-left: 20px;">
            <a onclick="opentitle('EditNode.aspx?NodeID=<%=this.NodeID %>','配置本节点')" href="javascript:void(0);" title="配置本节点"><%=lang.Get("m_ContentManage_deploy")%></a></span>
            <span><%=lang.Get("m_ContentManage_manage")%></span> &gt;&gt;
            <span><a href="ContentManage.aspx"><%=lang.Get("m_ContentManage_content")%></a></span> &gt;&gt;
            <span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                       <%-- &gt;&gt;
                        <asp:Label ID="lblAdd" runat="server" Visible="true" Text="Label" ForeColor="Red"></asp:Label>--%>
    </div>
    <div class="clearbox"></div>
    <div class="divline" style="padding-left:5px; height: 35px;">
        <ul>
            <li style=" float:left;"><a href="ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>"><%=lang.Get("m_ContentManage_list")%></a></li>
            <li style=" float:left;"><a href="ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&flag=Elite">
                <%=lang.Get("m_ContentManage_recommend")%></a> &nbsp;&nbsp; <b><%=lang.Get("m_ContentManage_sort") %>：</b>
                <asp:DropDownList ID="txtbyfilde" CssClass="x_input" runat="server" OnSelectedIndexChanged="txtbyfilde_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="txtbyOrder" runat="server" CssClass="x_input" OnSelectedIndexChanged="txtbyOrder_SelectedIndexChanged">
                </asp:DropDownList>
            </li>
            <li style=" float:left;">&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" CssClass="x_input" runat="server" >
                    <asp:ListItem Value="0" Selected="True">标题</asp:ListItem>
                    <asp:ListItem Value="1">ID</asp:ListItem>
                    <asp:ListItem Value="2">录入者检索</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" Width="90px" Height="15px" class="l_input"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="查找" OnClick="Button4_Click" class="C_input" />&nbsp;
            </li>
            <li style=" float:right;">
                <%=lang.Get("m_ContentManage_acount")%>:<asp:Label  ID="WZS" runat="server" Text=""></asp:Label>
                <%=lang.Get("m_ContentManage_hits")%>:<asp:Label  ID="DJS" runat="server" Text=""></asp:Label>
            </li>
        </ul>
    </div>
    <br />
   <%-- <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
        <tr class="tdbg">
            <td>
                翻新：设置日期：
                <asp:TextBox ID="txtdate" onclick="calendar('txtdate')" runat="server" Width="123px"   class="l_input" Height="18px"></asp:TextBox>
                <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" />
                <asp:Button ID="Button12" runat="server" class="C_input" Text="翻新" OnClientClick="if(!IsSelectedId()){alert('请选择要翻新的项目');return false;}" OnClick="Button12_Click" Width="55px" />
                <asp:Button ID="btnAdd" runat="server" class="C_input" Text="添加" OnClick="btnAdd_Click"  Width="55px" />
                
                <asp:Button ID="Button10" runat="server" class="C_input" Text="使过期" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}"
                    OnClick="Button10_Click" Width="72px" />
            </td>
            
        </tr>
    </table>--%>
    <div class="divline" style="padding-left:5px">
    <table width="90%">
        <tr>
            <td>
                <b onclick="OpenAddContent()"><%=lang.Get("m_ContentManage_operate")%>：</b><asp:Label ID="lblAddContent" runat="server" Text="www"></asp:Label>
            </td>
            <td align="right">
                <%=lang.Get("m_ContentManage_reason")%>：
                <asp:TextBox ID="TextBox3" runat="server" Width="147px" CssClass="l_input"></asp:TextBox>
                <asp:Button ID="Button15" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}"   Text="审核通过" OnClick="Button15_Click" Width="80px" />
                <asp:Button ID="Button16" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要取消审核选中内容吗？')}"  Text="审核失败" OnClick="Button16_Click" Width="80px" />
            </td>
        </tr>      
    </table>              
    </div>
    <div class="clearbox">
    </div>
    <% if (Request.QueryString["isDivImp"] != null && Request.QueryString["isDivImp"] == "1")
       { %>
    <div id="divImp" class="divline" style="padding-left: 10px; display: block">        
                <%=lang.Get("m_ContentManage_sourse")%>：<asp:FileUpload ID="fileImp" runat="server" />
                <asp:Button ID="btnCurrentImport" runat="server" OnClientClick="if(document.getElementById('fileImp').value.length==0){alert('请选择Excel(CSV)文件,可下载模板!');return false};" OnClick="btnCurrentImport_Click" Text="导入" CausesValidation="true" Width="75px" Height="19px" />
                <asp:LinkButton ID="lbtnSaveTempter" runat="server" OnClick="lbtnSaveTempter_Click"   CausesValidation="False"><font color="red">*</font>
                <font style="color:#0E529D;"><%=lang.Get("m_ContentManage_download")%>[<%=getNodeName()%>]的<%=this.bmode.GetModelById(ZoomLa.Common.DataConverter.CLng(int.Parse(this.Request.QueryString["ModelID"]))).ItemName %><%=lang.Get("m_ContentManage_template")%></font>                
                </asp:LinkButton>(<%=lang.Get("m_ContentManage_rule")%>)
    </div>
    <div class="clearbox">
    </div>
    <%} %>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                    <%=lang.Get("m_ContentManage_all")%>
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                   <%=lang.Get("m_ContentManage_draft")%>
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                    <%=lang.Get("m_ContentManage_wait")%>
                </td>
                <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                    <%=lang.Get("m_ContentManage_complete")%>
                </td>
                <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)">
                     <%=lang.Get("m_ContentManage_rejection")%>
                </td>
                <td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5)">
                    <%=lang.Get("m_ContentManage_auction")%>
                </td>
                <td align="right">
                    <%=lang.Get("m_ContentManage_workflow")%>：<asp:Label runat="server" ID="lab1" Text=""></asp:Label>
                    &gt;&gt;<asp:Label runat="server" ID="lab2" Text=""></asp:Label>
                    &gt;&gt;<asp:Label runat="server" ID="lab3" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID"
        PageSize="9999" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging"
        OnRowCommand="Lnk_Click" Width="100%" Height="20px" AllowPaging="True" AllowSorting="true"
        CellPadding="2" CellSpacing="1" BackColor="White" ForeColor="Black" CssClass="border"
        EnableTheming="False" RowStyle-CssClass="tdbg" GridLines="None" >
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="5%" Height="25px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="ID" DataField="GeneralID">
                <HeaderStyle Width="5%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="标题">
                <ItemTemplate>
                    <%# GetPic(Eval("ModelID", "{0}"))%>
                    <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
                </ItemTemplate>
                <HeaderStyle Width="41%" BorderColor="White" />
                <ItemStyle BorderColor="White" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="点击数" DataField="Hits">
                <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="6%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="推荐">
                <ItemTemplate>
                    <%# GetElite(Eval("EliteLevel", "{0}")) %>
                </ItemTemplate>
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态">
                <ItemTemplate>
                    <asp:HiddenField ID="hfstatus" runat="server" Value='<%#Eval("Status") %>' />
                    <%#GetStatus(Eval("Status", "{0}")) %>
                </ItemTemplate>
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>
            <%--  <asp:TemplateField HeaderText="已生成">
                <ItemTemplate>
                    <%# GetCteate(Eval("status", "{0}"))%>
                </ItemTemplate>
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="排序">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnUpMove" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("GeneralID") %>'> 上移 |</asp:LinkButton>
                    <asp:LinkButton ID="lbtnDownMove" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("GeneralID") %>'>下移</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="8%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <%# GetTitles(Eval("GeneralID", "{0}"), Eval("ModelID", "{0}"))%>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'
                        Enabled='<%# getenabled(Eval("Status").ToString()) %>' CausesValidation="false"><%#lang.Get("m_ContentManage_alter")%></asp:LinkButton>
                    |
                    <asp:LinkButton ID="lbDelete" runat="server" Enabled='<%#getenabled(Eval("GeneralID").ToString()) %>'
                        CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick='<%#getdel() %>'><%#lang.Get("m_ContentManage_delete")%></asp:LinkButton>
                    |
                    <asp:LinkButton ID="lbCheck" runat="server" CommandName="check" CommandArgument='<%#Eval("GeneralID") %>'><%#lang.Get("m_ContentManage_skim")%></asp:LinkButton>
                    <asp:Label ID="viewspan" runat="server" Text=" | "></asp:Label>
                    <asp:LinkButton ID="lbUpdate" runat="server"><%#lang.Get("m_ContentManage_delete")%>HTML</asp:LinkButton> | 
                    <asp:LinkButton ID="lbBid" runat="server"  CommandName="bider" CommandArgument='<%#Eval("GeneralID") %>'  Enabled='<%# getBid(Eval("GeneralID")) %>' ><%#lang.Get("m_ContentManage_examine")%></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle Height="24px" />
    </asp:GridView>
    <%# GetPic(Eval("ModelID", "{0}"))%>
    <table width="100%">
        <tr>
            <td class="tdbg">
                <div style="text-align: center">
                    <span style="text-align: center"><%=lang.Get("m_ContentManage_total")%>
                        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                       <%=lang.Get("m_ContentManage_data")%>
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        <%=lang.Get("m_ContentManage_pages")%>：
                        <asp:Label ID="Nowpage" runat="server" Text="1" />/
                        <asp:Label ID="PageSize" runat="server" Text="" /><%=lang.Get("m_ContentManage_page")%>
                        <asp:Label ID="pagess" runat="server" Text="" />
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
                            Width="30px"></asp:TextBox>
                        <%=lang.Get("m_ContentManage_turn")%>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                        <%=lang.Get("m_ContentManage_page")%><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="仅支持数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></span></div>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
    <asp:Button ID="btnPdf" CausesValidation="false" Style="width: 110px;" runat="server" Text="生成PDF" CssClass="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择生成项');return false;}else{return confirm('你确定要生成选中内容吗？')}" OnClick="btnPdf_Click" /> &nbsp;
    
    <asp:Button ID="btnAudit" CausesValidation="false" Style="width: 110px;" runat="server" Text="审核通过" CssClass="C_input" OnClick="btnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}" />&nbsp;
    <asp:Button ID="btnUnAudit" CausesValidation="false" Style="width: 110px;" runat="server" Text="取消审核" CssClass="C_input" OnClick="btnUnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要取消审核选中内容吗？')}" />&nbsp;
    <asp:Button ID="Button2" CausesValidation="false" Style="width: 110px;" runat="server" Text="批量推荐" OnClientClick="if(!IsSelectedId()){alert('请选择项');return false;}else{return confirm('你确定要将所有选择项设为推荐吗？')}"  CssClass="C_input" OnClick="Button2_Click" />&nbsp;
    <asp:Button ID="Button3" CausesValidation="false" Style="width: 110px;" runat="server" Text="取消推荐" OnClientClick="if(!IsSelectedId()){alert('请选择项');return false;}else{return confirm('你确定要取消所有选择项推荐吗？')}" CssClass="C_input" OnClick="Button3_Click" />&nbsp;
    <asp:Button ID="btnDeleteAll" Style="width: 110px;" CausesValidation="false" runat="server"  Text="批量删除" OnClick="btnDeleteAll_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}" CssClass="C_input" />&nbsp;
    <asp:Button ID="btnMove" Style="width: 110px;" CausesValidation="false" runat="server" Text="批量移动" OnClick="btnMove_Click" OnClientClick="if(!IsSelectedId()){alert('请选择移动项');return false;}else{return true}" CssClass="C_input" />&nbsp;
    <asp:Button ID="btnAddToSpecial" Style="width: 110px;" CausesValidation="false" runat="server" Text="添加到专题" OnClick="btnAddToSpecial_Click" OnClientClick="if(!IsSelectedId()){alert('请选择添加到专题的内容');return false;}else{return true}" CssClass="C_input" />&nbsp;
    <asp:Button ID="Button1" Style="width: 110px;" CausesValidation="false" runat="server" Text="批量修改" CssClass="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择修改项');return false;}else{return confirm('你确定要修改选中内容吗？')}" OnClick="Button1_Click" />
    <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
    <asp:Button ID="btnEsc" Style="width: 110px;" CausesValidation="false" runat="server" Text="退稿" OnClick="btnEsc_Click" class="C_input" />&nbsp;&nbsp;
    <asp:Button ID="Button6" Style="width: 110px;" CausesValidation="false" runat="server" Text="提交方案" OnClick="Button5_Click" OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}" class="C_input" /> &nbsp;&nbsp;
    <asp:Button ID="btnRead" CausesValidation="false" Style="width: 110px;" runat="server" Text="投递" CssClass="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择投递项');return false;}else{return confirm('你确定要投递选中内容吗？')}" OnClick="btnRead_Click" /> &nbsp;
    <asp:HiddenField ID="HiddenNodeID" runat="server" />
    <asp:Button ID="Button7" Style="width: 110px;" runat="server" Text="高级检索" OnClick="Button7_Click" Width="70px" class="C_input" />
    </form>
</body>
</html>