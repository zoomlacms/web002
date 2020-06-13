<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddClass, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>添加组别</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="../Common/Common.js" type="text/javascript"></script>
    <script src="/JS/calendar.js" type="text/javascript"></script>
    <script src="/JS/RiQi.js" type="text/javascript"></script>
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
    <link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
    <script type="text/javascript" src="../../../JS/Dialog.js"></script>
    <script language="javascript">
        function Openwin() {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Width = 800;
            diag.Height = 450;
            diag.Title = "选择分类";
            diag.URL = "SelectCourse.aspx";
            diag.show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>
        &gt;&gt;<a href="AddClass.aspx">添加组别</a><span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加组别"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="学习组名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Regulationame" runat="server" class="l_input" Width="200px"></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label2" runat="server" Text="班级课程："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtCourse" runat="server" class="l_input" Width="250px" Enabled="false" ></asp:TextBox> 
                    <asp:HiddenField ID="hfid" runat="server"  />
                    <input id="Button1" type="button" value="选择课程" onclick="Openwin();void(0)" class="C_input" />
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label7" runat="server" Text="班级类别："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                     <asp:DropDownList ID="classtype" runat="server" CssClass="x_input"> </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label9" runat="server" Text="负责人："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Regulation" runat="server" class="l_input" Width="200px"></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="售价："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtShiPrice" runat="server" class="l_input" Width="200px" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13"
                        runat="server" ControlToValidate="txtShiPrice" ErrorMessage="售价格式不对!" ValidationExpression="\d+[.]?\d*"
                        Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="优惠价："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtLinkPrice" runat="server" class="l_input" Width="200px" ></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" ControlToValidate="txtLinkPrice" ErrorMessage="优惠价格式不对!" ValidationExpression="\d+[.]?\d*"
                        Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="课时："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtCoureTime" runat="server" class="l_input" Width="200px" ></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label6" runat="server" Text="订购此班级是否赠送此课程："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:RadioButtonList ID="rbl" runat="server">
                       <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                       <asp:ListItem Value="1">是</asp:ListItem>
                   </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Ratednumber_name" runat="server" Text="额定人数："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Ratednumber" runat="server" class="l_input" Width="100px"></asp:TextBox> 人
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label14" runat="server" Text="建立时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Setuptime" runat="server" class="l_input" Width="200px" onclick="calendar()"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label15" runat="server" Text="结束时间："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Endtime" runat="server" class="l_input" Width="200px" onclick="calendar()"></asp:TextBox>
                </td>
            </tr>
          
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加学习组" runat="server" onclick="EBtnSubmit_Click" 
                    />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" UseSubmitBehavior="False"
                    CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
