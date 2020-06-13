<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_AddProduct, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加商品</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/JavaScript">
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6");
        var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6");
        function ShowTabs(ID) {
            if (ID != tID) {
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
                document.getElementById(arrTabs[ID].toString()).style.display = "";
                tID = ID;
            }
        }

        function deleteRow(tableID, rowIndex, rowsid) {

            var ccd = confirm('你确定将此绑定的商品删除吗？');
            if (ccd) {
                var table = document.all[tableID]
                var bindstr = "," + document.getElementById("Hiddenbind").value + ",";
                rowsid = "," + rowsid + ",";
                var reg = new RegExp(rowsid, "g")
                bindstr = bindstr.replace(reg, ",");
                reg = new RegExp(",,", "g")
                bindstr = bindstr.replace(reg, ",");
                document.getElementById("Hiddenbind").value = bindstr;
                table.deleteRow(rowIndex);
                document.getElementById("Hiddenbind").value = document.getElementById("Hiddenbind").value.replace(reg, ",");
                if (document.getElementById("Hiddenbind").value == "" || document.getElementById("Hiddenbind").value == ",") {
                    document.getElementById("Span1").innerHTML = "";
                    document.getElementById("Hiddenbind").value = "";
                }
            }
        }

        function CheckAll(spanChk)//CheckBox全选
        {
            var oItem = spanChk.children;
            var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
            xState = theBox.checked;
            elm = theBox.form.elements;
            for (i = 0; i < elm.length; i++)
                if (elm[i].type == "checkbox" && elm[i].id != theBox.id && elm[i].id.indexOf("Item", false) > -1) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
        }

        function SelectProducer() {
            window.open('Producerlist.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');
        }

        function OpenSelect() {

            window.open('AddbindPro.aspx?id=<%=Request.QueryString["ID"] %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
            return false;
        }

        function ProductsSelect(act) {
            window.open('ProductsSelect.aspx?act=' + act, '', 'width=600,height=450,resizable=0,scrollbars=yes');
        }



        function OpenprojectSelect() {

            window.open('projectSelect.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');
            return false;
        }

        function ClearSelect() {
            document.getElementById("Span1").innerHTML = "";
            document.getElementById("Hiddenbind").value = "";
        }

        function SelectBrand() {
            window.open('Brandlist.aspx?producer=' + document.getElementById('Producer').value + '', '', 'width=600,height=450,resizable=0,scrollbars=yes');

        }

        function SetDisabled(checked) {
            document.getElementById('ProCode').disabled = checked;
        }


        function show(checked) {
            if (checked.value == 1) {
                document.getElementById("pifaji").style.display = "";
            }
            else {
                document.getElementById("pifaji").style.display = "none";
            }
        }

        function showpf() {
            if (document.getElementById("Wholesales_0").checked == true) {
                document.getElementById("pifaji").style.display = "";
            } else {
                document.getElementById("pifaji").style.display = "none";
            }
        }

        function Clearoption() {
            var hiddenidvalue = document.getElementById("OtherProject"); //获取已经存在的ID值

            for (var i = hiddenidvalue.options.length - 1; i >= 0; i--) {
                if (hiddenidvalue[i].selected == true) {
                    hiddenidvalue[i] = null;
                }
            }

        }

    </script>
</head>
<body onload="showpf();">
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&gt;&gt; <span>商城管理</span>&gt;&gt; <span><a href="ProductManage.aspx">商品管理</a></span>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        &gt;&gt;
        <asp:Label ID="topmenu" runat="server" Text="添加商品"></asp:Label></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                基本信息
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                介绍及图片
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                其他信息
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                价格设置
            </td>
            <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)">
                促销设置
            </td>
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5)">
                商品属性
            </td>
            <td id="TabTitle6" class="tabtitle" onclick="ShowTabs(6)">
                其他设置
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <tbody id="Tabs0">
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td width="20%" class="tdbgleft">
                                <strong>所属节点：</strong></td>
                          <td>
                              <asp:Label ID="nodename" runat="server"></asp:Label>
                              <asp:HiddenField ID="HdnNode" runat="server" />                          
                              <asp:HiddenField ID="HdnModel" runat="server" />
                              <asp:HiddenField ID="ClickType" runat="server" />
                              <asp:HiddenField ID="ID" runat="server" Value="0" />                          
                              <asp:HiddenField ID="I_tem" runat="server" />
                              <asp:HiddenField ID="ComModelID" runat="server" />
                              <asp:HiddenField ID="Hiddenbind" runat="server" />
                               <asp:HiddenField ID="HiddenFieldUser" runat="server" />
                          </td>
                      </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>所属专题：</strong></td>
                          <td>
                                <asp:HiddenField ID="HdnSpec" runat="server" />
                              <asp:Label ID="Categoryname" runat="server"></asp:Label>
                              <div ID="lblSpec" runat="server"></div>
                              <input type="button" id="Button1" value="添加到专题" onclick="AddToSpecial()" class="C_input"/>
                              <asp:HiddenField ID="Categoryid" runat="server" />&nbsp;                          </td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>商品编号：</strong>                            </td>
                          <td style="width: 592px; height: 26px;"><asp:TextBox ID="ProCode" class="l_input" runat="server" disabled="disabled" Width="155px" />
                            <asp:CheckBox ID="CheckBox1" Text="自动编号" onclick="SetDisabled(this.checked)" runat="server" Checked="True" />
                             </td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>捆绑销售：</strong>                            </td>
                          <td style="height: 26px;">
                              <asp:Button ID="Button3" runat="server" Text="添加捆绑商品" OnClientClick="OpenSelect();return false;" class="C_input" />
                              <asp:Button ID="Button4" runat="server" Text="清空捆绑列表" OnClientClick="ClearSelect();return false;" class="C_input"/><br />
