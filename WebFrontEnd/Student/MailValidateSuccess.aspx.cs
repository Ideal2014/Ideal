using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Student_MailValidateSuccess : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StudentInfo student = new StudentInfo();
            if (Request.ServerVariables["ID"] != null)
            {
                student = bllStudent.Get(Convert.ToInt32(Request.ServerVariables["ID"]));
                if (Request.ServerVariables["Validation"] != null && student.Stu_Validation.Equals(Request.ServerVariables["Validation"]))
                {
                    student.Stu_Validation = "success";
                    bllStudent.Modify(student);
                    Validate.Text = "验证成功！";
                }
                else
                    Validate.Text = "验证失败";
            }
        }

    }
}