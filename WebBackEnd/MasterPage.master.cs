using Model;
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

        if (!IsPostBack)
        {
            if (!CheckLogin())
                Response.Redirect("~/Login/Login.aspx");
        }
    }

    private bool CheckLogin()
    {
        if (Request.Cookies["admin"] == null)
            return false;
        if (Request.Cookies["admin"]["name"] == null || Request.Cookies["admin"]["password"] == null)
            return false;
        string name = Request.Cookies["admin"]["name"];
        string password = Request.Cookies["admin"]["password"];
        if ("".Equals(name) || "".Equals(password))
            return false;
        AdminInfo admin = bllAdmin.FindByName(name);
        if (null == admin)
            return false;
        if (admin.Adm_Password.Equals(password))
        {
            Admin.Text = admin.Adm_UserName;
            if (!"admin".Equals(admin.Adm_Role))
            {
                AdminAdd.Visible = false;
            }
            return true;
        }
        return false;
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