<span runat="server" id="Span1"></span>

                          </td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>自选数量：</strong>                          </td>
                          <td><asp:TextBox ID="Propeid" class="l_input" runat="server" Text="0" Width="51px" />
                              <font color=red>(0为不允许自选购买;如果捆绑商品为空,则此数值为无效)</font></td>
                        </tr>
                        
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>条形码：</strong>                          </td>
                          <td><asp:TextBox ID="BarCode" class="l_input" runat="server" Width="155px" /></td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品名称：</strong></td>
                            <td><asp:TextBox ID="Proname" class="l_input" runat="server" Width="442px" />
                              <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                  ControlToValidate="Proname" Display="Dynamic" ErrorMessage="商品名称不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></span></td>
                      </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>关键字：</strong>                                </td>
                            <td><asp:TextBox ID="Kayword" class="l_input" runat="server" Width="155px" /></td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品单位：</strong>                                </td>
                            <td><asp:TextBox ID="ProUnit" class="l_input" runat="server" Width="155px" />
                              <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                  ControlToValidate="ProUnit" Display="Dynamic" ErrorMessage="商品单位不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                              </span></td>
                      </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品重量：</strong></td>
                            <td><asp:TextBox ID="Weight" class="l_input" runat="server" Width="91px" />
                            千克（Kg）<asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                    ControlToValidate="Weight" ErrorMessage="商品重量必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                        </tr>
                   
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>服务期限：</strong></td>
                            <td style="height: 26px"><asp:TextBox ID="ServerPeriod" class="l_input" runat="server" Width="53px" />
                            <asp:DropDownList ID="ServerType" runat="server">
                              <asp:ListItem Selected="True" Value="3">年</asp:ListItem>
                              <asp:ListItem Value="2">月</asp:ListItem>
                              <asp:ListItem Value="1">日</asp:ListItem>
                            </asp:DropDownList>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                                    ControlToValidate="ServerPeriod" ErrorMessage="服务期限必须是数字!" ValidationExpression="^\d+$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品类型：</strong></td>
                            <td><asp:RadioButtonList ID="ProClass" runat="server" RepeatDirection="Horizontal" Width="179px">
                              <asp:ListItem Selected="True" Value="1">正常销售</asp:ListItem>
                              <asp:ListItem Value="2">特价处理</asp:ListItem>
