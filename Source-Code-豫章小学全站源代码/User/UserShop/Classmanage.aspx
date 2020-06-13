<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_Classmanage, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlTop1.ascx" TagName="WebUserControlTop1" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function CheckAll(spanChk)//CheckBox全选
{
var oItem = spanChk.children;
var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
xState=theBox.checked;
elm=theBox.form.elements;
for(i=0;i<elm.length;i++)
if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
{
    if(elm[i].checked!=xState)
    elm[i].click();
}
}
</script>
<script src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a><&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="修改密码" href="Classmanage.aspx">分类管理</a>
</div>

    <div style="width: 100%">
        <!-- str -->
        <div class="us_seta" style="margin-top: 5px; height: 300px">
            <h1 style="text-align: center">
                <div>
                    分类管理</div>
            </h1>
        
        <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" visible="false" runat="server"/>
        <uc3:WebUserControlTop1 ID="WebUserControlTop1_1" visible="false" runat="server" />
        <div class="us_topinfo" style="margin-top: 10px; width: 98%">
            <a href="Classmanage.aspx">分类管理</a> <a href="addclass.aspx">添加分类</a>
            </div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;"
                id="TABLE1">
                <tr align="center">
                    <td width="33%">
                        分类ID
                    </td>
                    <td width="33%">
                        分类名称
                    </td>
                    <td width="33%">
                        操作
                    </td>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr class="">
                            <td height="22" class="tdbg" align="center">
                                <%#Eval("id","{0}") %>
                            </td>
                            <td height="22" class="tdbg" align="center">
                                <a href="Addclass.aspx?menu=edit&id=<%#Eval("id") %>"><%#Eval("Classname")%></a>
                            </td>
                            <td height="22" class="tdbg" align="center">
                                <a href="Addclass.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" >删除</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr class="tdbg">
                    <td height="22" colspan="10" align="center" class="tdbgleft">
                        共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>条信息/页  转到第<asp:DropDownList 
                        ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>