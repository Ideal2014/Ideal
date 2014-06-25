using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSupport;

public partial class User_StudentEdit : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                LoadInfo();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }

    }
    private void LoadInfo()
    {
        if (Request.QueryString["id"] != null)
            StuNo.Value = Request.QueryString["id"].ToString();
        else
            return;
        StudentInfo student = bllStudent.Get(Int32.Parse(StuNo.Value));
        StuNoShow.Text = student.Stu_ID.ToString();
        StuNickName.Text = student.Stu_UserName;
        StuEmail.Text = student.Stu_Email;

        //头像
        //余额
        //StuDuration.Text=
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S{2,10}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(StuEmail.Text.ToString(), @"^([a-zA-Z0-9]+[_|_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$"))
            throw new Exception();


        if (Request.QueryString["id"] != null)
            StuNo.Value = Request.QueryString["id"].ToString();
        else
            return;

        string server = Server.MapPath("~/");
        string imageName = UploadSupport.GenerateRandom(10) + ".jpg";
        string error;

        if (!UploadSupport.SaveImage(ImageFile, server, imageName, out error))
            return;

        StudentInfo student = bllStudent.Get(Int32.Parse(StuNo.Value));

        student.Stu_UserName = StuNickName.Text.ToString();
        student.Stu_Email = StuEmail.Text.ToString();
        student.Stu_LastLogin = DateTime.Now;
        student.Stu_RegisteTime = DateTime.Now;
        student.Stu_Image = UploadSupport.Image(imageName);
        //头像
        //时长

        bllStudent.Modify(student);

        Response.Redirect("~/User/UserList.aspx");
    }
    protected void Reset_Click(object sender, EventArgs e)
    {

    }
}