</asp:RadioButtonList></td>
                      </tr>
                                              <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>属性设置：</strong></td>
                            <td>
                                <asp:CheckBox ID="istrue" runat="server" Text="审核通过" Checked="True" />
                                <asp:CheckBox ID="isnew" runat="server" Text="新品" />
                                <asp:CheckBox ID="ishot" runat="server" Text="热销" />
                                <asp:CheckBox ID="isbest" runat="server" Text="精品" /></td>
                      </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>销售状态：</strong></td>
                            <td><asp:CheckBox ID="Sales" Text="打勾表示销售中，否则为停售状态" runat="server" /></td>
                      </tr>
                         </tbody>
                    <tbody id="Tabs1" style="display: none">        
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品简介：</strong></td>
                          <td>用于首页及栏目页显示，不要超过255个字符<br />
                              <asp:TextBox ID="Proinfo" class="l_input" runat="server" Height="60px" 
                                  TextMode="MultiLine" Width="500px" /></td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>详细介绍：                   <strong>详细介绍：</strong></td>
                          <td style="height: 24px; width: 592px;">
                              <asp:HiddenField ID="Procontent" runat="server" /><iframe id="infoeditor" src="../../editor/fckeditor_1.html?InstanceName=Procontent&Toolbar=Default" width="580px" height="150px" frameborder="no" scrolling="no"></iframe>                          </td>
                        </tr>
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>商品清晰图：</strong></td>
                          <td><asp:TextBox ID="Clearimg" class="l_input" runat="server" Width="300px" /><iframe id="bigimgs" style="top:2px" src="../shop/fileupload.aspx?menu=Clearimg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                              </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="addsmallimg">
                            <td class="tdbgleft" width="20%">
                                <strong>商品缩略图：</strong></td>
                          <td><asp:TextBox ID="Thumbnails" class="l_input" runat="server" Width="300px" /><iframe id="smallimgs" style="top:2px" src="../shop/fileupload.aspx?menu=Thumbnails" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                              </td>
                        </tr>     
                    </tbody>
                    <tbody id="Tabs2" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>生 产 商：</strong></td>
                            <td>
                                <asp:TextBox ID="Producer" class="l_input" runat="server" Width="214px"></asp:TextBox>
                                【<a href="###" onclick="SelectProducer();">请选择</a>】</td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>品牌/商标：</strong></td>
                            <td>
                                <asp:TextBox ID="Brand" class="l_input" runat="server" Width="214px"></asp:TextBox>
                                【<a href="###" onclick="SelectBrand();">请选择</a>】</td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>缺货时允许购买:</strong></td>
                            <td>
                                <asp:CheckBox ID="Allowed" runat="server" Text="打勾表示缺货时允许购买， 否则缺货时不允许购买" /></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>限购数量:</strong></td>
                            <td><asp:TextBox ID="Quota" class="l_input" runat="server" Width="100px" >-1</asp:TextBox>
                                -1为不限制数量 0为不允许购买
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Quota"
                                    ErrorMessage="限购数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>最低购买数量:</strong></td>
                            <td><asp:TextBox ID="DownQuota" class="l_input" runat="server" Width="100px" >-1</asp:TextBox>
                                -1为不限制数量 0为不允许购买
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="DownQuota"
                                    ErrorMessage="最低购买数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 24px">
                                <strong>库存数量:</strong></td>
                            <td style="height: 24px"><asp:TextBox ID="Stock" class="l_input" runat="server" Width="100px" >10</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Stock"
                                    ErrorMessage="库存数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" style="height: 24px">
                                <strong>库存报警下限:</strong></td>
                            <td style="height: 24px; width: 592px;"><asp:TextBox ID="StockDown" class="l_input" runat="server" Width="100px" >1</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="StockDown"
                                    ErrorMessage="库存报警下限必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>前台库存计算方式:</strong></td>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="25%"><asp:RadioButtonList ID="JisuanFs" runat="server" RepeatDirection="Horizontal">
                                      <asp:ListItem Selected="True" Value="0">实际库存</asp:ListItem>
                                      <asp:ListItem Value="1">虚拟库存</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                    <td width="89%">（实际库存－已订购数） </td>
                                  </tr>
                                </table>                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>税率设置:</strong></td>
                            <td>
                                <asp:RadioButtonList ID="Rateset" runat="server">
                                    <asp:ListItem Selected="True" Value="1">含税，不开发票时有税率优惠 </asp:ListItem>
                                    <asp:ListItem Value="2">含税，不开发票时没有税率优惠</asp:ListItem>
                                    <asp:ListItem Value="3">不含税，开发票时需要加收税费</asp:ListItem>
                                    <asp:ListItem Value="4">不含税，开发票时不需要加收税费</asp:ListItem>
                                </asp:RadioButtonList></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品税率:</strong></td>
                            <td><asp:TextBox ID="Rate" class="l_input" runat="server" Text="0" />
                                %
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                    ControlToValidate="Rate" ErrorMessage="商品税率必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>商品推荐等级:</strong></td>
                            <td>
                                <asp:DropDownList ID="Dengji" runat="server">
                                    <asp:ListItem Value="5">★★★★★</asp:ListItem>
                                    <asp:ListItem Value="4">★★★★</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="3">★★★</asp:ListItem>
                                    <asp:ListItem Value="2">★★</asp:ListItem>
                                    <asp:ListItem Value="1">★</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs3" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>市场参考价：</strong></td>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr >
                                <td style="width: 23%; height: 21px;"><asp:TextBox ID="ShiPrice"  class="l_input" runat="server" Width="93px" />                                
