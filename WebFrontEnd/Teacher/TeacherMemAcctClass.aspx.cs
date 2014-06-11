using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Teacher_TeacherAccount : System.Web.UI.Page
{
    private static readonly IBLL.IClassRecord bllClassRecord = BLLFactory.DataAccess.CreateClassRecord();
    private static readonly IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    int stdID = -1;

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        if (null != cookie)
        {
            try
            {
                stdID = Convert.ToInt32(cookie.Values["ID"]);
                StudentInfo student = stu.Get(stdID);
                Image7.ImageUrl = student.Stu_Image;
                Std_Name.Text = student.Stu_UserName;
                Std_ID.Text = Convert.ToString(student.Stu_ID);
                GridBind(Convert.ToInt32(stdID));
            }
            catch
            {
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else
            Response.Redirect("~/Student/Login.aspx");
    }


    private void GridBind(int stu_id)
    {
        GridRec.DataSource = bllClassRecord.GetClassRecordList(stu_id);
        GridRec.DataBind();
    }
}