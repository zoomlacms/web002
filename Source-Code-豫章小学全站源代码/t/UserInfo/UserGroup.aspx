<%@ page language="C#" autoeventwireup="true" inherits="Microb_UserInfo_UserGroup, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-黑名单</title>
<link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/citylist.js" type="text/javascript"></script>
<script src="/JS/menu.js"></script>
<script>
  function SpanClick(curid, ToGroup) {        
        if (confirm('确定转入此分组？')) {

            location.href = 'UserGroup.aspx?curid=' + curid + '&ToGroup=' + ToGroup;      
            }
         }
</script>
</head>
<body>
<form id="form1" runat="server">
    <div id="warp">
        <div id="warp_l">
            <div id="zhu_ltop">
            </div>
            <div class="zhu_s">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" CausesValidation="false" runat="server" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="zhu_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="../Content.aspx">者吧首页</a></li>
                        <li><a href="../Topic.aspx">主题者吧</a></li>
                        <li><a href="../TongCheng.aspx">同城者吧</a></li>
                        <li><a href="../MyMicrob.aspx">我的首页</a></li>
                        <li><a href="info_MyWeibo.aspx">我的者吧</a></li>
                        <li> <asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                       
                         <li style="float: right; margin-right: 40px !important; margin-right:30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
        </div>
        <!--右边结束 -->
        <div id="zhu_content">
            <div id="zhu_top">
                <ul>
                    <li><a href="info_Jiben.aspx">个人资料</a></li>
                    <li><a href="info_Touxiang.aspx">修改头像</a></li>
                    <li><a href="info_UpdatePwd.aspx">修改密码</a></li>
                    <li><a href="UserDomain.aspx">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx">个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx" class="zhu_a">黑名单</a></li>
                </ul>
            </div>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
        Width="100%" DataKeyField="ID">
        <ItemTemplate>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center">
                        <font color="#000066"><strong>
                            <%#GetName(DataBinder.Eval(Container.DataItem, "FriendID").ToString())%>
                        </strong></font>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <label onmouseover="showmenu(event,'<%#ShowDivStr(Eval("UserID").ToString(),Eval("ID").ToString())%>')"><asp:Image ID="Image1" runat="server" Height="68px" Width="72px" ImageUrl='<%#GetPic(Eval("FriendID","{0}").ToString()) %>' /></label></td>
                </tr>
                <tr>
                    <td align="center">
                        [<asp:LinkButton  ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删 除</asp:LinkButton>]</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </div>
        <div id="zhu_bottom">
        </div>
    </div>
    <div id="copyright">
        <ul>
            <li><a href="">关于我们</a></li>
            <li>|</li>
            <li><a href="">网站地图</a></li>
            <li>|</li>
            <li><a href="">免责声明</a></li>
            <li>|</li>
            <li><a href="">版权申明</a></li>
            <li>|</li>
            <li><a href="">招贤纳士</a></li>
            <li>|</li>
            <li><a href="">广告服务</a></li>
            <li>|</li>
            <li><a href="">网站合作</a></li>
            <li>|</li>
            <li><a href="">帮助中心</a></li>
            <li>|</li>
            <li><a href="">投稿指南</a></li>
            <li>|</li>
            <li><a href="">联系我们</a></li>
            <li>|</li>
            <li><a href="">友情链接</a></li>
        </ul>
        <p>Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
    
</body>
</html>
