<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendSearch_Search_HighLevel, App_Web_fj0k1214" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="ControlPageLink.ascx" TagName="ControlPageLink" TagPrefix="uc3" %>
<%@ Register Src="~/User/UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>搜索好友</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
function refpage(ret) {
if (typeof (ret) != "undefined") {
window.location.href = "Search_HighLevel.aspx#here";
}
}
</script>
<script type="text/javascript" language="javascript" src="../../Command/common.js"></script>
<script type="text/javascript" language="javascript" src="../../Command/subModal.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的好友" href="/User/UserFriend/Index.aspx">我的好友</a>&gt;&gt;搜索好友
</div>
<uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<br />
<table border="0" align="center" cellpadding="0" cellspacing="0" style="width:100%;">
<tr>
<td valign="top" width="150px">
<uc3:ControlPageLink ID="ControlPageLink1" runat="server"></uc3:ControlPageLink>
</td>
<td valign="top">
    <div class="us_topinfo" style="padding: 10px; width: 600px !important;">
        <table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%">
            <tr>
                <td>
                    <asp:Panel ID="quickPanel" runat="server" Width="100%">
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tr class="gridtitle">
                                <td colspan="2">
                                    搜索你心目中的理想对象
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    我要找：
                                </td>
                                <td>
                                    &nbsp;<asp:RadioButtonList ID="sex1" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">男朋友</asp:ListItem>
                                        <asp:ListItem Value="0" >女朋友</asp:ListItem>
                                        <asp:ListItem Value="-1" Selected="True">普通朋友</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    年&nbsp;&nbsp; 龄：
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox ID="txtAge1" runat="server" Width="40px"></asp:TextBox>
                                    ~
                                    <asp:TextBox ID="txtAge2" runat="server" Width="40px"></asp:TextBox>岁
                                    <asp:RangeValidator ID="ageRange" runat="server" ControlToValidate="txtAge1" Display="Dynamic"
                                        ErrorMessage="年龄必须在18岁到100之间" MaximumValue="100" MinimumValue="18" SetFocusOnError="True"
                                        Type="Integer"></asp:RangeValidator>
                                    <asp:RangeValidator ID="ageRange0" runat="server" ControlToValidate="txtAge2" Display="Dynamic"
                                        ErrorMessage="年龄必须在18岁到100之间" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    所在地：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlProvince" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True">
                                    </asp:DropDownList>
                                    <span id="contactTip">*请选择 Ta 的工作所在地省份</span>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    身&nbsp;&nbsp; 高：
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox ID="Staturetxt1" runat="server" Width="40px"></asp:TextBox>
                                    ~
                                    <asp:TextBox ID="Staturetxt2" runat="server" Width="40px"></asp:TextBox>厘米
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    体&nbsp;&nbsp; 重：
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox ID="Avoirtxt1" runat="server" Width="40px"></asp:TextBox>
                                    ~
                                    <asp:TextBox ID="Avoirtxt2" runat="server" Width="40px"></asp:TextBox>公斤
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    学&nbsp;&nbsp; 历：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlBachelor" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    收&nbsp;&nbsp; 入：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlMonth" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    住&nbsp;&nbsp; 房：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlHome" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 22px">
                                    购&nbsp;&nbsp; 车：
                                </td>
                                <td style="height: 22px">
                                    &nbsp;<asp:DropDownList ID="CarDropDownList" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td style="height: 22px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    婚&nbsp;&nbsp; 况：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlMarry" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    照&nbsp;&nbsp; 片：
                                </td>
                                <td>
                                    <asp:CheckBox ID="ChBPhoto" runat="server" />有照片
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <asp:LinkButton ID="IsNother" runat="server" OnClick="IsNother_Click">显示高级搜索条件</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="HighFactor" runat="server" Visible="false">
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tr>
                                <td align="right" style="width: 79px">
                                    籍&nbsp;&nbsp; 贯：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="nation1" Width="177px" runat="server" OnSelectedIndexChanged="nation1_SelectedIndexChanged"
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList ID="nation2" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    行&nbsp;&nbsp; 业：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="Hang" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    职&nbsp;&nbsp; 业：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlWork" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    血&nbsp;&nbsp; 型：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlBlood" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    星&nbsp;&nbsp; 座：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="DropDownList6" Width="177px" runat="server">
                                        <asp:ListItem Value="不限" />
                                        <asp:ListItem Value="白羊座" />
                                        <asp:ListItem Value="金牛座" />
                                        <asp:ListItem Value="双子座" />
                                        <asp:ListItem Value="巨蟹座" />
                                        <asp:ListItem Value="狮子座" />
                                        <asp:ListItem Value="处女座" />
                                        <asp:ListItem Value="天秤座" />
                                        <asp:ListItem Value="天蝎座" />
                                        <asp:ListItem Value="射手座" />
                                        <asp:ListItem Value="魔羯座" />
                                        <asp:ListItem Value="水瓶座" />
                                        <asp:ListItem Value="双鱼座" />                                            
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    宗&nbsp;&nbsp; 教：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="xinyang" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr><td align="right">民&nbsp;&nbsp; 族：</td><td>&nbsp;<asp:DropDownList ID="Nationtxt" Width="177px" runat="server"></asp:DropDownList></td><td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    是否要孩子：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="NeedchildDropDownList" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    是否有子女：
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlChild" Width="177px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    会员昵称：
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox ID="HoneyName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" 
                        Height="20px" />
                </td>
            </tr>
            <tr class="gridtitle">
                <td colspan="2">
                    真爱搜索(对VIP会员开放)
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel runat="server">
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tr>
            <td align="right">
                性&nbsp; 别：
            </td>
            <td>
                <asp:RadioButtonList ID="sex2" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                    <asp:ListItem>女朋友</asp:ListItem>
                    <asp:ListItem>男朋友</asp:ListItem>
                    <asp:ListItem Selected="true">不分性别</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right">
                所在地：
            </td>
            <td>
                &nbsp;<asp:DropDownList ID="TrueLove1" Width="177px" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="TrueLove1_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="TrueLove2" Width="177px" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                真爱群落：
            </td>
            <td>
                知性群落 灵性群落 探索群落 温暖群落 智慧群落
            </td>
        </tr>
    </table>
