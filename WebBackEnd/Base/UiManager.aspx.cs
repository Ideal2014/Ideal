using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSupport;

public partial class Base_UiManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadImage();
        }
    }
    protected void Modify_Click(object sender, EventArgs e)
    {
        var btn = sender as Button;
        string errorMsg;
        string server = Server.MapPath("~/");
        if (ImageFile1.HasFile)
        {
            UploadSupport.SaveImage(ImageFile1, server + "../Resourse/Image/index1.png", out errorMsg);
            UploadSupport.CopyFile(server + "../Resourse/Image/index1.png", server + "/Resourse/Image/index1.png");
            
        }
        if (ImageFile2.HasFile)
        {
            UploadSupport.SaveImage(ImageFile2, server + "../Resourse/Image/index2.png", out errorMsg);
            UploadSupport.CopyFile(server + "../Resourse/Image/index2.png", server + "/Resourse/Image/index2.png");
            
        }
        if (ImageFile3.HasFile)
        {
            UploadSupport.SaveImage(ImageFile3, server + "../Resourse/Image/index3.png", out errorMsg);
            UploadSupport.CopyFile(server + "../Resourse/Image/index3.png", server + "/Resourse/Image/index3.png");
           
        }
        if (ImageFile4.HasFile)
        {
            UploadSupport.SaveImage(ImageFile4, server + "../Resourse/Image/index4.png", out errorMsg);
            UploadSupport.CopyFile(server + "../Resourse/Image/index4.png", server + "/Resourse/Image/index4.png");
        }
    }

    /// <summary>
    /// 验证是否指定的图片格式
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    /// 
    private void LoadImage()
    {
        Image1.ImageUrl = "~/Resourse/Image/index1.png";
        Image2.ImageUrl = "~/Resourse/Image/index2.png";
        Image3.ImageUrl = "~/Resourse/Image/index3.png";
        Image4.ImageUrl = "~/Resourse/Image/index4.png";
    }

}