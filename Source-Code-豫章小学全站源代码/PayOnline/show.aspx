<script Language="C#" runat="server">
/**
 * @Description: 快钱人民币支付网关接口范例
 * @Copyright (c) 上海快钱信息服务有限公司
 * @version 2.0
 */

/*
在本文件中，商家应从数据库中，查询到订单的状态信息以及订单的处理结果。给出支付人响应的提示。

本范例采用最简单的模式，直接从receive页面获取支付状态提示给用户。
'*/
void Page_Load(Object sender, EventArgs E)
{
    //以下输出订单提示
    Lab_orderId.Text=Request["orderId"].ToString().Trim();
    Lab_orderAmount.Text=Request["orderAmount"].ToString().Trim();
    Lab_msg.Text=Request["msg"].ToString().Trim();
}
    
</script>
<!DOCTYPE HTML>
<html>
<head>
<title>快钱支付结果</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" >
</head>
<BODY>
<div align="center">
	<table width="259" border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC" >
		<tr bgcolor="#FFFFFF">
			<td style="height: 21px; width: 96px;">支付方式：</td>
			<td style="height: 21px" >快钱[99bill] </td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td style="width: 96px" >订单编号：</td>
			<td ><asp:label id="Lab_orderId" RunAt="Server"/></td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td style="width: 96px">订单金额：</td>
			<td><asp:label id="Lab_orderAmount" RunAt="Server"/>分</td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td style="width: 96px">支付结果：</td>
			<td><asp:label id="Lab_msg" RunAt="Server"/></td>
		</tr>
		<tr>
			<td style="width: 96px"></td>
			<td></td>
		</tr>
  </table>
</div>
</BODY>
</HTML>