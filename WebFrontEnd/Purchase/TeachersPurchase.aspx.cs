using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Purchase_TeachersPurchase : System.Web.UI.Page
{
    IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    int stdID = -1;
    String tid;
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["usr"];
        if (null != cookie)
        {
            try
            {
                stdID = Convert.ToInt32(cookie.Values["ID"]);
            }
            catch
            {
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else
            Response.Redirect("~/Student/Login.aspx");
        
        
        tid = Request.QueryString["tid"];


    }

    protected void button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(String.Format("~/Purchase/TeachersConfirm.aspx?plan=1&tid={0}",tid));
    }
    protected void button4_Click(object sender, EventArgs e)
    {
        Response.Redirect(String.Format("~/Purchase/TeachersConfirm.aspx?plan=4&tid={0}", tid));
    }
    protected void button3_Click(object sender, EventArgs e)
    {
        Response.Redirect(String.Format("~/Purchase/TeachersConfirm.aspx?plan=3&tid={0}", tid));
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(String.Format("~/Purchase/TeachersConfirm.aspx?plan=2&tid={0}", tid));
    }
}