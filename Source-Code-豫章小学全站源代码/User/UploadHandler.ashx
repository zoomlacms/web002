<%@ WebHandler Language="C#" Class="UploadHandler" %>
using System;
using System.Web;
using System.IO;
using ZoomLa.BLL;
using ZoomLa.BLL.FTP;
using ZoomLa.Model.FTP;
using System.Text;

public class UploadHandler : IHttpHandler
{
    private B_FTP bf = new B_FTP();
    private M_FtpConfig mf = new M_FtpConfig();
    protected B_User ull = new B_User();
    protected ZoomLa.Model.M_UserInfo uinfo;
    
    public void ProcessRequest(HttpContext context)
    {

        ull.CheckIsLogin();
        this.uinfo = ull.GetLogin();
        HttpPostedFile file = context.Request.Files["Filedata"];
        if (context.Request["content"] != null || context.Request["content"] != "0")
        {
            context.Response.ContentType = "text/plain";
            context.Response.Charset = "utf-8";
            string PhPath = "";
            context.Response.Write(context.Server.UrlDecode(context.Request["Dir"]));
            string path = HttpContext.Current.Server.MapPath("\\UploadFiles\\")+uinfo.UserName+"\\" + context.Server.UrlDecode(context.Request["Dir"]) + "\\";
            PhPath = path;
            if (file != null)
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string[] str = file.FileName.Split('.');
                if (str.Length > 0)
                {
                    //path += DateTime.Now.ToString("yyyyMMddHHmmssfffffff") + "." + str[str.Length - 1];
                    path += file.FileName;
                    file.SaveAs(path);
                }
                //throw new Exception(path.Replace(PhPath, "\\UploadFiles"));
                //上传成功后让上传队列的显示自动消失
                context.Response.Write(path.Replace(PhPath, "").Replace('\\', '/'));
            }
            else
            {
                context.Response.Write("0");
            }
        }
    }

    public bool IsReusable
    {
        get { return false; }
    }
}