<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ModelField, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>字段列表</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<script type="text/javascript" src="/JS/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&nbsp;&gt;&gt;&nbsp;系统设置&nbsp;&gt;&gt;&nbsp;<a href="ModelManage.aspx?ModelType=<%=Request["ModelType"] %>"><asp:label id="name" runat="server"></asp:label></a>&nbsp;&gt;&gt;&nbsp;<asp:Literal ID="LModelName" runat="server"></asp:Literal>字段列表&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;<span class="red"><a href="AddModelField.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&ModelType=<%=Request["ModelType"] %>">[添加字段]</a></span>
</div>
    <table border="0" cellpadding="0" cellspacing="1" class="border" style="text-align: center; width: 100%">
        <tr class="gridtitle" align="center" style="height: 25px;">
            <td style="width: 10%; height: 20px;">
                <strong>字段名</strong>
            </td>
            <td style="width: 10%">
                <strong>字段别名</strong>
            </td>
            <td style="width: 10%">
                <strong>字段类型</strong>
            </td>
            <td style="width: 8%">
                <strong>字段级别</strong>
            </td>
            <td style="width: 5%">
                <strong>是否必填</strong>
            </td>
            <td style="width: 5%">
                <strong>是否显示</strong>
            </td>
            <td style="width: 5%">
                <strong>可复制</strong>
            </td>
            <td style="width: 7%">
                <strong>批量添加</strong>
            </td>
            <td style="width: 10%">
                <strong>排序</strong>
            </td>
            <td style="width: 10%">
                <strong>操作</strong>
            </td>
            <td style="width: 15%">
                <strong>编辑</strong>
            </td>
        </tr>
        <asp:Repeater ID="RepSystemModel" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td><%#Eval("FieldName")%></td>
          <td align="center"><%#Eval("FieldAlias")%></td>
          <td align="center"><%# Eval("FieldType", "{0}")%></td>
          <td align="center"><span style="color:#339900">系统</span></td>
          <td align="center"><%# GetStyleTrue(Eval("IsNotNull", "{0}"))%></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td align="center"></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
        <asp:Repeater ID="RepModelField" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td>
                        <%#Eval("IsShow", "{0}") == "False" ? "<font color=#999999>" :""%><%#Eval("FieldName")%><%#Eval("IsShow","{0}")=="False"?"</font>":"" %>
                    </td>
                    <td align="center">
                        <%#Eval("FieldAlias")%>
                    </td>
                    <td align="center">
                        <%# GetFieldType(Eval("FieldType", "{0}"))%>
                    </td>
                    <td align="center">
                        <%# Get_sum(Eval("Sys_type", "{0}")) ? "自定义" : "系统"%>
                    </td>
                    <td align="center">
                        <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                    </td>
                    <td align="center">
                        <%# GetStyleTrue(Eval("ShowList", "{0}"))%>
                    </td>
                    <td align="center">
                        <%# GetStyleTrue(Eval("IsCopy", "{0}"))%>
                    </td>
                    <td align="center">
                        <%# GetIslotsize(Eval("Islotsize", "{0}"))%>
                    </td>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("FieldID") %>' Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>上移 |</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("FieldID") %>' Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>下移</asp:LinkButton>
                    </td>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="IsPlay" CommandArgument='<%# Eval("FieldID") %>' Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>
                        <%# Eval("ShowList","{0}")=="True" ? "显示" : "不显示"%></asp:LinkButton>
                    </td>
                    <td align="center">
                        <a href="AddModelField.aspx?FieldID=<%# Eval("FieldID") %>&ModelID=<%# Eval("ModelID") %>&ModelType=<%=Request["ModelType"] %>">修改</a>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?\r\n\r\n删除后请更新相应字段输出配置以确保应用')" Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>| 删除</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div class="clearbox"></div>
    <table cellpadding="2" cellspacing="1" class="border" style="width: 100%">
        <tr class="tdbg">
            <td style="width: 30%">
                <asp:TextBox ID="TxtTemplate" CssClass="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                <input type="button" value="选择模板" class="C_input" style="width: 100px;" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" />
                <asp:Button ID="Button1" runat="server" CssClass="C_input" Style="width: 100px;" Text="设定模板" OnClick="SetTemplate" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>