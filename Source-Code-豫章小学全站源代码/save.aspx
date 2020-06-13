<%@ page language="C#" autoeventwireup="true" inherits="save, App_Web_m53mud2n" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html><html><head><title></title></head><body></body></html>
<%--调用方法:
<form action="http://win100:85/save.aspx" method="post">        
<input runat="server" type="text" name="NodeID" value="78" /> 
<input runat="server" type="text" name="ModelID" value="2" /> 
<textarea name="Content">文本内容</textarea> 
<input runat="server" type="text" name="Title" value="标题" /> 
<input runat="server" type="text" name="Url" value="/default.aspx" />   
<input type="submit" value="提 交">  
</form>
--%>

<!--参数：
Url:
    外链格式 如 http://www.baidu.com
    内链格式 如 /manage/default.aspx
GeneralID:
    为0或空时表示添加
    大于0时表示修改
-->