元 <font color=red>*</font></td>
                                <td width="76%" style="height: 21px">
                                    购买时参考的市场零售价，可以比当前零售价高。<asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                        ControlToValidate="ShiPrice" ErrorMessage="市场价格格式不对!" ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                        runat="server" ControlToValidate="ShiPrice" ErrorMessage="市场价不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                              </tr>
                            </table></td>
                      </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>当前零售价：</strong></td>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style="width: 23%; height: 20px;"><asp:TextBox ID="LinPrice" class="l_input" runat="server" Width="93px" />                                
元 <font color=red>*</font></td>
                                <td width="78%" style="height: 20px">商店销售此商品时的价格。<asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                                        ControlToValidate="LinPrice" ErrorMessage="零售价格式不对!" ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                        ControlToValidate="LinPrice" ErrorMessage="零售价不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                              </tr>
                            </table></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>打折优惠率:</strong></td>
                            <td><asp:TextBox ID="txtRecommend" class="l_input" runat="server" Text="0" Width="93px" />
                                %
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ControlToValidate="txtRecommend" ErrorMessage="优惠率必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>允许批发：</strong></td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td>
                                <asp:RadioButtonList ID="Wholesales" runat="server" RepeatDirection="Horizontal"
                                    Width="106px">
                                    <asp:ListItem Value="1" onclick="show(this);">是</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="0" onclick="show(this);">否</asp:ListItem>
                                </asp:RadioButtonList>                                </td>
                                  </tr>
                                  <tr id="pifaji" style="display:none">
                                  <td>
                                  <table  width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td style="height: 24px">① 一次性购买此商品数量满
                                    <asp:TextBox ID="s1" class="l_input" runat="server" Text='10' Width="49px" />
                                    时，批发价为
                                    <asp:TextBox ID="j1" runat="server" class="l_input" Width="68px" >0</asp:TextBox>
                                    元</td>
                                  </tr>
                                  <tr>
                                    <td height="24">② 一次性购买此商品数量满
                                      <asp:TextBox ID="s2"  class="l_input" runat="server" Text='50' Width="49px" />                                      
