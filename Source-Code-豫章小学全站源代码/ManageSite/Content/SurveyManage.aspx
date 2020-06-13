<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>问卷投票管理</title>    
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />    
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
         当前位置：功能导航 >> <a href="SurveyManage.aspx">投票管理</a></div>      
    <table    border="0" cellpadding="0" cellspacing="0" width="100%" id="Table1">
        <tr style="background-color:#F0F6FC;">
            <td style="height: 21px">                   
              问卷投票名：<asp:TextBox ID="txtSurKey" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnSearch"  CssClass="button" runat="server" Text="搜索" OnClick="btnSearch_Click"  />
                <asp:HiddenField ID="HdnKey" runat="server" />
            </td>
        </tr>                
    </table>
        <asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="SurveyID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据">
            <Columns>
                <asp:TemplateField HeaderText="选中" HeaderStyle-BackColor="#F0F6FC">                            
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSel" runat="server" />
                    </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    <HeaderStyle Width="5%" />
                </asp:TemplateField>
                <asp:BoundField DataField="SurveyID" HeaderText="序号" HeaderStyle-BackColor="#F0F6FC">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="5%" />
                </asp:BoundField>                                               
                <asp:TemplateField HeaderText="问卷投票名" HeaderStyle-BackColor="#F0F6FC">
                    <ItemTemplate>                                
                       <a href="survey.aspx?SID=<%# Eval("SurveyID")%>"><%# Eval("SurveyName")%></a>
                    </ItemTemplate>
                     <ItemStyle  CssClass="tdbg" HorizontalAlign="Left" />
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="类别" HeaderStyle-BackColor="#F0F6FC">
                    <ItemTemplate>                                
                       <%# Eval("SurType","{0}")=="1"?"投票":"问卷" %>
                    </ItemTemplate>
                     <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                     <HeaderStyle Width="10%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="启用" HeaderStyle-BackColor="#F0F6FC">
                    <ItemTemplate>
                      <%# GetUsedFlag(Eval("IsOpen","{0}")) %>
                    </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    <HeaderStyle Width="10%" />
                </asp:TemplateField>                                      
                <asp:TemplateField HeaderText="操作" HeaderStyle-BackColor="#F0F6FC">                
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("SurveyID") %>'>修改</asp:LinkButton> | 
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("SurveyID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton> | 
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="QList" CommandArgument='<%# Eval("SurveyID") %>'>问题列表</asp:LinkButton> |
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Result" CommandArgument='<%# Eval("SurveyID") %>'>查看结果</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
             <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
             <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
             <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
             <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
             <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />                
        </asp:GridView>
        <div class="clearbox"></div>           
        <table    border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
        <tr>
            <td style="height: 21px">                   
              <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                    Text="全选" />
                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" CssClass="button" OnClientClick="return confirm('确定要删除选中的项目吗？')" Text="批量删除" OnClick="btndelete_Click" />                
            </td>
        </tr>                
    </table>
    </div>
    </form>
</body>
</html>
