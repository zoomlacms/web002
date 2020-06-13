<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_iServer_AddQuestionRecord, App_Web_isi4n0xy" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加问题</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="JavaScript" src="/js/zh-CN/attachment.js"></script>
    <script language="JavaScript">
        function fn_CheckLoginSearch(theForm) {
            if (!fn_CheckRequired(theForm.login, "登录账号"))
                return false;
            return true;
        }
        function fn_CheckSupportTicket(theForm) {
            if (theForm.source_type.options[theForm.source_type.selectedIndex].value == 'phone'
			  || theForm.source_type.options[theForm.source_type.selectedIndex].value == 'email') {
                if (!fn_CheckRequired(theForm.source, "电话或者E-mail"))
                    return false;
            }
            if (!fn_CheckRequired(theForm.title, "问题标题"))
                return false;
            if (!fn_CheckRequired(theForm.content, "问题内容"))
                return false;
            return true;
        }
    </script>
    
</head>
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<body>
    <form id="Form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span><asp:Literal ID="Literal1"
            runat="server" Text="有问必答"></asp:Literal></span> &gt;&gt; <span>添加问题</span>
    </div>
    <div class="clearbox">
    </div>
    
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border">
        <tr>
            <td colspan="2" class="title" align="center">
                <input type="hidden" name="module" value="manage_support_supportticketadd" />
                <input type="hidden" name="dosupportticketadd" value="" />
                <input type="hidden" name="dologinsearch" value="" />
                <input type="hidden" name="user_id" value="" />添加问题
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td width="120" class="tdbgleft">
                会员登录账号<font color="red">*</font>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="l_input" Text=""></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                状态<font color="red">*</font>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" CssClass="x_input" runat="server" AutoPostBack="true">
                    <asp:ListItem Selected="True" Value="未解决">未解决</asp:ListItem>
                    <asp:ListItem Value="处理中">处理中</asp:ListItem>
                    <asp:ListItem Value="已解决">已解决</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                优先级<font color="red">*</font>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="x_input" AutoPostBack="true">
                    <asp:ListItem Value="低">低</asp:ListItem>
                    <asp:ListItem Selected="True" Value="中">中</asp:ListItem>
                    <asp:ListItem Value="高">高</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" cssclass="x_input"
            onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                提交来源<font color="red">*</font>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true">
                    <asp:ListItem Selected="True" Value="电话">电话</asp:ListItem>
                    <asp:ListItem Value="E-mai">E-mail</asp:ListItem>
                    <asp:ListItem Value="网页表单">网页表单</asp:ListItem>
                    <asp:ListItem Value="直接面谈">直接面谈</asp:ListItem>
                    <asp:ListItem Value="其它">其它</asp:ListItem>
                </asp:DropDownList>
                输入电话号码、E-mail等：<asp:TextBox ID="txtRootInfo" CssClass="l_input" runat="server" Text=""
                    Width="252px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                问题类别<font color="red">*</font>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="x_input" AutoPostBack="true">
                    <asp:ListItem Selected="True" Value="其它">其它</asp:ListItem>
                    <asp:ListItem Value="咨询">咨询</asp:ListItem>
                    <asp:ListItem Value="投诉">投诉</asp:ListItem>
                    <asp:ListItem Value="建议">建议</asp:ListItem>
                    <asp:ListItem Value="要求">要求</asp:ListItem>
                    <asp:ListItem Value="界面使用">界面使用</asp:ListItem>
                    <asp:ListItem Value="bug报告">bug报告</asp:ListItem>
                    <asp:ListItem Value="订单">订单</asp:ListItem>
                    <asp:ListItem Value="财务">财务</asp:ListItem>
                    <asp:ListItem Value="域名">域名</asp:ListItem>
                    <asp:ListItem Value="主机">主机</asp:ListItem>
                    <asp:ListItem Value="邮局">邮局</asp:ListItem>
                    <asp:ListItem Value="DNS">DNS</asp:ListItem>
                    <asp:ListItem Value="MSSQL">MSSQL</asp:ListItem>
                    <asp:ListItem Value="MySQL">MySQL</asp:ListItem>
                    <asp:ListItem Value="IDC">IDC</asp:ListItem>
                    <asp:ListItem Value="网站推广">网站推广</asp:ListItem>
                    <asp:ListItem Value="网站制作">网站制作</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                问题标题<font color="red">*</font>
            </td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="l_input" Text="" Width="348px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                问题内容<font color="red">*</font>
            </td>
            <td>
            <script type="text/javascript">
                KE.show({
                    id: 'textarea1'
                });
                </script>
                <textarea rows="20" runat="server" id="textarea1" style="width:100%;height:300px;visibility:hidden;" ></textarea>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                附注（内部使用）
            </td>
            <td>
                <textarea class="x_input" name="comments" rows="6" cols="80"></textarea>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                附件
            </td>
            <td>
                只能上传<span id="filetype" runat="server"></span>类型的附件,单个附件小于 500KB
                <br />
                附件1:
                <asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;"
                    onpaste="return false" /><br />
                附件2:
                <asp:FileUpload ID="FileUpload2" runat="server" onkeydown="event.returnValue=false;"
                    onpaste="return false" /><br />
                附件3:
                <asp:FileUpload ID="FileUpload3" runat="server" onkeydown="event.returnValue=false;"
                    onpaste="return false" /><br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center; height:40px">
                <asp:LinkButton ID="LinkButton1" CssClass="C_input" runat="server" OnClick="LinkButton1_Click">添加</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" CssClass="C_input" runat="server">取消</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
