<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_KeyWordManage, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>关键字管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
   <div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>其他管理</span> &gt;&gt;<span>
                                关键字管理</span>	</div> 
                                    <div class="clearbox"></div>                                     
 

            <asp:GridView ID="GridView1"  RowStyle-HorizontalAlign="Center" DataKeyNames="KeywordID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="选中">                            
                        <ItemTemplate>
                            <asp:CheckBox ID="SelectCheckBox" runat="server" />
                        </ItemTemplate>
                        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="KeywordID" HeaderText="序号">
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                              </asp:BoundField>                        
                    <asp:TemplateField HeaderText="关键字名称">
                       <ItemTemplate>
                            <a href="AddKeyWord.aspx?Action=Modify&KWId=<%#Eval("KeywordID")%>">
                                <%# DataBinder.Eval(Container.DataItem, "KeywordText")%>
                            </a>
                        </ItemTemplate>
                         <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="关键字类别">
                    <HeaderStyle/>
                        <ItemTemplate>
                            <%#Convert.ToInt32(Eval("KeywordType"))==0?"常规关键字":"搜索关键字"%>
                        </ItemTemplate>
                        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>                    
                    
                    <asp:TemplateField HeaderText="优先级">
                        <ItemTemplate>
                          <%#Eval("Priority")%>
                        </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="查询次数">
                        <ItemTemplate>
                          <%#Eval("Hits")%>
                        </ItemTemplate>   
                        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />                     
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="引用次数">
                        <ItemTemplate>
                          <%#Eval("QuoteTimes")%>
                        </ItemTemplate>
                        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="操作">
                    <HeaderStyle Width="19%" />
                    <ItemTemplate>
                        <a href='AddKeyWord.aspx?Action=Modify&KWId=<%# Eval("KeywordID")%>' >修改</a>
                        <a  href="javascript:if(confirm('你确定要删除吗?')) window.location.href='KeyWordManage.aspx?KWId=<%# Eval("KeywordID")%>';">删除</a> 
                                                </ItemTemplate>
                                                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            
            </asp:GridView>     
            <div class="clearbox"></div>         
        <table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
            <tr>
                <td style="height: 21px">                   
                  <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                        Text="全选" />
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button class="C_input"
                        ID="btndelete" runat="server" style="width:110px;" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                        Text="删除选定关键字" OnClick="btndelete_Click" />              
</td>
            </tr>
            <tr>
                <td style="height: 21px">
                </td>
            </tr>
        </table>           
</form>
</body>
</html>
