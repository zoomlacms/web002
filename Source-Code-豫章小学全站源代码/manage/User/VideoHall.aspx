<%@ page language="C#" autoeventwireup="true" inherits="manage_User_VideoHall, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt;<a href="AdminManage.aspx">多人视频管理</a>&gt;&gt;<a href="VideoRoom.aspx">房间管理</a><a href="addvideohall.aspx">[添加大厅]</a></div>
  <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="tdbg" style="height: 26px">
      <td align="center" class="title" width="20%"> 大厅名称 </td>
      <td align="center" class="title" width="20%"> 房间数量 </td>
      <td align="center" class="title" width="10%"> 排序编号 </td>
      <td align="center" class="title" width="25%"> 说明 </td>
      <td align="center" class="title" width="30%"> 操作 </td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="rptypelist_ItemDataBound">
      <ItemTemplate>
        <tr class="tdbgleft" style="height: 26px">
          <td align="center" width="20%"><a style='color:blue' href='VideoRoom.aspx?hid=<%#Eval("Id") %>'><%#Eval("Name") %></a></td>
          <td align="center" width="20%"><%#GetRoomNumByHallId(ZoomLa.Common.DataConverter.CLng( Eval("Id").ToString()))%></td>
          <td align="center" width="5%"><%#Eval("OrderNum")%></td>
          <td align="center" width="25%"><%#Eval("Remark")%></td>
          <td align="center" width="30%"><a href="AddvideoRoom.aspx?hid=<%#Eval("ID") %>">添加房间</a> <a href="AddVideohall.aspx?menu=edit&id=<%#Eval("ID") %>"> 修改</a> <a href="?menu=delete&id=<%#Eval("ID") %>" onclick="return confirm('所属房间也会删除，你确定要删除此大厅:[<%#Eval("Name") %>] 吗？')"> 删除</a></td>
        </tr>
    <%--  <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" style="height: 26px">
                        <td align="center" width="20%">
                        </td>
                        <td align="center" width="20%">
                            <%#Eval("RoomName")%>
                        </td>
                        <td align="center" width="5%">
                            <%#Eval("OrderNum")%>
                        </td>
                        <td align="center" width="25%">
                            <%#Eval("Remark")%>
                        </td>
                        <td align="center" width="30%">
                            <a href="AddvideoRoom.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="?menu=delete&rid=<%#Eval("id") %>"
                                onclick="return confirm('你确定要删除房间:[<%#Eval("RoomName")%>] 吗？')">删除</a>
                        </td>
                </ItemTemplate>
            </asp:Repeater>--%>
      </ItemTemplate>
    </asp:Repeater>
  </table>
  </div>
</form>
</body>
</html>