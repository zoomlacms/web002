<%@ page language="C#" autoeventwireup="true" inherits="QMail_SubscribeMail, App_Web_xqac02je" enableEventValidation="false" viewStateEncryptionMode="Never" %>

function checkemail()
{
if ("" == document.form1.email.value) {
alert("请输入邮件地址")
document.form1.email.focus()
return false
}
var email = document.form1.email.value
var is_error = false
var pn_0 = email.indexOf("@")
var pn_1 = email.indexOf(".",pn_0)
var pn_2 = email.length
if (pn_0<1 || pn_1<pn_0+2 || pn_1+2>pn_2) is_error=true
if (is_error) {
alert("请输入正确的邮件地址")
document.form1.email.focus()
return false
}

}

document.write("<form id='form1' name='form1' method='post' action='QMail/SubscribeMail.aspx?type=<%=Request.QueryString["type"] %>' onsubmit='checkemail();'>");
document.write("  <input type='text' name='email' id='mail' />");
document.write("  <input type='submit' id='mailSubmit' name='Submit' value='订  阅' />");
document.write("<input type='hidden' name='up' value='true' />");
document.write("</form>");