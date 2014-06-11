using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("usr");
        cookie.Values["ID"] = "1";
        Response.AppendCookie(cookie);
        Response.Redirect("~/Purchase/AccountPurchase.aspx");
    }
}