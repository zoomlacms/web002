<%@ control language="C#" autoeventwireup="true" inherits="Controls_Page, App_Web_hydjudlz" %>
<table align="Center" style="font: 'System.String[]';" cellspacing="1px" cellpadding="0px"
    id="Table_MyPaper1" style="" height="28px" width="300px" class="" border="1px"
    bgcolor="White" bordercolor="White">
    <tr>
    
        <td  align="center" style=''>
            <asp:Label ID="Label1" runat="server" Text="Label" meta:resourcekey="Label1Resource1"></asp:Label>
        </td>
        <td align="center" bgcolor="">
            <a href="#" onclick="FristPage()">
                <img src="../images/PageCoursControl/First.gif" onerror="" alt="首页" border='0' /></a>
        </td>
        <td  align="center" bgcolor="">
            <a href="#" onclick="MovePage()">
                <img src="../images/PageCoursControl/Previous.gif" onerror="" alt="上一页" border='0' /></a>
        </td>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <td  style="width: 18;" align="center" >
                   <a id="PageIndex<%# Eval("PageIndex") %>" href='#' onclick='ChangeCours(<%# Eval("PageIndex") %>)'>
                        
                            <%# Eval("PageIndex") %>
                         
                    </a>
                    <%--<div   style="color:Green; " id="PageIndex<%# Eval("PageIndex") %>" onclick='ChangeCours(<%# Eval("PageIndex") %>)'>
                        
                            <%# Eval("PageIndex") %>
                         
                    </div>--%>
                   
                    
                </td>
            </ItemTemplate>
        </asp:Repeater>
        <td align="center"  >
            <a class="" href="#" onclick="NextPage()">
                <img src="../images/PageCoursControl/Next.gif" alt="下一页" border='0'/></a>
        </td>
        <td align="center" >
            <a class="" href="#" onclick="LastPage()">
                <img src="../images/PageCoursControl/Last.gif" alt="末页" border='0'></a>
        </td>
        <td align="center"  >
            <input id="txtPageCours" type="text" style="width: 30px" onkeyup="value=value.replace(/[^\d]/g,'') " />
        </td>
        <td align="center"  >
            <input id="Button1" onclick="GoToCours(document.getElementById('txtPageCours').value);"
                type="button" value="转到" />
        </td>
    </tr>
</table>
<div id="DivtxtPageCours" runat="server" style="visibility: hidden; display: none;">
    <asp:TextBox ID="hidTxtPageCours" runat="server" AutoPostBack="True" ></asp:TextBox>
</div>
<div id="DivContorlID" runat="server" style="visibility: hidden; display: none;">
</div>

<script type="text/javascript">


    var PageCoursIndexID = 'PageIndex' + document.getElementById('<%=ID %>$hidTxtPageCours').value;
    document.getElementById(PageCoursIndexID).style.color = "Red";



    function ChangeCours(PageCours) {
        setTimeout('__doPostBack(\'<%=ID %>$hidTxtPageCours\',\'\')', 0);
        document.getElementById('<%=ID %>$hidTxtPageCours').value = PageCours;
        if (WebForm_TextBoxKeyHandler(event) == false) return false;
    }

    function GoToCours(cours) {
        var maxcours = document.getElementById('BHTPageNum').value;
        if ((parseInt(cours) > parseInt(maxcours)) || (parseInt(cours) <= 0)) {
            alert("无效索引");
        }
        else if (cours == '') {
            alert("请输入索引");
        }
        else {
            ChangeCours(cours);
        }

    }

    function NextPage() {
        var BHTPageNum = document.getElementById('BHTPageNum').value;
        var pageCours = document.getElementById('<%=ID %>$hidTxtPageCours').value


        if (pageCours >= BHTPageNum) {
            return;
        }
        else {
            ChangeCours(parseInt(pageCours) + 1);
        }

    }

    function MovePage() {
        var BHTPageNum = document.getElementById('BHTPageNum').value;
        var pageCours = document.getElementById('<%=ID %>$hidTxtPageCours').value

        if (pageCours <= 1) {
            return;
        }
        else {
            ChangeCours(parseInt(pageCours - 1));
        }

    }


    function FristPage() {
        ChangeCours(1);
    }

    function LastPage() {
        var BHTPageNum = document.getElementById('BHTPageNum').value;
        ChangeCours(BHTPageNum);
    }
</script>


