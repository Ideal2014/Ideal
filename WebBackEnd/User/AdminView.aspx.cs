using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_AdminView : System.Web.UI.Page
{
    private static readonly IBLL.IAdmin bllAdmin = BLLFactory.DataAccess.CreateAdmin();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                LoadInfo();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }

    private void LoadInfo()
    {
        if (Request.QueryString["id"] != null)
            AdminNo.Value = Request.QueryString["id"].ToString();
        else
            return;
        AdminInfo admin = bllAdmin.Get(Int32.Parse(AdminNo.Value));
        AdminNoShow.Text = admin.Adm_ID.ToString();
        AdminEmail.Text = admin.Adm_Email;
        AdminNickName.Text = admin.Adm_UserName;
        AdminPassword.Text = admin.Adm_Password;
       
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/UserList.aspx");
    }
}