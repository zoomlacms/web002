<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ContentRecycle, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>回收站内容</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="../../JS/calendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >> 内容回收站搜索
          
          </div>
           <div style="text-align:left;">&nbsp;&nbsp栏目：<asp:DropDownList ID="ddlColumn" runat="server" AutoPostBack="True" DataValueField="NodeID"
                                    DataTextField="NodeName" OnSelectedIndexChanged="ddlColumn_SelectedIndexChanged">
                                </asp:DropDownList>
           每页显示条数：<asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="True" 
                   onselectedindexchanged="ddlPageSize_SelectedIndexChanged">
                            <asp:ListItem Value="20" Text="默认"/><asp:ListItem Value="2"/>
                            <asp:ListItem Value="20"/><asp:ListItem Value="30"/>
                            <asp:ListItem Value="50"/><asp:ListItem Value="100"/>
                            <asp:ListItem Value="200"/><asp:ListItem Value="300"/>
                         </asp:DropDownList>
           </div> 
           <div style="text-align:left">时间：从&nbsp;<asp:TextBox ID="txtTimeStart" runat="server" onclick="calendar();" />&nbsp;到&nbsp;<asp:TextBox ID="txtTimeEnd" runat="server" onclick="calendar();" />
           目标：<asp:DropDownList ID="txtbyfilde" runat="server" ></asp:DropDownList>&nbsp;关键字：<asp:TextBox ID="txtKeyword" runat="server"/>&nbsp;<asp:Button 
                   ID="btnSearch" runat="server" Text="搜索" class="button" 
                   onclick="btnSearch_Click" /></div>   
           <div></div>       
    </div>
    <div class="column">
        <div class="columntitle">
         当前位置：功能导航 >> 内容回收站 </div>    
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="GeneralID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%">
        <Columns>
            <asp:TemplateField HeaderText="选择" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
            <asp:BoundField DataField="GeneralID" HeaderText="ID" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="标题" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <HeaderStyle Width="50%" />
                <ItemStyle CssClass="tdbg" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="所属栏目" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <%# GetNodeName(Eval("NodeID", "{0}")) %>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="内容模型" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <%# GetModelName(Eval("ModelID", "{0}")) %>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="Inputer" HeaderText="输入人" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton>                    |
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Reset" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick="return confirm('你确定将该数据还原吗？')">还原</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
    <asp:Button ID="Button1" runat="server" Text="还原选中内容" CssClass="button" OnClick="btnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('你确定要还原选中内容吗？')}" />&nbsp;
    <asp:Button ID="Button2" runat="server" Text="清除选中内容"   OnClick="btnDelete_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项彻底删除吗？')}" CssClass="button" UseSubmitBehavior="true" />&nbsp;
    <asp:Button ID="Button3" runat="server" Text="清空回收站" CssClass="button" OnClick="btnDeleteAll_Click" />&nbsp;
    <asp:Button ID="Button4" runat="server" Text="还原所有内容" CssClass="button" OnClick="btnReset_Click" />
    </div>
    </form>
</body>
</html>
