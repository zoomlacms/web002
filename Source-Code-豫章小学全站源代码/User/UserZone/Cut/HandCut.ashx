<%@ WebHandler Language="C#" Class="HandCut" %>

using System;
using System.Web;
using ZoomLa.Model;
using ZoomLa.BLL;
using ZoomLa.BLL.User;
using ZoomLa.Common;
using ZoomLa.Model.User;
public class HandCut : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
        B_User buser = new B_User();
        B_PageSign bp = new B_PageSign();

        M_UserInfo userInfo = buser.GetLogin();
        if (bp.SeachByUid(userInfo.UserID).Count >= 10)
        {
            context.Response.Write("0");
        }
        else
        {
            if (!String.IsNullOrEmpty(context.Request.QueryString["url"]) && !String.IsNullOrEmpty(context.Request.QueryString["title"]))
            {
                int v = -1;
                string wz = context.Request.QueryString["url"].ToString();
                string wztitle = context.Request.QueryString["title"].ToString();
                string pageName = context.Server.HtmlEncode(wztitle);
                ZoomLa.Model.User.M_PageSign mPage = new M_PageSign();
                mPage.PageSign = pageName;
                mPage.Uid = userInfo.UserID;
                mPage.PageType = 1;
                ZoomLa.BLL.User.B_PageSign pageSign = new B_PageSign();
                v = pageSign.AddPsignID(mPage);

                int top = 0;
                int left = 0;
                int width = 0;
                int height = 0;
                int isVisble = 1;
                int pageId = 1;
                int menuID = v;

                SaveAss(userInfo, wztitle, wz, top, left, width, height, isVisble, pageId, menuID);
                context.Response.Write(menuID.ToString());
            }
            else
            {
                context.Response.Write("0"); 
            }
        }

    }

    public bool SaveAss(M_UserInfo uinfo, string title, string url, int top, int left, int width, int height, int isVisble, int pageId, int menuID)
    {
        bool bo = false;

        M_Cut cut = new M_Cut();

        if (uinfo != null)
            cut.Uid = uinfo.UserID;
        if (string.IsNullOrEmpty(title) || title.Length == 0)
            cut.Title = "请输入标题";
        else
            cut.Title = title;

        if (!string.IsNullOrEmpty(url))
            cut.Url = url;

        cut.PositionTop = top;
        cut.PositionLeft = left;
        cut.PositionWidth = width;
        cut.PositionHeight = height;
        cut.IsVisble = isVisble;
        cut.UpdateTime = DateTime.Now;
        cut.PageId = pageId;
        cut.MenuID = menuID;
        bo = SaveAssCut(cut);

        return bo;
    }


    public bool SaveAssCut(M_Cut cut)
    {
        int row = 0;
        B_Cut bcut = new B_Cut();

        if (cut != null)
        {

            row = bcut.AddCut(cut);
        }

        if (row > 0)
        {
            return true;

        }
        else
        {
            return false;
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}