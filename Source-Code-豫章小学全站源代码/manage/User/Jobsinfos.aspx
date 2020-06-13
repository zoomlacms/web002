<%@ page language="C#" autoeventwireup="true" inherits="manage_User_Jobsinfos, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员组模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
 table{
width:300px;
table-layout:fixed;
}
td{
width:100%;
word-break:keep-all;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis;/*显示省略标记(.....)*/

} 
</style>
<style type="text/css">
    .table-box { width: 100%; table-layout: fixed; text-align: center; }   
    .table-box .Col1 { width: 10%; }
    .table-box .Col2 { width: 80%; }
    .table-box .Col3 { width: 10%; }   
    .style1
    {
        width: 218px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt;<span><a href="JobsConfig.aspx">人才系统管理</a>&gt;&gt;</span>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    <div class="clearbox">
    </div>
    <div id="manageinfo" runat="server" class="border">
        <asp:HiddenField ID="HdnModelID" runat="server" />
        <asp:HiddenField ID="HdnModelName" runat="server" />
        <asp:HiddenField ID="HiddenPage" runat="server" />
        <asp:HiddenField ID="Hiddenpagenum" runat="server" />
        <table style="table-layout:fixed; width: 223px;"> 
        <asp:GridView  ID="Egv" runat="server"  AutoGenerateColumns="true" DataKeyNames="ID"
            Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无数据"
            OnPageIndexChanging="Egv_PageIndexChanging" OnRowDataBound="Egv_RowDataBound"  RowStyle-Width="20%" CssClass="table-box"  >  
            <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" Height="50px" />
            <FooterStyle BackColor="#DBF9D9" Font-Bold="True" ForeColor="red" Width="20%" />
            <RowStyle BackColor="#EBFCEA" Height="25px" Width="5%" />
            <EditRowStyle BackColor="#2461BF" Width="5%"  />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Width="1px" />
            <PagerStyle BackColor="#DBF9D9" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" CssClass="" Width="5%" />
            <AlternatingRowStyle BackColor="White" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
        </table>
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="全选" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:Button ID="btn_DeleteRecords" runat="server" OnClientClick="return judgeSelect();"
                Text="删除选中记录" OnClick="btn_DeleteRecords_Click" class="C_input" />
            <asp:Button ID="btn_edit" runat="server" Text="批量修改" OnClick="btn_edit_Click" class="C_input" />
            <asp:Button ID="Button1" runat="server" OnClientClick="return IsCreateSelect();"
                Text="取消生成" OnClick="btn_upIsCreate_Click" class="C_input" />
        </div>
        <div>
            共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
            页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                runat="server" Text=""></asp:Label>页
            <asp:TextBox ID="pagess" runat="server" Width="15" OnTextChanged="pagess_TextChanged"
                AutoPostBack="True" class="l_input"></asp:TextBox>个/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True">
                </asp:DropDownList>
            页</div>
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
            alert("请选则要还原记录！");
            return result;
        }
        result = confirm("确认要还原选定记录？");
        return result;
    } 
</script>