</asp:Panel>
</td>
</tr>
<tr class="gridtitle">
<td colspan="2">
特色搜索
</td>
</tr>
<tr>
<td>
<asp:Panel ID="Panel1" runat="server">
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tr>
            <td align="right">
                性&nbsp; 别：
            </td>
            <td>
                <asp:RadioButtonList ID="sex3" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                    <asp:ListItem Value="0">女朋友</asp:ListItem>
                    <asp:ListItem Value="1">男朋友</asp:ListItem>
                    <asp:ListItem Value="-1" Selected="true">不分性别</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right">
                所在地：
            </td>
            <td>
                &nbsp;<asp:DropDownList ID="feature1" Width="177px" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="feature1_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="feature2" Width="177px" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                生肖：
            </td>
            <td>
                <a href="Search_HighLevelResult.aspx?&shengxiao=1<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">鼠</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=2<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">牛</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=3<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">虎</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=4<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">兔</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=5<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">龙</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=6<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">蛇</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=7<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">马</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=8<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">羊</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=9<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">猴</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&shengxiao=10<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">
                    鸡</a>&nbsp; <a href="Search_HighLevelResult.aspx?&shengxiao=11<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">
                        狗</a>&nbsp; <a href="Search_HighLevelResult.aspx?&shengxiao=12<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">
                            猪</a>&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right">
                体 形：
            </td>
            <td>
                <a href="Search_HighLevelResult.aspx?&Somato=1<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">清瘦</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=2<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">偏瘦</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=3<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">匀称</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=4<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">有点胖</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=5<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">比较胖</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=6<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">苗条</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=7<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">丰满</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=8<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">强壮</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=9<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">魁梧</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Somato=10<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">其他</a>&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right">
                血 型：
            </td>
            <td>
                <a href="Search_HighLevelResult.aspx?&Blood=1<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">A型</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Blood=2<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">B型</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Blood=3<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">AB型</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Blood=4<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">O型</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&Blood=5<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">其他</a>&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right">
                年 龄：
            </td>
            <td>
                <a href="Search_HighLevelResult.aspx?&age=1<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">情窦初开</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&age=2<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">花样年华</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&age=3<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">风华正茂</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&age=4<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">人到中年</a>&nbsp;
                <a href="Search_HighLevelResult.aspx?&age=5<%=GetFeature(sex3,feature1,feature2)%>" style="color: Green">夕阳正红</a>&nbsp;
            </td>
        </tr>                                       
    </table>
</asp:Panel>
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</form>
</body>
</html>