时，批发价为
<asp:TextBox ID="j2" class="l_input" runat="server" Width="68px" >0</asp:TextBox>
元</td>
                                  </tr>
                                  <tr>
                                    <td height="24">③ 一次性购买此商品数量满
                                      <asp:TextBox ID="s3" class="l_input" runat="server" Text='100' Width="49px" />                                      
时，批发价为
<asp:TextBox ID="j3" class="l_input" runat="server" Width="68px" >0</asp:TextBox>
元</td>
                                  </tr>
                                  </table>
                                  </td>
                                  </tr>
                                </table>                              </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>允许单独销售：</strong></td>
                            <td>
                                <asp:RadioButtonList ID="Wholesaleone" runat="server" RepeatDirection="Horizontal"
                                    Width="106px">
                                    <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0">否</asp:ListItem>
                                </asp:RadioButtonList></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>设置为礼品：</strong></td>
                            <td>
                                <div style="float:left"><asp:RadioButtonList ID="Largess" runat="server" RepeatDirection="Horizontal"
                                    Width="106px">
                                    <asp:ListItem Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                                </asp:RadioButtonList></div><div style="float:left; width:auto">　<font color=red>(自选数量大于0时设为礼品无效)</font></div></td>
                        </tr> 
                               <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>礼品价格：</strong></td>
                            <td>
                                <asp:TextBox ID="Largesspirx" class="l_input" runat="server" Width="91px">0</asp:TextBox>
                                元　<font color=red>设置为礼品且允许单独销售时的价格</font></td>
                        </tr>          
                    </tbody>
                    <tbody id="Tabs4" style="display: none">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>促销方案：</strong></td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td rowspan="7" style="width: 2%"><asp:RadioButtonList ID="ProjectType" runat="server" Width="39px">
                                    <asp:ListItem value="1" Selected="True"></asp:ListItem>
                                    <asp:ListItem value="2"></asp:ListItem>
                                    <asp:ListItem value="3"></asp:ListItem>
                                    <asp:ListItem value="4"></asp:ListItem>
                                    <asp:ListItem value="5"></asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
