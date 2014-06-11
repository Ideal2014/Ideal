using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

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
        StudentInfo student = new StudentInfo();
        student.Stu_UserName = Name.Text.ToString().Trim();
        student.Stu_Email = MailBox.Text.ToString().Trim();
        if(!Password1.Text.Equals(Password2.Text.Trim())){
            throw new Exception();
        }
        student.Stu_Password = Password1.Text.ToString().Trim();
        bllStudent.Add(student);
        Response.Redirect("~/Student/Login.aspx");
    }
}