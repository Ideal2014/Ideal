﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Base_UiManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Modify_Click(object sender, EventArgs e)
    {
        string errorMsg;
        SaveImage(ImageFile1, Image1, "index1.png", out errorMsg);
    }

    /// <summary>
    /// 验证是否指定的图片格式
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    /// 

    public bool SaveImage(FileUpload uploadImageFile, Image imageDisplay, string fileName, out string errorMsg)
    {
        if (uploadImageFile.HasFile)//验证是否包含文件
        {
            //取得文件的扩展名,并转换成小写
            //string fileName = UploadImageFile.FileName.ToLower();
            string fileExtension = Path.GetExtension(fileName).ToLower();

            //验证上传文件是否图片格式
            if (IsImage(fileExtension))
            {
                //对上传文件的大小进行检测，限定文件最大不超过8M
                if (uploadImageFile.PostedFile.ContentLength < 8192000)
                {
                    string virDirPath = "../Resourse/Image/";
                    string dirPath = Server.MapPath("~/") + virDirPath;
                    if (Directory.Exists(dirPath) == false)//如果不存在就创建file文件夹
                    {
                        Directory.CreateDirectory(dirPath);
                    }
                    string virpath = virDirPath+ "../" + fileName;//这是存到服务器上的虚拟路径
                    string path = dirPath + fileName;//转换成服务器上的物理路径
                    uploadImageFile.PostedFile.SaveAs(path);//保存图片
                    //显示图片
                    Image1.ImageUrl =  virpath;
                    //清空提示
                    errorMsg = "";
                    return true;
                }
                else
                {
                    Image1.ImageUrl = "";
                    errorMsg = "文件大小超出8M！请重新选择！";
                    return false;
                }
            }
            else
            {
                Image1.ImageUrl = "";
                errorMsg = "要上传的文件类型不对！请重新选择！";
                return false;
            }
        }
        else
        {
            Image1.ImageUrl = "";
            errorMsg = "请选择要上传的图片！";
            return false;
        }
    }
    public bool IsImage(string str)
    {
        bool isimage = false;
        string thestr = str.ToLower();
        //限定只能上传jpg和gif图片
        string[] allowExtension = { ".jpg", ".gif", ".bmp", ".png" };
        //对上传的文件的类型进行一个个匹对
        for (int i = 0; i < allowExtension.Length; i++)
        {
            if (thestr == allowExtension[i])
            {
                isimage = true;
                break;
            }
        }
        return isimage;
    }
}