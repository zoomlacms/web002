<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_AuthorManage, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>作者管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span>&gt;&gt;<span>其他管理</span> &gt;&gt;<span>作者管理</span>
</div>
<div class="clearbox"></div>    
        <asp:GridView RowStyle-HorizontalAlign="Center" ID="GridView1" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="选中">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="SelectCheckBox" runat="server" />
                    </ItemTemplate>
                    <ItemStyle CssClass="tdbg" />
                </asp:TemplateField>
                <asp:BoundField DataField="ID" HeaderText="序号">
                 <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                  </asp:BoundField>                  
                          
                <asp:TemplateField HeaderText="作者名称">
                   <ItemTemplate>
                        <a href="Author.aspx?Action=Modify&AUId=<%#Eval("ID")%>">
                            <%# DataBinder.Eval(Container.DataItem,"Name")%>
                        </a>
                    </ItemTemplate>
                     <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="作者分类">
                <HeaderStyle/>
                    <ItemTemplate>
                        <%#DataBinder.Eval(Container.DataItem, "Type")%>
                    </ItemTemplate>
                     <ItemStyle CssClass="tdbg" />
                </asp:TemplateField>                     
                <asp:TemplateField HeaderText="操作">
                <HeaderStyle Width="19%" />
                <ItemTemplate>
                    <a href='Author.aspx?Action=Modify&AUId=<%# Eval("ID")%>' >修改</a>
                    <a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='AuthorManage.aspx?AUId=<%# Eval("ID")%>';">删除</a> 
                   
                </ItemTemplate>
                 <ItemStyle CssClass="tdbg" />
                </asp:TemplateField>
            </Columns>
          <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
 <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
 <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
 <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>  
         <div class="clearbox"></div>                   
    <table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
        <tr>
            <td style="height: 21px">                   
              <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                    Text="全选" />
                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                    ID="btndelete" class="C_input" style="width:110px;"  runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                    Text="删除选定作者" OnClick="btndelete_Click" />
                <input name="Cancel" type="button" style="width:110px;"  class="C_input" class="inputbutton" id="Cancel" value="添加一个新作者" onclick="javascript:window.location.href='Author.aspx'" /></td>
        </tr>
        <tr>
            <td style="height: 21px">
            </td>
        </tr>
    </table>           

</form>
</body>
</html>
