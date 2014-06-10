using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Student_Register : System.Web.UI.Page
{
    private static readonly IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        StudentInfo student = new StudentInfo();
        student.Stu_UserName = Username.Text.ToString();
        student.Stu_Email = MailBox.Text.ToString();
        if(!Password1.Text.Equals(Password2.Text)){
            throw new Exception();
        }
        student.Stu_Password = Password1.Text.ToString();
        bllStudent.Add(student);
        Response.Redirect("~/Student/Login.aspx");
    }
}