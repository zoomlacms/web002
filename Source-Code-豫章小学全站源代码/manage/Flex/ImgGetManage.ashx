<%@ WebHandler Language="C#" Class="CreatXml" %>

using System;
using System.Web;
using System.Data;
using System.Xml;
using System.IO;
using System.Text;
using System.Net;
using System.Data.SqlClient;
using System.Drawing;
public class CreatXml : IHttpHandler
{
    
    protected string myName = "";
    protected string userUrl = "UploadFiles/ADImageCenter";
    protected string myWork = "Work";
    public void ProcessRequest(HttpContext context)
    {
        ZoomLa.BLL.B_Admin buser = new ZoomLa.BLL.B_Admin();
        myName = buser.GetAdminLogin().UserName;
        context.Response.ContentType = "text/xml";
        context.Response.Write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        Stream sin = context.Request.InputStream;
        System.Drawing.Image img = System.Drawing.Bitmap.FromStream(sin);
        Bitmap bmp = new Bitmap(img);
        MemoryStream bmpStream = new MemoryStream();
        bmp.Save(bmpStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        string str = ZoomLa.Common.DataSecurity.MakeFileRndName();
        string workpath = System.Web.HttpContext.Current.Server.MapPath("/" + userUrl + "/" + myName + myWork);
        if (!Directory.Exists(workpath))
        {
            Directory.CreateDirectory(workpath);
        }
        FileStream fs = new FileStream(workpath+"\\"+ str + ".png", FileMode.Create);
        bmpStream.WriteTo(fs);
        bmpStream.Close();
        fs.Close();
        bmpStream.Dispose();
        fs.Dispose();
        context.Response.Redirect("MyWork.aspx");
        
    }
    
    

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}