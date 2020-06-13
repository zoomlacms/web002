<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_MtrlsMrktng, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>商品推广</title>    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    
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
        function getinfo(id) {
            location.href = "Stock.aspx?menu=edit&id=" + id + "";
        }    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">        
        <span>后台管理</span> &gt;&gt;<span>商城管理</span> &gt;&gt; <span><a href="MtrlsMrktng.aspx">商品推广管理</a></span> 
    </div>
    <div class="clearbox">
    </div>
     <div>
        <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" 
             class="border"  AllowSorting="true" CellPadding="2" CellSpacing="1" BackColor="White"
        ForeColor="Black" CssClass="border" EnableTheming="False" GridLines="None" 
             Width="100%" RowStyle-CssClass='tdbg'  HeaderStyle-Height="28px"  >
            <RowStyle CssClass="tdbg" Height="26px"></RowStyle>
            <Columns>               
                <asp:TemplateField HeaderText="推广人" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lbUserID" runat="server"><%#getUserNameById(ZoomLa.Common.DataConverter.CLng(Eval("UserID").ToString()))%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 
                 <asp:TemplateField HeaderText="总额" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblNum" runat="server" Text="" ><%#Eval("Money")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="返利比例" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblgu" runat="server" Text=""><%#(Eval("Scale"))%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="返利金额" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text=""><%#Eval("BalanceMoney")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <%--<asp:TemplateField HeaderText="相关操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>                       
                        <a href="?menu=delete&id=<%#Eval("ID")%>" onclick="return confirm('确实要删除此推广吗？');">删除</a>
                    </ItemTemplate>
                </asp:TemplateField>--%>
            </Columns>
        </asp:GridView>
    </div>
    <div class="tdbg" align="center">
        <%=getUserNameById(ZoomLa.Common.DataConverter.CLng(Request.QueryString["id"]))%>的返利余额为:<asp:Label runat="server" ID="MoneyID" Text=""></asp:Label>
    </div>
    <div class="tdbg" align="center">
                    <span>                                                
                        </span><span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
                </div>
    </form>
</body>
</html>
