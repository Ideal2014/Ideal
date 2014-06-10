using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_AdminAdd : System.Web.UI.Page
{
    private static readonly IBLL.IAdmin bllAdmin = BLLFactory.DataAccess.CreateAdmin();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Regex.IsMatch(AdminNickName.Text.ToString(), @"^\S{1,5}$"))
            throw new Exception();
        if (!Regex.IsMatch(AdminNickName.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(AdminEmail.Text.ToString(), @"^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$"))
            throw new Exception();
        if (!Regex.IsMatch(AdminPassword.Text.ToString(), @"^\S{1,10}$"))
            throw new Exception();
        if (!Regex.IsMatch(AdminPassword.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();

        AdminInfo admin = new AdminInfo();

        admin.Adm_UserName = AdminEmail.Text.ToString();
        admin.Adm_Nickname = AdminNickName.Text.ToString();
        admin.Adm_Password = AdminPassword.Text.ToString();

        bllAdmin.Add(admin);

        Response.Redirect("~/User/UserList.aspx");

    }
    protected void Reset_Click(object sender, EventArgs e)
    {

    }
}