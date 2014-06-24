using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
 * @author 余春帆 
 */

public partial class Purchase_TeachersConfirm : System.Web.UI.Page
{
    IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    int stdID = -1;
    String tid, plan;

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
        plan = Request.QueryString["plan"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}