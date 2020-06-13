<%@ WebHandler Language="C#" Class="UserTage" %>
using System;
using System.Web;
using System.Text;
using ZoomLa.BLL;
using ZoomLa.Model.User.Develop;
using ZoomLa.BLL.User.Develop;
using System.Data;
public class UserTage : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    B_User B_U = new B_User();
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        context.Response.ContentType = "text/plain";
        string ation = context.Request["v2"] ?? "";
        string reult = string.Empty;
        switch (ation)
        {
            case "updat":
                reult = UpdateNodel(context.Request["nodeid"], context.Request["divname"], context.Request["tagetitle"], context.Request["imgpath"]);
                break;
            case "Addpage":
                reult = AddPages(context, context.Request["style"], context.Request["NodeID"]);
                break;
        }
        context.Response.Write(reult);
    }
    public string UpdateNodel(string nodelid, string divname, string tagename, string imgpath)
    {
        M_Zone_Node MZN = new M_Zone_Node();
        B_EditPage B_EP = new B_EditPage();
        MZN.UserID = B_U.GetLogin().UserID;
        MZN.NodeID = Convert.ToInt32(nodelid);
        MZN.Content = tagename;
        MZN.LabelID = divname;
        MZN.Overflow = null;
        MZN.Display = null;
        MZN.Background = imgpath;
        B_EP.UpLabelContent(MZN);
        return "添加成功";
    }
    public string AddPages(HttpContext context, string style, string nodeid)
    {
        try
        {
            M_Zone_Node MZN = new M_Zone_Node();
            B_EditPage B_EP = new B_EditPage();
            MZN.NodeID = Convert.ToInt32(nodeid);
            MZN.UserID = B_U.GetLogin().UserID;
            string strTemp = style;
            string[] strStyle = strTemp.Split('|');
            if (strStyle != null)
            {
                foreach (string str in strStyle)
                {
                    string[] strLabel = str.Split('^');
                    if (strLabel.Length == 2)
                    {
                        MZN.LabelID = strLabel[0];
                        MZN.style = strLabel[1];
                        DataTable dt = B_EP.SelLabelByLabelID(MZN);
                        if (dt != null && dt.Rows.Count > 0)
                        {
                            B_EP.UpLabel(MZN);
                        }
                        else
                        {
                            B_EP.AddLabel(MZN);
                        }
                    }
                }
            }
            context.Response.Write("创建层成功-请点击层右上角[编辑]按钮引入控件");
            context.Response.Flush();
            context.Response.Close();
            return "创建层成功-请点击层右上角[编辑]按钮引入控件";
        }
        catch
        {
            return "创建失败请重新创建";
        }
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}