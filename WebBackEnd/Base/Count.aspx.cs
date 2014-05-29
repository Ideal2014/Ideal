using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Base_Count : System.Web.UI.Page
{
    private static readonly IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                Bind();

            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }

    private void Bind()
    {
        IList<StudentInfo> list = bllStudent.GetAll();
        StudentNum.Text = list.Count.ToString();
        NewStudentNum.Text = list.Count.ToString();
    }
}