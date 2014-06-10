using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_StudentAdd : System.Web.UI.Page
{
    private static readonly IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S{1,5}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(StuEmail.Text.ToString(), @"^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\S{1,10}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        //头像
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\d+$"))
            throw new Exception();

        StudentInfo student = new StudentInfo();

        student.Stu_UserName = StuEmail.Text.ToString();
        student.Stu_NickName = StuNickName.Text.ToString();
        student.Stu_Password = StuPassword.Text.ToString();
        //头像
        //时长
        //student.Stu_RegisteTime = StuDuration.Text;

        bllStudent.Add(student);

        Response.Redirect("~/User/StudentList.aspx");
    }
    protected void Reset_Click(object sender, EventArgs e)
    {

    }
}