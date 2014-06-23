using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

/*
 * author：summer 
 */
public partial class Student_MailValidateSuccess : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    //加载页面的时候验证
    //此处userName 其实是student.Stu_ID
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StudentInfo student = new StudentInfo();
            if (Request.QueryString["userName"] != null)
            {
                student = bllStudent.Get(Convert.ToInt32(Request.QueryString["userName"]));
                if (Request.QueryString["validateCode"] != null && student.Stu_Validation.Equals(Request.QueryString["validateCode"]))
                {
                    student.Stu_Validation = "success";
                    bllStudent.Modify(student);
                    Validate.Text = "验证成功！";
                    Response.Redirect("~/Student/Login.aspx");
                }
                else
                    Validate.Text = "验证失败";
            }
            else
            {
                Validate.Text = "ao";
            }
            
        }

    }
}