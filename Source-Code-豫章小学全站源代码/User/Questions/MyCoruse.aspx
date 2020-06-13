<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_MyCoruse, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="ZoomLa.Ajax" Namespace="ZoomLa.Framework.Noebe.Jsons.WebControls" TagPrefix="cc1" %>
<!DOCTYPE>
<html>
<head runat="server">
<title>我的课程</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../JS/ManageJS.js"></script>
<script>
    function onShow(obj) {
        if (document.getElementById("DetDiv" + obj).style.display == "") {
            document.getElementById("DetDiv" + obj).style.display = "none";
        } else {
            document.getElementById("DetDiv" + obj).style.display = "";
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo" style="width: 98%">
  <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
  <div class="us_seta" style="margin-top: 5px;">
    <h1 align="center"> 我的课程</h1>
  </div>
  <div class="divbox" id="nocontent" runat="server" style="display: none"> 暂无课程信息</div>
  <div style="width: 100%">
    <table width="100%;">
      <tr>
        <td align="center" style="width: 10%"> 选择 </td>
        <td align="center"> 课程名称 </td>
        <td align="center"> 剩余/总(单位：天) </td>
        <td align="center"> 总课时 </td>
        <td align="center"> 开放状态 </td>
        <td align="center"> 操作 </td>
      </tr>
      <asp:Repeater ID="rep" runat="server" OnItemDataBound="rep_ItemDataBound">
        <ItemTemplate>
          <tr>
            <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("CourseID") %>' />
              <asp:CheckBox ID="chkSel" runat="server" /></td>
            <td align="center"><%#GetCourse(Eval("CourseID","{0}"))%></td>
            <td align="center"><%#GetClass(Eval("ClassID", "{0}"),Convert.ToInt32( Eval("ID").ToString()), "1")%></td>
            <td align="center"><%#GetClass(Eval("ClassID", "{0}"), Convert.ToInt32(Eval("ID").ToString()), "3")%></td>
            <td align="center"><%#GetState(Eval("ClassID", "{0}"))%></td>
            <td align="center"><%#getStartLesson(Convert.ToInt32(Eval("ID").ToString()), Convert.ToInt32(Eval("ID").ToString()))%></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="5" style="width: 100%"><div id="DetDiv<%#Eval("ID") %>" style="display: none;">
                <table width="100%" style="border: 1px solid #C6E3F7;">
                  <tr style="border: 1px solid #C6E3F7; background-color: #185D84; color: #FFF">
                    <td> 课件名称 </td>
                    <td> 开放时间 </td>
                    <td> 主讲人 </td>
                    <td> 设计者 </td>
                    <td> 操作 </td>
                  </tr>
                  <asp:Repeater ID="Detail" runat='server'>
                    <ItemTemplate>
                      <tr>
                        <td> 第<%#Eval("CoursNum")%>课 <%#Eval("Courseware")%></td>
                        <td><%#Eval("UpdateTime")%></td>
                        <td><%#Eval("Speaker")%></td>
                        <td><%#Eval("Speaker")%></td>
                        <td><asp:UpdatePanel ID="upStudy" runat="server">
                            <ContentTemplate>
                              <asp:LinkButton ID="lbStudy" runat="server" OnClick="lbStudy_Click" CommandName='<%#Eval("ID") %>'
                                                                    CommandArgument='<%#Eval("FileUrl") %>'>开始学习</asp:LinkButton>
                              <asp:HiddenField ID="hfStudyUrl" Value='<%#Eval("FileUrl") %>' runat="server" />
                            </ContentTemplate>
                          </asp:UpdatePanel></td>
                      </tr>
                    </ItemTemplate>
                  </asp:Repeater>
                </table>
              </div></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
    </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr class="tdbg" align="center">
        <td><div class="tdbg"> <span style="text-align: center;">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 </span> </div></td>
      </tr>
    </table>
    <asp:UpdatePanel ID="upSpare" runat="server"> </asp:UpdatePanel>
  </div>
  </div>
</form>
</body>
</html>