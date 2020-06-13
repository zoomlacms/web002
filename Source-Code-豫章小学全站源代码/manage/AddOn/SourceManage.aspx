<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_SourceManage, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title><%=lang.Get("M_SourceManage_sourceManagement")%></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span><%=lang.Get("M_SpecContent_manage")%></span> &gt;&gt; <span><%=lang.Get("M_SourceManage_Extensions")%></span> &gt;&gt; <span><%=lang.Get("M_SourceManage_otherManagement")%></span> &gt;&gt; <span><%=lang.Get("M_SourceManage_sourceManagement")%></span>
</div>
<div class="clearbox"></div> 
 <asp:GridView ID="GridView1" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" EmptyDataText="无相关数据">
            <Columns>
                <asp:TemplateField HeaderText="选中">                       
                    <ItemTemplate>
                    <asp:CheckBox ID="SelectCheckBox" runat="server" />
                    </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="ID" HeaderText="序号">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                  </asp:BoundField>   
                                        
                
                          
                <asp:TemplateField HeaderText="来源名称">                        
                <ItemTemplate><a href="AddSource.aspx?Action=Modify&SId=<%#Eval("ID")%>"><%# DataBinder.Eval(Container.DataItem,"Name")%></a></ItemTemplate>
                                                  <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                     </asp:TemplateField>                          
                <asp:TemplateField HeaderText="是否启用"><ItemTemplate><%#(bool)Eval("Passed") == false ? "<span style=\"color: #ff0033\">×</span>" : "√"%></ItemTemplate>
                   <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="操作"><HeaderStyle Width="19%" /><ItemTemplate><a href='AddSource.aspx?Action=Modify&SId=<%# Eval("ID")%>' >修改</a>
                       <a  href="javascript:if(confirm('你确定要删除吗?')) window.location.href='SourceManage.aspx?SId=<%# Eval("ID")%>';">删除</a>                         
                </ItemTemplate>
                   <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
        
        </asp:GridView>          
    <table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
        <tr>
            <td style="height: 21px">                   
              <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                    Text="全选" /><asp:Button ID="btndelete" style="width:110px;"  class="C_input" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                    Text="删除选定来源" OnClick="btndelete_Click" />&nbsp;&nbsp;
                <input name="Cancel" style="width:110px;"  type="button" class="C_input" class="inputbutton" id="Cancel" value="添加一个新来源" onclick="javascript:window.location.href='AddSource.aspx'" />
             
        </tr>
        <tr>
            <td style="height: 21px"> 
            </td>
        </tr>
    </table>     
</form>
</body>
</html>
