<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_BiServerInfo, App_Web_isi4n0xy" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>问题详情</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="JavaScript" src="/js/zh-CN/attachment.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript" src="/JS/jquery.js"></script>
<script language="JavaScript">
    function fn_CheckSupportTicket(theForm) {
        if (!fn_CheckRequired(theForm.content, "回复内容"))
            return false;
        return true;
    }
    function opentitle(url, title) {
        var diag = new Dialog();
        diag.Width = 600;
        diag.Height = 400;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }
</script>
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
 <div class="r_navigation">后台管理&gt;&gt;<a href="BiServer.aspx">有问必答</a>&gt;&gt;<span>问题详情</div>
    <form id="frm_supportticket" runat="server" style="text-align:center;">
        <asp:Label ID="lblQuestionId" runat="server" Text="" Visible="false"></asp:Label>	
        	<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;text-align:left;">
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">会员登录账号</td>
					<td>
                    <a></a>
                    <span id="lblUserName" runat="server"></span>
                    <asp:HiddenField ID="hfusername" runat="server" />
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">状态<font color="red">*</font></td>
					<td>
                           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
                                <asp:ListItem Value="未解决">未解决</asp:ListItem>
                                <asp:ListItem  Value="处理中">处理中</asp:ListItem>
                                <asp:ListItem Value="已解决">已解决</asp:ListItem>
                                <asp:ListItem Value="已锁定">已锁定</asp:ListItem>
                            </asp:DropDownList>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">优先级<font color="red">*</font></td>
			        <td>
                         <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
                                <asp:ListItem Value="低">低</asp:ListItem>
                                <asp:ListItem Value="中">中</asp:ListItem>
                                <asp:ListItem Value="高">高</asp:ListItem>
                            </asp:DropDownList>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">提交来源<font color="red">*</font></td>
					<td>
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true">
                                <asp:ListItem Value="电话">电话</asp:ListItem>
                                <asp:ListItem  Value="E-mai">E-mail</asp:ListItem>
                                <asp:ListItem Value="网页表单">网页表单</asp:ListItem>
                                <asp:ListItem Value="直接面谈">直接面谈</asp:ListItem>
                                <asp:ListItem Value="其它">其它</asp:ListItem>
                            </asp:DropDownList>  
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">问题类别<font color="red">*</font></td>
					<td>
					<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true">
                        <asp:ListItem Value="其它">其它</asp:ListItem>
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
					<td class="tdbgleft">提交时间</td>
					<td>
				    <asp:Label ID="lblSubTime" runat="server" Text=""></asp:Label>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">已读次数</td>
					<td>
					<asp:Label ID="lblReadCount" runat="server" Text=""></asp:Label>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">解决时间</td>
					<td>
					<asp:Label ID="lblSolveTime" runat="server" Text=""></asp:Label>
					</td>
				</tr>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td class="tdbgleft">附注（内部使用）</td>
					<td><textarea class="solidinput" class="l_input" name="comments" rows="4" cols="40"></textarea></td>
				</tr> 
			</table>
			<p><asp:Button ID="Button2" runat="server" Text="更新" CssClass="C_input" onclick="Button2_Click" /></p>


		<table width="100%" class="border" cellspacing="0" cellpadding="0" style="margin-top:10px;text-align:left;"">
			<tr>
				<td colspan="2" class="title" >最近的 5 条处理日志 </td>
		    </tr>
		    
			<tr>
				<td class="tdbgleft" width="200px"><asp:Label ID="lblSubTime_V" runat="server" Text=""></asp:Label></td>
			    <td class="tdbgleft"><asp:Label ID="lblUserName_V" runat="server" Text=""></asp:Label>提交了新问题</td>
			</tr>
			
		</table>
		<table width="100%" class="border" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;text-align:left;"">
		    <tr>
		    <td class="title" >对话详情</td>
		    </tr>								    
			<tr>
				<td class="tdbgleft"><asp:Label ID="lblSubTime_R" runat="server" Text=""></asp:Label> 来自:<asp:Label ID="lblName" runat="server" Text=""></asp:Label> </td>
			</tr>
			<tr>
				<td class="tdbgleft"><b>标题:<asp:Label ID="lblTitle_R" runat="server" Text=""></asp:Label></b> [<a href="#reply">回复</a>] [<a href="#top">返回页首</a>]</td>
			</tr>
			<tr>
				<td class="tdbgleft"> <asp:Label ID="lblConent" runat="server" Text=""></asp:Label> <br /></td>
			</tr>
            <tr>
				<td class="tdbgleft"><span id="spDIv" runat="server"></span><br /></td>
			</tr>		
		</table>		
		 <asp:Repeater ID="resultsRepeater" runat="server">
                <HeaderTemplate>
                    <table width="100%" cellpadding="4" class="border" cellspacing="0" style="margin-top:10px;text-align:left;"">
                    <tr>
                    <td class="title">回复记录</td>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="tdbgmouseover"><asp:Label ID="lblSubTime_R" runat="server" Text='<%# Eval("ReplyTime")%>'></asp:Label> 来自:<asp:Label ID="lblName" runat="server" Text='<%# GetUserName(Eval("UserId","{0}"))%>'></asp:Label></td>
                    </tr>
                    <tr>
				    <td class="tdbg" > [<a href="#reply">回复</a>] [<a href="#top">返回页首</a>]</td>
			        </tr>
			        <tr>
				    <td class="tdbg" style="border:#CCC 1px solid;"> <asp:Label ID="lblConent" runat="server" Text='<%# Eval("Content")%>'></asp:Label> <br /></td>
			        </tr>	
                    <tr><td class="tdbg"> <%#GetFile(Eval("path", "{0}"),Eval("questionId","{0}"))%></td></tr>
                </ItemTemplate>
                <FooterTemplate>
                </table>
                </FooterTemplate>
            </asp:Repeater>
		<table width="100%" class="border" cellspacing="0" cellpadding="0" style="margin-top:10px;text-align:left;"">
		    <tr>
		    <td colspan="2" class="title"><b>回复对话</b></td>
		    </tr>
			<tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td width="120">标题</td>
				<td><input type="text" name="title" runat="server" id="txtTitle" size="40" maxlength="100" class="l_input" value="" /></td>
			</tr>
			 <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
                <td class="tdbgleft">内容<font color="red">*</font></td>
                <td>
                <textarea runat="server" id="textarea1" style="width:100%;height:300px;visibility:hidden;" ></textarea>

                <script type="text/javascript">
                    KE.show({
                        id: 'textarea1'
                    });
                </script>


                </td>
            </tr>
			<tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			    <td>附件</td>
				<td>只能上传<span id="sptype" runat="server"></span>类型的附件,单个附件小于 500KB <br />
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
               <tr class="tdbg">
                <td>E-mail回复</td>
                <td>
                    <asp:CheckBox ID="IsEmail" Checked="true" runat="server" />
                    <%--<input type="checkbox" id="chkUser" name="chkUser" runat="server" checked="true"  onclick="showEmail(this)" />--%>
                      <span   id="IsEmailcont">是否发送邮件回复给：<input  type="text"   runat="server" id="UserEmail" name="reply_to" value="" /></span></td>
            </tr>

		</table>
		<%--：<input  type="text" visible="false" runat="server" id="UserEmail" name="reply_to" value="" />--%>
				<input type="hidden" name="greeting_name" value=""/>
            <asp:Button ID="Button1" runat="server" Text="确认" CssClass="C_input" onclick="Button1_Click"  /> 
            <br />
            <br />
            <br />
            <br />
</form>
</body>
</html>