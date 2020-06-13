<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_SelectMusic, App_Web_c4rklp3o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>音乐库管理</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
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

    function GotoWirte(rows) {
        //alert(rows);
        if (rows != null) {
            var rowsvalue = rows.toString();
            var mainright = window.top.main_right;
            if (rowsvalue.indexOf(',') > -1) {
                var rowsarr = rowsvalue.split(',');
                for (var i = 0; i < rowsarr.length; i++) {
                    var rowsarrtxt = rowsarr[i].toString();
                    //alert(rowsarrtxt);
                    if (rowsarrtxt.indexOf('$$') > -1) {
                        var rowar = rowsarrtxt.split('$$');
                        var option = document.createElement("option");
                        option.text = rowar[1]; option.value = rowar[1] + "||" + rowar[2];
                        mainright.document.getElementById("PanoramicViewList_music").add(option);
                    }
                }
            }
            else {
                if (rowsvalue.indexOf('$$') > -1) {
                    var rowar = rowsvalue.split('$$');
                    var option = document.createElement("option");
                    option.text = rowar[1]; option.value = rowar[1] + "||" + rowar[2];
                    mainright.document.getElementById("PanoramicViewList_music").add(option);
                }
            }

            var optionlen = mainright.document.getElementById("PanoramicViewList_music").options.length
            for (var sd = 0; sd < optionlen; sd++) {
                mainright.document.getElementById("PanoramicViewList_music").options[sd].selected = true;
            }
        }
        parent.Dialog.close();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
      <table width="100%" border="0" cellpadding="0" cellspacing="1">
        <tr>
          <td colspan="5" class="spacingtitle" align="center"> 音乐库管理 </td>
        </tr>
        <tr class="tdbgleft">
          <td class="tdbgleft" align="center" style="width: 10%"> ID </td>
          <td class="tdbgleft" align="center" style="width: 20%"> 音乐名称 </td>
          <td class="tdbgleft" align="center" style="width: 20%"> 是否启用 </td>
          <td class="tdbgleft" align="center" style="width: 20%"> 添加时间 </td>
          <td class="tdbgleft" align="center" style="width: 30%"> 选择 </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
            <tr class="tdbg" style="height:25px" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
              <td align="center"><%#Eval("ID") %></td>
              <td align="center"><a href="AddMusic.aspx?menu=edit&id=<%#Eval("ID") %>"> <%#Eval("MusicName")%></a></td>
              <td align="center"><%#Eval("IsTrue","{0}")=="1"?"<font color=green>启用</font>":"<font color=red>停用</font>"%></td>
              <td align="center"><%#Eval("AddTime")%></td>
              <td align="center"><input name="Item" type="checkbox" value="<%#Eval("id") %>$$<%#Eval("MusicName") %>$$<%#Eval("MusicUrl") %>"></td>
            </tr>
          </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
          <td height="22" colspan="8" align="center" class="tdbg"> 共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            个信息
            <asp:Label runat="server" Text="" ID="Toppage" />
            <asp:Label runat="server" Text="" ID="Nextpage" />
            <asp:Label runat="server" Text="" ID="Downpage" />
            <asp:Label runat="server" Text="" ID="Endpage" />
            页次：
            <asp:Label runat="server" Text="" ID="Nowpage" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页
            <asp:Label ID="pagess" runat="server" Text="" />
            条信息/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
            页 </td>
        </tr>
      </table>
      <div class="tdbg" style="text-align: right">
        <asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" Text="全选" />
        <asp:Button ID="Button2" runat="server" Text="确定" CssClass="C_input" OnClick="Button2_Click" />
        <asp:Button ID="Button1" runat="server" Text="取消" CssClass="C_input" OnClientClick="parent.Dialog.close();return false" />
      </div>
  </div>
</form>
</body>
</html>