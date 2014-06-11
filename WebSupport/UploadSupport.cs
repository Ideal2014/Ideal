using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;

namespace WebSupport
{
    public class UploadSupport
    {
        public static bool SaveImage(FileUpload uploadImageFile, Image imageDisplay, string server, string path, out string errorMsg)
        {
            if (uploadImageFile.HasFile)//验证是否包含文件
            {
                //取得文件的扩展名,并转换成小写
                //string fileName = UploadImageFile.FileName.ToLower();

                string fileExtension = Path.GetExtension(path).ToLower();

                //验证上传文件是否图片格式
                if (IsImage(fileExtension))
                {

                    //对上传文件的大小进行检测，限定文件最大不超过8M
                    if (uploadImageFile.PostedFile.ContentLength < 8192000)
                    {
                        string virDirPath = Path.GetDirectoryName(path);
                        string realdirPath = server + virDirPath;
                        string fileName = Path.GetFileName(path);
                        if (Directory.Exists(realdirPath) == false)//如果不存在就创建file文件夹
                        {
                            Directory.CreateDirectory(realdirPath);
                        }
                        string virpath = virDirPath + "~/" + fileName;//这是存到服务器上的虚拟路径
                        string realpath = realdirPath + fileName;//转换成服务器上的物理路径
                        uploadImageFile.PostedFile.SaveAs(realpath);//保存图片
                        //显示图片
                        imageDisplay.ImageUrl = virpath;
                        //清空提示
                        errorMsg = "";
                        return true;
                    }
                    else
                    {
                        imageDisplay.ImageUrl = "";
                        errorMsg = "文件大小超出8M！请重新选择！";
                        return false;
                    }
                }
                else
                {
                    imageDisplay.ImageUrl = "";
                    errorMsg = "要上传的文件类型不对！请重新选择！";
                    return false;
                }
            }
            else
            {
                imageDisplay.ImageUrl = "";
                errorMsg = "请选择要上传的图片！";
                return false;
            }
        }
        private static bool IsImage(string str)
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
}
