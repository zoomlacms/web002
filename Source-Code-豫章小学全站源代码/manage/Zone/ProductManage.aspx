<%@ page language="C#" autoeventwireup="true" inherits="FreeHome.Manage.ProductManage, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
//根据传入的checkbox的选中状态设置所有checkbox的选中状态
    function selectAll(obj)
    {
        var allInput = document.getElementsByTagName("input");
        //alert(allInput.length);
        var loopTime = allInput.length;
        for(i = 0;i < loopTime;i++)
        {
            //alert(allInput[i].type);
            if(allInput[i].type == "checkbox")
            {
                allInput[i].checked = obj.checked;
            }
        }
    }
    //判断是否选中记录，用户确认删除
    function judgeSelect()
    {
    var result = false;
    var allInput = document.getElementsByTagName("input");
    var loopTime = allInput.length;
    for(i = 0;i < loopTime;i++)
    {
        if(allInput[i].checked)
        {
            result = true;
            break;
        }
    }
    if(!result)
    {
        alert("请先选则要删除的记录！");
        return result;
    }
    result = confirm("你确认要删除选定的记录吗？");
    return result;
    } 

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>会员空间管理</span>  &gt;&gt;    <span>虚拟商品管理</span>  &gt;&gt; <a href="ProductManage.aspx">[虚拟商品列表]</a>  |  <a href="ProductAdd.aspx">[空间虚拟商品设置]</a> 
	</div>
    <table width="100%" class="tdbg" >
    <tr class="tdbg">
                    <td colspan="2" align="center"  class="spacingtitle" >
                        虚拟商品列表</td>
                </tr>
    <tr>
    <td style="height: 26px">
    <asp:GridView ID="gvGrouplist" runat="server"  AutoGenerateColumns="False" Width="100%" DataKeyNames="ID">
                        <Columns>
                            <asp:TemplateField HeaderText="选择">
                                <ItemTemplate>
                                    &nbsp;<input id="pidCheckbox" name="pidCheckbox" type="checkbox" value='<%#DataBinder.Eval(Container.DataItem,"ID")  %>' class="checkbox" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品缩略图">
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="54px" Width="60px" ImageUrl='<%#GetPic(DataBinder.Eval(Container.DataItem,"ProductPic").ToString()) %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ProductName" HeaderText="商品名称" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="商品价格" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Addtime" HeaderText="添加时间" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                    [<asp:LinkButton ID="Editbtn" runat="server" CausesValidation="False" OnClick="Editbtn_Click">查看详细信息</asp:LinkButton>]
                                          
                                                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <table class="tinputbody" cellpadding="0" cellspacing="1" border="0" width="100%">
                                <tr>
                                    <td align="center">没信息 </td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                    </asp:GridView></td>
    </tr>
    <tr class="tdbg">
          <td height="24" colspan="5" align="center" class="tdbgleft">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
              <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个/页
              转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
    </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<input name="chk23" type="checkbox" ID="chk23" runat="server" onclick="selectAll(this)" class="checkbox"/>全选
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_DeleteRecords" class="C_input"  runat="server" OnClientClick="return judgeSelect();" Text="删除选中记录" OnClick="btn_DeleteRecords_Click" />
    </td>
  </tr>
</table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;
    </td>
  </tr>
</table>
    </div>
</form>
</body>
</html>
