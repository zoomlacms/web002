<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_ExamAnswer, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    function ShowDiv(obj) {
        if (document.getElementById("Div" + obj).style.display == "") {
            document.getElementById("Div" + obj).style.display = "none";
            document.getElementById("Show" + obj).innerHTML = "<img src='../../Images/ico_a.gif' onclick=\"ShowDiv('" + obj + "')\" style='float:right' > ";
        } else {
            document.getElementById("Div" + obj).style.display = "";
            document.getElementById("Show" + obj).innerHTML = "<img src='../../Images/ico_b.gif' onclick=\"ShowDiv('" + obj + "')\" style='float:right'  > ";
        }
    }
    function load() {
        $("#div :input").attr("disabled", "false");

    }
    </script>
</head>
<body onload="load()">
    <form id="form1" runat="server">
    <div align="center">
    <div align="center" style="border-bottom:solid 2px #ADD8E6;width:80%; margin-top:10px;">
    <div align="center" style="font-weight:bold;float:left;width:100%;right:40px"><asp:literal ID="liTitle" runat="server"></asp:literal></div>
    <div style="float:right">总共<asp:Literal ID="liNum" runat="server"></asp:Literal>题，共<asp:Literal ID="liCourse" runat="server"></asp:Literal>分|&nbsp&nbsp
    此卷总分为：<asp:Literal ID="score" runat="server"></asp:Literal>&nbsp
    <asp:Button id="Button1" Text="返回" runat="server" onclick="Button1_Click"/>
     </div>
     </div><div id="div" align="center" style="width:80%;margin:auto;">
    <asp:Repeater ID="Repeater1" runat="server"  onitemdatabound="Repeater1_ItemDataBound">
        <ItemTemplate>
        <!-- 大题显示 begin -->
            <div style="background-color:#ADD8E6;height:25px;font-size:11pt;margin-bottom:5px;margin-top:40px;width:100%;line-height:25px" >
                <div style="float:left;" align="left"><%#GetChineseNumd((Container.ItemIndex + 1).ToString())%>、<%#Eval("QuestionTitle")%>(共<%#Eval("QuesNum") %>题，每小题<%#Eval("Course")%>分)</div>
                <span id="Show<%#Eval("ID") %>"><img src="../../Images/ico_b.gif" onclick="ShowDiv('<%#Eval("ID") %>')" style="float:right" /></span>
            </div>
            <div id="Div<%#Eval("ID") %>">
               <div style="width:100%;font-size:11pt;" align="left"><%#Eval("Subtitle")%></div>
        <!-- 大题显示  end -->
                <asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("QuestionType") %>' />
                <asp:HiddenField ID="hfNum" runat="server" Value='<%#Eval("QuesNum") %>' />
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                    <!-- 小题显示 begin -->
                       <div style="float:left;margin-top:5px;"><%#(Container.ItemIndex + 1).ToString()%>、<%#Eval("p_title")%></div>
                      <!--   内容显示  -->
                       <div style="margin-top:30px;text-align:left;"><%#GetContent(Eval("p_id", "{0}"))%></div> 
                       <!--答案显示-->
                       <div class="answer" style="margin-top:30px;text-align:left;color:Red;"><%#GetAns(Eval("p_id","{0}")) %></div><br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
                 </ItemTemplate>
              </asp:Repeater>
            </div>
<div style="display:none">
<input id="Hsid" runat="server" />
<input id="Hclass" runat="server" />
</div>
</div>
</form>
</body>
</html>