</asp:RadioButtonList></td>
                                  <td width="96%" height="22">&nbsp;不促销</td>
                                </tr>
                                <tr>
                                  <td height="22">&nbsp;买&nbsp;<asp:TextBox ID="ProjectPronum2" class="l_input" Text="1" runat="server" Width="26px"></asp:TextBox>
                                      件此商品 可以送一件同样商品
                                  </td>
                                </tr>
                                <tr>
                                  <td style="height: 22px">&nbsp;买&nbsp;<asp:TextBox Text="1" ID="ProjectPronum3" class="l_input" runat="server" Width="26px"></asp:TextBox>
                                      件此商品 可以送一件其他商品 赠品名称：<asp:TextBox ID="Productsname3" class="l_input" runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname1');"></asp:TextBox>
                                      <asp:Button ID="Button6" runat="server" Text="浏览..." OnClientClick="ProductsSelect('3');return false;" class="C_input"/>
                                      <asp:HiddenField ID="HiddenField3" runat="server" />
                                                                      </td>
                                </tr>
                                <tr>
                                  <td height="22">&nbsp;送&nbsp;<asp:TextBox ID="ProjectPronum4" class="l_input" runat="server" Text="1" Width="26px"></asp:TextBox>
                                      件同样商品
                                  </td>
                                </tr>
                                <tr>
                                  <td style="height: 22px">&nbsp;送&nbsp;<asp:TextBox ID="ProjectPronum5" class="l_input" runat="server" Text="1" Width="26px"></asp:TextBox>
                                      件其他商品 送一件赠品名称：<asp:TextBox ID="Productsname5" class="l_input" runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname2');"></asp:TextBox>
                                      <asp:Button ID="Button7" runat="server" Text="浏览..." OnClientClick="ProductsSelect('5');return false;" class="C_input"/>
                                      <asp:HiddenField ID="HiddenField5" runat="server" />
                                                                        </td>
                                </tr>
								<tr>
                                  <td height="22">&nbsp;加&nbsp;<asp:TextBox ID="ProjectMoney6" class="l_input" runat="server" Text="1" Width="26px"></asp:TextBox>
                                      元钱送商品 送一件赠品名称：<asp:TextBox ID="Productsname6" class="l_input" runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname3');"></asp:TextBox>
                                      <asp:Button ID="Button8" runat="server" Text="浏览..." OnClientClick="ProductsSelect('6');return false;" class="C_input"/>
                                      <asp:HiddenField ID="HiddenField6" runat="server" />
                                                                       </td>
                                </tr>
                                <tr>
                                  <td height="22">&nbsp;满&nbsp;<asp:TextBox ID="ProjectMoney7" class="l_input" runat="server" Text="1" Width="26px"></asp:TextBox>
                                      元钱送商品 送一件赠品名称：<asp:TextBox ID="Productsname7" class="l_input" runat="server" ReadOnly="true" onclick="ProductsSelect('Productsname4');"></asp:TextBox>
                                      <asp:Button class="C_input" ID="Button5" runat="server" Text="浏览..." OnClientClick="ProductsSelect('7');return false;" />
                                      <asp:HiddenField ID="HiddenField7" runat="server" />
                                                                       </td>
                                </tr>
                              </table></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 19px">
                                <strong>其他促销方案：</strong></td>
                            <td style="height: 19px">
                                <asp:Button ID="Button9" runat="server" Text="绑定其他促销方案" Width="261px" OnClientClick="OpenprojectSelect();return false;" class="C_input" /><br />
                                <asp:ListBox ID="OtherProject" runat="server" Height="127px" Width="261px" SelectionMode="Multiple"></asp:ListBox><br />
                                <asp:Button ID="Button10" runat="server" Text="删除选中方案" class="C_input" Width="260px" OnClientClick="Clearoption();return false;" />
                                <br />
                                <font color="red"><b>选中状态</b></font><font color="green">的方案将被更新</font> 支持<b>Ctrl</b>或<b>Shift</b>键多选</td>
                        </tr> 
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>购物积分：</strong></td>
                            <td>
                                购买&nbsp;<asp:TextBox ID="IntegralNum" class="l_input" runat="server" Text="1" Width="26px"></asp:TextBox>&nbsp;件此商品可以得到
                                <asp:TextBox ID="Integral" class="l_input" runat="server" Width="53px" />
                                积分
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
                                    ControlToValidate="Integral" ErrorMessage="积分必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></td>
                        </tr> 
                    </tbody>
                    <tbody id="Tabs5" style="display: none">
                        <asp:Literal ID="ModelHtml" runat="server"></asp:Literal></tbody>
                    <tbody id="Tabs6" style="display: none"><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%" style="height: 24px">
                                <strong>更新时间：</strong></td>
                            <td style="height: 24px; width: 592px;"><asp:TextBox ID="UpdateTime" class="l_input" runat="server" /> 
                              <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                  ControlToValidate="UpdateTime" Display="Dynamic" ErrorMessage="更新时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                 
                              </span></td>
                      </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft" width="20%">
                                <strong>内容页模板：</strong></td>
                            <td><asp:TextBox ID="ModeTemplate" class="l_input" runat="server" />
                                <input type="button" value="选择模板" class="C_input" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ModeTemplate')+'&FilesDir=',650,480)" /></td>
                        </tr>
                    </tbody>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                    ShowSummary="False" />
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="center" style="height: 59px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" Text="保存商品信息" runat="server" OnClick="EBtnSubmit_Click1"
                    class="C_input" />
                <input type="button" name="Button2" value="返回列表" onclick="location.href='Waremanage.aspx'"
                    id="Button2" class="C_input" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>