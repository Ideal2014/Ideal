using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Student_Student_Modify_Account : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
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
            student.Stu_Password = cookie.Values["pass"];
            if (!bllStudent.CheckLogin(student))
            {
                Response.Redirect("~/Student/Login.aspx");
            }

            //set the value of personal information
            StudentInfo student2 = bllStudent.Get(student.Stu_ID);
            Name.Text = student2.Stu_UserName;
            Mailbox.Text = student2.Stu_Email;
            Telephone.Text = student2.Stu_Tel;
            if (student2.Stu_Sex != null)
                Radio.Items.FindByValue(student2.Stu_Sex.Trim()).Selected = true;

        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        StudentInfo student = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"]));
        student.Stu_UserName = Name.Text.ToString();
        student.Stu_Email = Mailbox.Text.ToString();
        student.Stu_Tel = Telephone.Text.ToString();
        student.Stu_Sex = Radio.SelectedItem.Value;
        Console.WriteLine("xiugai");
        bllStudent.Modify(student);
        Response.Redirect("~/Student/StudentModifyAccount.aspx");
    }
}