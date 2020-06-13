<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_ViewPub, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员组模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
<script>
    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        parent.frames["main_right"].location = righturl;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
      <span>用户管理</span> <span>
      </div>
    <div class="clearbox">
    </div>
    <div class="us_seta" id="manageinfo" runat="server">
    <asp:HiddenField ID="HiddenPubRole" runat="server" />
        <asp:HiddenField ID="HdnModelID" runat="server" />
        <asp:HiddenField ID="HiddenTable" runat="server" />
        <asp:HiddenField ID="HdnModelName" runat="server" />
        <asp:HiddenField ID="HiddenGuang" runat="server" />
        <asp:HiddenField ID="Hiddenpagenum" runat="server" />
        <asp:HiddenField ID="HiddenPubid" runat="server" />
           <asp:HiddenField ID="HiddenUserID" runat="server" />
       <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="27%" class="title">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>标题</td>
        <td width="10%" class="title">参与人数</td>
      <td width="18%" class="title">添加时间</td>
        <td width="45%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("ID")%>'/></td>
        <td height="22" align="center"><%# Eval("ID")%></td>
         <td height="22" align="left">
          <a href="javascript:void();" onclick="javascript: window.open('ViewSmallPub.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%#Eval("ID") %>', 'newwindow', 'height=500, width=800, top=200, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no'); " >
         <%#returnlen(Eval("PubTitle"))%>
         </a>
         </td>
       <td height="22" align="center"><%#Eval("Pubnum")%>
        <td height="22" align="center" ><%#Eval("PubAddTime")%>
        <td height="22" align="center"> 
    <a href="javascript:void();" onclick="javascript: window.open('ViewSmallPub.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%#Eval("ID") %>', 'newwindow', 'height=500, width=800, top=200, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no'); " >相关信息与回复管理</a>&nbsp;<a  href="javascript:void();" onclick="javascript: window.open('AddPub.aspx?Pubid=<%#this.HiddenPubid.Value%>&Parentid=<%#Eval("ID") %>', 'newwindow', 'height=500, width=800, top=200, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');" >回复</a>&nbsp;<a href="PubView.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%#Eval("ID") %>" >查看</a>&nbsp;<%#showuse(DataBinder.Eval(Container.DataItem, "Pubstart").ToString(), Eval("ID").ToString())%>&nbsp;<a href="EditPub.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%#Eval("ID") %>" >修改</a>&nbsp;<a href=" Delpub.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%# Eval("ID")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
        </td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbgleft">
       共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
       <asp:Button ID="Button3" runat="server"  OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
                        Text="批量删除" onclick="Button3_Click" />
        <div>
        </div>
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
    //根据传入的checkbox的选中状态设置所有checkbox的选中状态
    function selectAll(obj) {
        var allInput = document.getElementsByTagName("input");
        //alert(allInput.length);
        var loopTime = allInput.length;
        for (i = 0; i < loopTime; i++) {
            //alert(allInput[i].type);
            if (allInput[i].type == "checkbox") {
                allInput[i].checked = obj.checked;
            }
        }
    }
    //判断是否选中记录，用户确认删除
    function judgeSelect() {
        var result = false;
        var allInput = document.getElementsByTagName("input");
        var loopTime = allInput.length;
        for (i = 0; i < loopTime; i++) {
            if (allInput[i].checked) {
                result = true;
                break;
            }
        }
        if (!result) {
            alert("请先选则要删除的记录！");
            return result;
        }
        result = confirm("你确认要删除选定的记录吗？");
        return result;
    }
    //判断是否选中记录，判断是否取消生成
    function IsCreateSelect() {
        var result = false;
        var allInput = document.getElementsByTagName("input");
        var loopTime = allInput.length;
        for (i = 0; i < loopTime; i++) {
            if (allInput[i].checked) {
                result = true;
                break;
            }
        }
        if (!result) {
            alert("请先选则要还原的记录！");
            return result;
        }
        result = confirm("你确认要还原选定的记录吗？");
        return result;
    } 
</script>
