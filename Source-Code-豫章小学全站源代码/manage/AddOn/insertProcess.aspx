<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_InputProcess, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>导入流程</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
        <script>
            function onstr() {
                var mainright = window.top.main_right;
                if (mainright.frames["main_right_" + parent.nowWindow] != null) {
                    mainright.frames["main_right_" + parent.nowWindow].location.reload();
                } else {
                    mainright.frames["main_right_" + window.top.nowWindow].location.reload();
                }
                parent.Dialog.close();
            }

            function setvalue(objname,valuetxt) {
                //var mainright = window.top.main_right;
                //mainright.frames["main_right_" + parent.nowWindow].document.getElementById(objname).innerHTML += "<ul><li style='width:200px;height:30px;float:left'>流程：" + valuetxt + "</li><li style='width:70%;height:30px;float:left'>当前进度：<input type=\"hidden\" name=\"projectname\" value=\"" + valuetxt + "\"><input name=\"project\" id=\"project\" value=\"0\" class=\"l_input\" /> %</li></ul>"; //valuetxt;
                
                
                //document.getElementById("Projects").innerHTML;
                //alert(mainright.frames["main_right_" + parent.nowWindow].document.getElementById(objname).innerText);
            }
    </script>
    <script language="javascript">
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
    <form id="form1" runat="server">
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="center" colspan="3" class="title" width="100%">
                流 程 列 表
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center" class="tdbgleft" style="height: 24px; width: 5%; font-weight: bold">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />ID
            </td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                流程名称
            </td>
            
            <td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
                操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center" style="height: 24px;">
                        <input name="Item" type="checkbox" value='<%# Eval("WorkID")%>' /><%#Eval("WorkID")%>
                    </td>
                    <td align="center" style="height: 24px;">
                        <%#Eval("WorkName")%>
                    </td>
                    <td align="center" style="height: 24px;">
                        <a href="?menu=select&id=<%#Eval("WorkID") %>&projectID=<%=Request.QueryString["ProjectID"] %>">选择</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td align="center" class="tdbg" style="height: 24px;" colspan="3">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="批量导入" CssClass="C_input" 
        onclick="Button1_Click" />
    </form>
</body>
</html>
