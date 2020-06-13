<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_MemberInfo, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html >
<head runat="server">
    <title>会员详细信息</title>
    <style type ="text/css">
        .table { width:400px; height:300px; margin:0 auto; border:1px solid  #EEEEEE;  }
        .td { width:150px; text-align:center; }
        .td2{ width:250px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="table">
             <tr>
                <td class="td" colspan="2">会员详细信息</td>
            </tr>
            <tr>
                <td class="td">用户名</td>
                <td class="td2"><input id="txtname" type="text" runat="server" /></td>
            </tr>
            <tr>
                <td class="td">电子邮件</td>
                <td class="td2"><input id="txtemail" type="text" runat="server"/></td>
            </tr>
            <tr>
                <td class="td">加入会员组时间</td>
                <td class="td2"><input id="txtjoin" type="text" runat="server"/></td>
            </tr>
            <tr>
                <td class="td">公司名称</td>
                <td class="td2"><input id="txtc" type="text" runat="server"/></td>
            </tr>
            <tr>
                <td class="td">公司简介</td>
                <td class="td2"> <textarea id="txtdes"  name="txtdes" cols="30" rows="5" runat="server"></textarea></td>
            </tr>
            <tr>
                <td class="td">用户信誉值</td>
                <td class="td2"><input id="txtCreit" type="text" runat="server"/></td>
            </tr>
            <tr>
                <td class="td" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text=" 确 定 " onclick="Button1_Click" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
