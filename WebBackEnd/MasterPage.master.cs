using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private IBLL.IAdmin bllAdmin = BLLFactory.DataAccess.CreateAdmin();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["admin"] != null && Request.Cookies["admin"]["id"] != null)
        {
            string id = Request.Cookies["admin"]["id"];
            Admin.Text = bllAdmin.Get(Int32.Parse(id)).Adm_UserName;
        }
        else
        {
            Response.Redirect("~/Login/Login.aspx");
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["admin"];
        if (cookie != null)
        {
            cookie.Expires = System.DateTime.Now.AddDays(-1);
        }
        Response.Cookies.Add(cookie);
        Response.Redirect("~/Default.aspx");
    }
}
