using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.IO;
/*
 * author:summer
 */ 
public partial class Student_Student_Modify_Account : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    //加载页面，验证用户登录信息，显示个人信息
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["usr"] == null)
            {
                Response.Redirect("~/Student/Login.aspx");
            }

            //check longin 
            HttpCookie cookie = Request.Cookies["usr"];
            StudentInfo student = new StudentInfo();
            student.Stu_ID = Convert.ToInt32(cookie.Values["ID"]);
            student.Stu_Password = cookie.Values["pass"].Trim();

            if (!bllStudent.CheckLogin(student))
            {
                Response.Redirect("~/Student/Login.aspx");
            }

            //set the value of personal information
            StudentInfo student2 = bllStudent.Get(student.Stu_ID);
            Name.Text = student2.Stu_UserName;
            Mailbox.Text = student2.Stu_Email;
            Telephone.Text = student2.Stu_Tel;
            Image7.ImageUrl = student2.Stu_Image;
            Std_Name.Text = student2.Stu_UserName;
            Std_ID.Text = Convert.ToString(student2.Stu_ID);
            if (student2.Stu_Sex != null)
                Radio.Items.FindByValue(student2.Stu_Sex.Trim()).Selected = true;

        }
    }
    //点击提交，对个人信息内容进行修改
    protected void Submit_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        StudentInfo student = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"]));
        student.Stu_UserName = Name.Text.ToString();
        student.Stu_Email = Mailbox.Text.ToString();
        student.Stu_Tel = Telephone.Text.ToString();
        if(Radio.SelectedItem!=null)
            student.Stu_Sex = Radio.SelectedItem.Value;

        if (HeadImage.HasFile)
        {
            student.Stu_Image = SaveFile(HeadImage.PostedFile);
        }
        Console.WriteLine("xiugai");
        bllStudent.Modify(student);
        Response.Redirect("~/Student/StudentModifyAccount.aspx");
    }

    //上传文件
    String SaveFile(HttpPostedFile file)
    {
        string savePath = "~/Resource/Image/Upload/";

        string fileName = HeadImage.FileName;
        string pathToCheck = savePath + fileName;
        string tempfileName = "";       
        if (System.IO.File.Exists(pathToCheck))
        {
            int counter = 2;
            while (System.IO.File.Exists(pathToCheck))
            {
                tempfileName = counter.ToString() + fileName;
                pathToCheck = savePath + tempfileName;
                counter++;
            }
            fileName = tempfileName;
        }   
        if (System.IO.Directory.Exists(Server.MapPath(savePath)) == false)//如果不存在就创建file文件夹
        {
            System.IO.Directory.CreateDirectory(Server.MapPath(savePath));
        }
        savePath += fileName;
        HeadImage.PostedFile.SaveAs(Server.MapPath(savePath));
        return savePath;
    }
}