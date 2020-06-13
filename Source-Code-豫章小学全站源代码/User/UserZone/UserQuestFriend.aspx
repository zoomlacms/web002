<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_UserQuestFriend, App_Web_jwpynmiq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>找朋友</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" >    
    <div>     
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr><td>
    <a href="HailfellowList.aspx">我的好友</a>
   </td>
   <td>
   <a href="UserQuestFriend.aspx">查找好友</a>
   </td>
   </tr>
   </table>
     
    </div>
    <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td>
                    <%-- <img src="../images/ico_hy.gif" width="28" height="24" align="absmiddle" />--%>
                    查找朋友
                </td>
                <td align="right">
                    <a href="javascript:window.history.back();">&lt;&lt;返回上一页</a>
                </td>
            </tr>
        </table>
    </div>
    <div id="content">
        <br />
       
        <table width="569" height="175" border="0" align="center" cellpadding="7" cellspacing="0"
            class="biankuan">
            <tr>
                <td colspan="2">
                    <%--<img src="#" width="24" height="23" align="absmiddle" />--%>
                    <font color="#336699"><strong class="f14">模糊查找</strong></font>
                </td>
            </tr>
            <tr>
                <td width="118" align="right">
                    性别：
                </td>
                <td width="429">
                  <select name="sex" id="sex" runat="server">
                        <option value="3">所有</option>
                        <option value="1">男</option>
                        <option value="2">女</option>
                    </select>
                  
                </td>`
            </tr>
            <tr>
                <td align="right">
                    年龄范围：
                </td>
                <td>
                    <select name="age" id="age" runat="server">
                        <option value="0">全部</option>
                        <option value="1">18以下</option>
                        <option value="2">18-25</option>
                        <option value="3">25-33</option>
                        <option value="4">33-45</option>
                        <option value="5">45以上</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="right">
                    地区：
                </td>
                <td>
                    <asp:DropDownList ID="province" runat="server" AutoPostBack="true" OnSelectedIndexChanged="province_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="city" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td height="40" align="right">
                    &nbsp;
                </td>
                <td>
                    <span class="btmbian">
				
                    <asp:Button ID="btnSecher" runat="server" Text="查找" onclick="btnSecher_Click" />
				</span>
                </td>
            </tr>
        </table>

        <br />
        <br />
        <table width="569" height="165" border="0" align="center" cellpadding="7" cellspacing="0"
            class="biankuan">
            <tr>
                <td colspan="2">
                    <%--<img src="../images/ico_search1.gif" width="24" height="23" align="absmiddle" />--%>
                    <font color="#336699"><strong class="f14">精确查找</strong></font>
                </td>
            </tr>
            <tr>
                <td width="133" align="right">
                    对方昵称：
                </td>
                <td width="406">
                    <input name="username" type="text"  id="username" size="40" maxlength="20"  runat="server"/>
                    <span class="btmbian">
                    <asp:Button ID="btnFirendUserName" runat="server" Text="查找" 
                        onclick="btnFirendUserName_Click"></asp:Button>
                    </span>
                </td>
            </tr>
            <tr>
                <td align="right">
                    对方会员ID号：
                </td>
                <td>
                    <input name="userid" type="text" class="it1" id="userid"  maxlength="10"   runat="server"/>
        <asp:RangeValidator ID="RangeValidator1" runat="server" MaximumValue="99999" 
                 MinimumValue="1" Type="Integer" ErrorMessage=" 请输入数字 "
                 
                  ControlToValidate="userid">
                    </asp:RangeValidator>
                    <span class="btmbian">&nbsp;<asp:Button ID="Button1" runat="server" Text="查找" onclick="Button1_Click"></asp:Button>
               
                </td>
            </tr>
            <tr>
                <td height="30" align="right">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    
 </div>
    <div class="clearfix">
    </div>
    </form>
    </body>
</html>
