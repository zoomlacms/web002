<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_ShowContent, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加栏目节点</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script src="/JS/Common.js" type="text/javascript"></script>

<script language="JavaScript" type="text/JavaScript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
            //parent.document.getElementById("main_right").height = document.body.offsetHeight + 50;
        }
    }
    function showCustom(value) {
        var index = parseInt(value);

        for (i = 2; i <= 20; i++) {
            if (i <= index)
                document.getElementById("Custom" + i).style.display = "";
            else
                document.getElementById("Custom" + i).style.display = "none";
        }

    }

    var stID = 0;
    var sarrTabTitle = new Array("sTabTitle0", "sTabTitle1", "sTabTitle2");
    // var sarrTabs = new Array("sTabs0", "sTabs1", "sTabs2");
    function sShowTabs(ID) {
        if (ID != stID) {
            if (sarrTabTitle[stID] != null) {
                document.getElementById(sarrTabTitle[stID].toString()).className = "tabtitle";
            }
            if (sarrTabTitle[ID] != null) {
                document.getElementById(sarrTabTitle[ID].toString()).className = "titlemouseover";
            }
            stID = ID;
            //parent.document.getElementById("main_right").height = document.body.offsetHeight + 50;
        }
    }
    function sshowCustom(value) {
        var index = parseInt(value);

        for (i = 2; i <= 20; i++) {
            if (i <= index)
                document.getElementById("sCustom" + i).style.display = "";
            else
                document.getElementById("sCustom" + i).style.display = "none";
        }

    }
    
    
    
</script>

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

