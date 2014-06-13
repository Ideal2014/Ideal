using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.Text.RegularExpressions;

public partial class Student_Register : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        string userNameRegex = @"^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,19}$";
        if (!Regex.IsMatch(Name.Text.ToString(), userNameRegex))
            throw new Exception();
        string passwordRegex = @".{5,19}$";
        if (!Regex.IsMatch(Password1.Text.ToString(), passwordRegex))
            throw new Exception();
        if (!Regex.IsMatch(Password2.Text.ToString(), passwordRegex))
            throw new Exception();
        string mailRegex = @"^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$";
        if (!Regex.IsMatch(MailBox.Text.ToString(), mailRegex))
            throw new Exception();
        StudentInfo student = new StudentInfo();
        student.Stu_UserName = Name.Text.ToString().Trim();
        student.Stu_Email = MailBox.Text.ToString().Trim();
        student.Stu_Validation = "success";
        student.Stu_LastLogin = DateTime.Now;
        student.Stu_RegisteTime = DateTime.Now;
        student.Stu_Image = "~/Resource/Image/Upload/default.jpg";
        if(!Password1.Text.Equals(Password2.Text.Trim())){
            throw new Exception();
        }
        student.Stu_Password = Password1.Text.ToString().Trim();
        bllStudent.Add(student);
        Response.Redirect("~/Student/Login.aspx");
    }
}