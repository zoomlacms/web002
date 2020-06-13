<%@ page language="C#" autoeventwireup="true" inherits="_3D_ShowNote, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>Chats Record</title>
<link rel="stylesheet" type="text/css" href="/App_Themes/UserThem/Default.css" />
<style>
    *{
        -moz-user-select: none;}
    *{
        cursor: default;}
    li{
        list-style-type: none;}
    body{
        margin: 0px;
        padding: 0px;
        overflow: hidden;
        text-align: left;
        font: normal 12px Arial, 宋体;}
    body > div{
        margin-right: auto;
        margin-left: auto;}
    #smenu{
        position: absolute;
        overflow: hidden;
        filter: alpha(Opacity=60, style=0);
        opacity: 0.6;
        height: 30px;
        width: 100%;
        left: 0px;
        bottom: -1px;
        background: url('/Images/style3D/menubg.jpg');
        padding: 0px;
        padding-left: 3px;}
    .Menu{
        margin-top: 2px;
        float: left;
        margin-right: 4px;
        color: #fff;
        overflow: hidden;
        cursor: pointer;
        background: url('/Images/style3D/Menu.gif');
        height: 27px;
        width: 116px;
        border: 0;
        padding-top: 6px !important;
        padding-top: 6px;
        text-align: center;}
    .win{
        position: absolute;
        overflow: hidden;
        padding: 0px;}
    .wmin{
        position: absolute;
        background: url('/Images/style3D/c.gif');
        top: 8px !important;
        overflow: hidden;
        width: 26px;
        height: 17px;
        top: 7px;
        right: 82px;}
    .wmax{
        position: absolute;
        background: url('/Images/style3D/c.gif') -26px;
        top: 8px !important;
        overflow: hidden;
        width: 24px;
        height: 17px;
        top: 7px;
        right: 58px;}
    .wclo{
        position: absolute;
        background: url('/Images/style3D/c.gif') -50px;
        top: 8px !important;
        overflow: hidden;
        width: 43px;
        height: 17px;
        top: 7px;
        right: 15px;}
    .tie{
        overflow: hidden;
        height: 30px;
        width: 100%;}
    .boy{
        overflow: hidden;
        width: 100%;}
    .bom{
        overflow: hidden;
        height: 30px;
        width: 100%;}
    .ChatMenu{
        float: left;
        margin-right: 4px;
        margin-left: 4px;
        margin-top: 2px;
        color: #fff;
        overflow: hidden;
        cursor: pointer;
        background: url('/Images/style3D/button.gif');
        height: 20px;
        width: 59px;
        border: 0;
        padding-top: 6px !important;
        padding-top: 6px;
        text-align: center;
        z-index: 4;}
</style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="100%"
            ShowHeader="false" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="7">
            <PagerSettings FirstPageText=" 【Start Page】 " LastPageText=" 【End Page】 " 
                Mode="NextPreviousFirstLast" NextPageText=" 【Next Page】 " 
                PreviousPageText=" 【Up Page】 " />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                    <%#DataBinder.Eval(Container.DataItem, "Cadduser")%> 对 <%#getusername(DataBinder.Eval(Container.DataItem, "Ctouid").ToString())%> <%#DataBinder.Eval(Container.DataItem, "Caddtime")%>  <br />
                      <%#DataBinder.Eval(Container.DataItem, "Ccontent")%> <br />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Center" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>