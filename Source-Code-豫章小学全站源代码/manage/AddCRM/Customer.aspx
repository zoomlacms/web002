<%@ page language="C#" autoeventwireup="true" inherits="manage_AddCRM_Customer, App_Web_msejy5ma" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_Customer_daily")%></title>
  
  <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script type="text/javascript"> 
function Switch(obj)
{
    obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
    var nextDiv;
    if (obj.nextSibling)
    {
        if(obj.nextSibling.nodeName=="DIV")
        {
            nextDiv = obj.nextSibling;
        }
        else
        {
            if(obj.nextSibling.nextSibling)
            {
                if(obj.nextSibling.nextSibling.nodeName=="DIV")
                {
                    nextDiv = obj.nextSibling.nextSibling;
                }
            }
        }
        if(nextDiv)
        {
            nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
        }
    }
}

function gotourl(url) {
    try {
        parent.MDILoadurl(url); void (0);
    } catch (Error) {
        parent.frames["main_right"].location = "../" + url; void (0);
    }
}
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
<ul>
    <li id="Guide_top">
        <div id="Guide_toptext">
            <%=lang.Get("m_Customer_daily")%>
        </div>
    </li>
    <li id="Guide_main">
        <div id="Guide_box">
          <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_Customer_manage")%></div>
            <div class="guide">
                <ul>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerList.aspx?usertype=0" target="main_right"><%=lang.Get("m_Customer_all")%></a></li>                    
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerList.aspx?usertype=2" target="main_right"><%=lang.Get("m_Customer_corporate")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerList.aspx?usertype=1" target="main_right"><%=lang.Get("m_Customer_individual")%></a></li>
                    
                </ul>
            </div>
        </div>
    </li>
</ul>
</div>

<div id="Div16">
    <ul>
        <li id="Li4">
            <div id="Div18">
              <div class="guidecollapse" onclick="Switch(this)"><%=lang.Get("m_Customer_CRM")%></div>
                <div class="guide" style="display:none">
                    <ul>                        
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Type" target="main_right"><%=lang.Get("m_Customer_complaint")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Type" target="main_right"><%=lang.Get("m_Customer_service")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Area" target="main_right"><%=lang.Get("m_Customer_area")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Calling" target="main_right"><%=lang.Get("m_Customer_industry")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Value" target="main_right"><%=lang.Get("m_Customer_valuation")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Credit" target="main_right"><%=lang.Get("m_Customer_credit")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Importance" target="main_right"><%=lang.Get("m_Customer_importance")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Connection" target="main_right"><%=lang.Get("m_Customer_relation")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Group" target="main_right"><%=lang.Get("m_Customer_group")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Source" target="main_right"><%=lang.Get("m_Customer_source")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Phase" target="main_right"><%=lang.Get("m_Customer_stage")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Co_Status" target="main_right"><%=lang.Get("m_Customer_position")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Co_Size" target="main_right"><%=lang.Get("m_Customer_company")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Co_Management" target="main_right"><%=lang.Get("m_Customer_operate")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Type" target="main_right"><%=lang.Get("m_Customer_type")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Mode" target="main_right"><%=lang.Get("m_Customer_style")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Urgency" target="main_right"><%=lang.Get("m_Customer_urgency")%></a></li>                    
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Linkman_Income" target="main_right"><%=lang.Get("m_Customer_income")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Linkman_Education" target="main_right"><%=lang.Get("m_Customer_degree")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Type" target="main_right"><%=lang.Get("m_Customer_type")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Mode" target="main_right"><%=lang.Get("m_Customer_style")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_TakeTime" target="main_right"><%=lang.Get("m_Customer_spendtime")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Result" target="main_right"><%=lang.Get("m_Customer_result")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Score" target="main_right"><%=lang.Get("m_Customer_evaluate")%></a></li>
                    </ul>
                </div>
            </div>
        </li>
    </ul>
</div>

<div id="user" style="display:none">
    <ul>
        <li id="Li2">      
            <div id="Div3">
                <div class="guideexpand" onclick="Switch(this)" >
                    客户组别
                </div>
                <div class="guide" id="info" style="display:block">
                    <ul>                        
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_All" target="main_right">所有客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_Latency" target="main_right">潜在客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_Common" target="main_right">普通客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_VIP" target="main_right">VIP客户</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_Agent" target="main_right">代理商</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_Together" target="main_right">合作伙伴</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Client_Invalid" target="main_right">失效客户</a></li>
                    </ul>
                </div>
            </div>   
           
            <div id="Div6">
                <div  onclick="Switch(this)" class="guideexpand">
                   客户阶段 
                </div>
                <div class="guide" id="Div7" style="display:none">
                    <ul>                        
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Phase_Trace" target="main_right">售前跟踪</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Phase_Execute" target="main_right">合同执行</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Phase_Serve" target="main_right">售后服务</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CustomerManage.aspx?FieldName=Phase_Expire" target="main_right">合同期满</a></li>
                    </ul>
                </div>
            </div>    
        </li>
    </ul>
</div> 
<div id="Div2" style="display:none">
<ul>
    <li id="Li1">
    
        <div id="Div4">
            <div  class="guideexpand" onclick="Switch(this)">
                客户信息表
            </div>
            <div class="guide" id="Div5">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Area" target="main_right">客户区域</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Calling" target="main_right">所属行业</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Value" target="main_right">价值评估</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Credit" target="main_right">信用等级</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Importance" target="main_right">重要程度</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Connection" target="main_right">关系等级</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Group" target="main_right">客户组别</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Source" target="main_right">客户来源</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Client_Phase" target="main_right">阶段</a></li>

                </ul>
            </div>
        </div>
        <div id="Div8">
            <div class="guideexpand" onclick="Switch(this)">
                公司信息表
            </div>
            <div class="guide" id="Div9">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Co_Status" target="main_right">行业地位</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Co_Size" target="main_right">公司规模</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Co_Management" target="main_right">经营状态</a></li>
                </ul>
            </div>
        </div>
        <div id="Div10">
            <div  class="guideexpand" onclick="Switch(this)">
                投诉记录表
            </div>
            <div class="guide" id="Div11">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Type" target="main_right">服务类型</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Mode" target="main_right">服务方式</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Complain_Urgency" target="main_right">紧急程度</a></li>
                </ul>
            </div>
        </div>
        <div id="Div12">
            <div  class="guideexpand" onclick="Switch(this)">
                联系人信息表
            </div>
            <div class="guide" id="Div13">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Linkman_Income" target="main_right">月收入</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Linkman_Education" target="main_right">学历</a></li>
                </ul>
            </div>
        </div>
        <div id="Div14">
            <div  class="guideexpand" onclick="Switch(this)">
                服务记录表
                </div>
            <div class="guide" id="Div15">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Type" target="main_right">服务类型</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Mode" target="main_right">服务方式</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_TakeTime" target="main_right">花费时间</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Result" target="main_right">服务结果</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddCRM/CRMDictionary.aspx?FieldName=Service_Score" target="main_right">客户评价</a></li>
                </ul>
            </div>
        </div>
        
    </li>
 </ul>
</div>
</form>

<script type="text/javascript">
    function show() {
        document.getElementById("user").style.display = "block";
        document.getElementById("Div2").style.display = "none";
    }
    function show1() {
        document.getElementById("Div2").style.display = "block";
        document.getElementById("user").style.display = "none";
    }
</script>
</body>
</html>