</head>
<body onload="sShowTabs(<%=Request.QueryString["type"] %>)">
    <form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></div>   
        <asp:HiddenField ID="HdnModelID" runat="server" />
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                基本信息
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                栏目选项
            </td>
            <td align="left">
                &nbsp;
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1">
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <%-- 基本信息--%>
                    <tbody id="Tabs0">
                        <tr class="tdbg">
                            <td colspan="2">
                                <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" CellPadding="4" GridLines="None" Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="r_navigation">
                                    <Fields>
                                    </Fields>
                                    <FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
                                    <CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
                                    <RowStyle />
                                    <FieldHeaderStyle Font-Bold="True" />
                                    <PagerStyle HorizontalAlign="Center" />
                                    <HeaderStyle Font-Bold="True" />
                                    <EditRowStyle />     
                                    <AlternatingRowStyle />
                                </asp:DetailsView>
                                
                                    <asp:DetailsView ID="DetailsView2" runat="server" Width="100%" CellPadding="4" GridLines="None" Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="r_navigation">
                                    <Fields>
                                    </Fields>
                                    <FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
                                    <CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
                                    <RowStyle />
                                    <FieldHeaderStyle Font-Bold="True" />
                                    <PagerStyle HorizontalAlign="Center" />
                                    <HeaderStyle Font-Bold="True" />
                                    <EditRowStyle />     
                                    <AlternatingRowStyle />
                                </asp:DetailsView>
                                
                                
                                    
                                
                            </td>
                        </tr>
                    </tbody>
                    <%--栏目选项--%>
                    <tbody id="Tabs1" style="display: none">
                        <tr class="tdbg">
                            <td style="width:10%">
                                <strong>点击数：</strong>
                            </td>
                            <td align="left">
                                <asp:Label ID="LblReadCount" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width:10%">
                                <strong>所属节点：</strong>
                            </td>
                            <td align="left">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 10%">
                                <strong>审核状态：</strong><br />
                            </td>
                            <td align="left">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width:10%">
                                <strong>推荐：</strong>
                            </td>
                            <td align="left">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 10%">
                                <strong>录入时间：</strong>
                            </td>
                            <td align="left">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                    <%--模板选项--%>
                    <tbody id="Tabs3" style="display: none">
                        <tr class="tdbg">
                            <td style="width: 288px">
                                <strong>推荐：</strong>
                            </td>
                            <td align="left">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                    <%--生成选项--%>
                </table>
                <br />
                <center>
                    <asp:Button ID="Button5" runat="server" Text="修改/审核"  CssClass="button" OnClick="Button5_Click" />
                    &nbsp;<asp:Button ID="delete" runat="server"  CssClass="button" Text="删除" OnClientClick="return confirm('你确定将该数据删除到回收站吗？')" OnClick="delete_Click" />
                    &nbsp;<asp:Button ID="delete1" runat="server"  CssClass="button" Text="直接退稿" OnClick="delete1_Click" />
                    &nbsp;<asp:Button ID="delete2" runat="server"  CssClass="button" Text="取消审核" OnClick="delete2_Click" />
                    &nbsp;<asp:Button ID="delete3" runat="server"  CssClass="button" Text="设为推荐" OnClick="delete3_Click" /><asp:Button ID="Button6" runat="server" Text="取消推荐" onclick="Button6_Click" />
                </center>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <asp:HiddenField ID="HiddenType" runat="server" />
    <asp:HiddenField ID="HiddenModeid" runat="server" />
    <asp:HiddenField ID="HiddenGID" runat="server" />
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="sTabTitle0" class="titlemouseover" onclick="sShowTabs(0)">
                <a href="ShowContent.aspx?GID=<%=Request.QueryString["GID"] %>&type=0&modeid=<%=Request.QueryString["modeid"] %>">所有评论</a>
            </td>
            <td id="sTabTitle1" class="tabtitle" onclick="sShowTabs(1)">
                <a href="ShowContent.aspx?GID=<%=Request.QueryString["GID"] %>&type=1&modeid=<%=Request.QueryString["modeid"] %>">已审核评论</a>
            </td>
            <td id="sTabTitle2" class="tabtitle" onclick="sShowTabs(2)">
                <a href="ShowContent.aspx?GID=<%=Request.QueryString["GID"] %>&type=2&modeid=<%=Request.QueryString["modeid"] %>">待审核评论</a>
            </td>
            <td align="left">
                &nbsp;
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1">
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <%-- 基本信息--%>
                    <tbody id="sTabs0">
                        <tr class="tdbg">
                            <td colspan="2">
                                <table width="100%" border="0" cellpadding="2" cellspacing="1" style="margin: 0 auto;">
                                    <tr align="center">
                                        <td width="10%" class="title">
                                            <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                                        </td>
                                        <td width="10%" class="title">
                                            ID
                                        </td>
                                        <td width="40%" class="title">
                                            标题
                                        </td>
                                        <td width="10%" class="title">
                                            状态
                                        </td>
                                        <td width="30%" class="title">
                                            操作
                                        </td>
                                    </tr>
                                    <asp:Repeater ID="gvCard" runat="server">
                                        <ItemTemplate>
                                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td height="22" align="center">
                                                    <input name="Item" type="checkbox" value='<%# Eval("CommentID")%>' />
                                                </td>
                                                <td height="22" align="center">
                                                    <%# Eval("CommentID")%>
                                                </td>
                                                <td height="22" align="center">
                                                    <%# Eval("Title")%>
                                                </td>
                                                <td height="22" align="center">
                                                    <%#getcommend(Eval("Audited"))%>
                                                    <td height="22" align="center">
                                                        <a href="ShowContent.aspx?menu=shen&CommentID=<%#Eval("CommentID") %>&modeid=<%=HdnModelID.Value %>&GID=<%=HiddenGID.Value %>">修改</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ShowContent.aspx?menu=del&CommentID=<%#Eval("CommentID") %>&modeid=<%=HdnModelID.Value %>&GID=<%=HiddenGID.Value %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                                                    </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <tr class="tdbg">
                                        <td height="22" colspan="5" align="center">
                                            共
                                            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                                            个信息
                                            <asp:Label ID="Toppage" runat="server" Text="" />
                                            <asp:Label ID="Nextpage" runat="server" Text="" />
                                            <asp:Label ID="Downpage" runat="server" Text="" />
                                            <asp:Label ID="Endpage" runat="server" Text="" />
                                            页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                                            <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                            页
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                    <%# Eval("CommentID")%>
                </table>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center">
                <br /> 
                <asp:Button ID="Button1" Text="批量删除" CssClass="button" runat="server" OnClick="Button1_Click"  OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}" />&nbsp; &nbsp;
                <asp:Button ID="Button3" Text="批量审核" CssClass="button" runat="server" OnClick="Button3_Click" OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}" />&nbsp; &nbsp;
                <asp:Button ID="Button4" Text="批量取消审核" runat="server" CssClass="button" OnClick="Button4_Click" OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}" />&nbsp; &nbsp;
                <input name="Cancel" type="button" class="button" id="Button2" value="取消" onclick="window.location.href='NodeManage.aspx'" />
            </td>
        </tr>
    </table>
    </div>
</body>
</html>

    </form>

