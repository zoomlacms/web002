<%@ page language="C#" autoeventwireup="true" inherits="manage_User_JobsRecycler, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员组模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;人才系统管理回收站&gt;&gt;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
<div class="r_navigation"> &nbsp;&nbsp;&nbsp;&nbsp;<span><a href="JobsRecycler.aspx?modeid=qiye">招聘企业</a></span> &nbsp;&nbsp;&nbsp;&nbsp;<span><a href="JobsRecycler.aspx?modeid=zhappin">职位信息</a></span> &nbsp;&nbsp;&nbsp;&nbsp;<span><a href="JobsRecycler.aspx?modeid=geren">用户简历</a></span> </div>
  <div class="us_seta"  id="manageinfo" runat ="server">
    <asp:HiddenField ID="HdnModelID" runat="server" />
    <asp:HiddenField ID="HdnModelName" runat="server" />
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID"  Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无数据" OnPageIndexChanging="Egv_PageIndexChanging" OnRowDataBound="Egv_RowDataBound">
      <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
      <FooterStyle BackColor="#DBF9D9" Font-Bold="True" ForeColor="White" />
      <RowStyle BackColor="#EBFCEA" Height="25px" />
      <EditRowStyle BackColor="#2461BF" />
      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      <PagerStyle BackColor="#DBF9D9" ForeColor="#333333" HorizontalAlign="Center" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <AlternatingRowStyle BackColor="White" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <div>
      <asp:CheckBox ID="CheckBox1" runat="server" Text="全选" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
      <asp:Button ID="btn_DeleteRecords" runat="server" OnClientClick="return judgeSelect();" Text="删除选中记录" OnClick="btn_DeleteRecords_Click" class="C_input"/>
      <asp:Button ID="btn_ResumeRecords" runat="server" OnClientClick="return judgeSelect();" Text="还原选中记录" OnClick="btn_ResumeRecords_Click" class="C_input"/>
      <asp:Button ID="Button1" runat="server"  Text="还原所有" onclick="Button1_Click" class="C_input"/>
      <asp:Button ID="Button2" runat="server" OnClientClick="return judgeSelect();" Text="删除所有" onclick="Button2_Click"  class="C_input"/>
    </div>
  </div>
</form>
</body>
</html>
<script type="text/javascript">
//根据传入的checkbox的选中状态设置所有checkbox的选中状态
    function selectAll(obj)
    {
        var allInput = document.getElementsByTagName("input");
        //alert(allInput.length);
        var loopTime = allInput.length;
        for(i = 0;i < loopTime;i++)
        {
            //alert(allInput[i].type);
            if(allInput[i].type == "checkbox")
            {
                allInput[i].checked = obj.checked;
            }
        }
    }
    //判断是否选中记录，用户确认删除
    function judgeSelect()
    {
    var result = false;
    var allInput = document.getElementsByTagName("input");
    var loopTime = allInput.length;
    for(i = 0;i < loopTime;i++)
    {
        if(allInput[i].checked)
        {
            result = true;
            break;
        }
    }
    if(!result)
    {
        alert("请先选则要删除的记录！");
        return result;
    }
    result = confirm("你确认要删除选定的记录吗？");
    return result;
    } 

</script>