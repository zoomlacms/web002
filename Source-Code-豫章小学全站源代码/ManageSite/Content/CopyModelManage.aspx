<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_CopyModelManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>复制数据表单</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script language="javascript" type="text/javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>
</head>
<body>
<div class="column">
        <div class="columntitle">
       当前位置：功能导航 >> <a href="CopyModelManage.aspx">复制数据表单</a>
        </div>
    <form id="form2" runat="server">
    <table width="100%" border="0" cellpadding="1" cellspacing="2" align="center">
        <tbody>
            <tr align="center" style="height: 25px; background-color:#F0F6FC" >
            <%--<td width="5%" height="20" align="center">
           <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>--%>
                <td width="5%" height="20" align="center">
                    <strong>ID</strong>
                </td>
                <td width="5%" align="center">
                    <strong>图标</strong>
                </td>
                <td width="20%" align="center">
                    <strong>模型名称</strong>
                </td>
                <td width="15%" align="center">
                    <strong>表名</strong>
                </td>
                <td width="10%" align="center">
                    <strong>项目名称</strong>
                </td>
                <td width="20%" align="center">
                    <strong>模型描述</strong>
                </td>
                <td width="10%" align="center">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" DataMember="ModelID" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" align="center" >
                    <%--<td>
                    <input name="Item" type="checkbox" value='<%# Eval("ModelID")%>' />
                    </td>--%>
                        <td>
                            <strong>
                                <%# Eval("ModelID") %></strong>
                        </td>
                        <td>
                            <img src="<%# GetIcon(DataBinder.Eval(Container, "DataItem.ItemIcon", "{0}"))%>" style="border-width: 0px;" />
                        </td>
                        <td align="center">
                            <strong>
                                <%# Eval("ModelName")%></strong>
                        </td>
                        <td align="center">
                           <strong>
                                <%# Eval("TableName")%></strong> 
                        </td>
                        <td>
                            <strong>
                                <%# Eval("ItemName")%></strong>
                        </td>
                        <td align= "center" >
                            
                                <%# Eval("Description")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ModelID")%>'>复制</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <div style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
            background-repeat: repeat-x">
        </div>
    <%--    <div style="padding-left: 10px; text-align: left; height:26px;">
            <asp:Button ID="Button1" runat="server" Text="复 制" CssClass="button" 
                onclick="Button1_Click" />
        </div>--%>
    </form>
    </div>
</body>
</html>
