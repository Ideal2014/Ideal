﻿using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Default : System.Web.UI.Page
{
    private IBLL.IAdmin bllAdmin = BLLFactory.DataAccess.CreateAdmin();
    private IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (LoginValidate.IsValid)
        {
            AdminInfo admin = bllAdmin.FindByName(UserName.Text.ToString());
            HttpCookie cookie = new HttpCookie("admin");
            cookie.Values["name"] = admin.Adm_UserName.ToString();
            cookie.Values["password"] = admin.Adm_Password.ToString();
            cookie.Expires = System.DateTime.Now.AddDays(1);//设置过期时间  1天
            Response.Cookies.Add(cookie);
            Response.Redirect("~/Base/Count.aspx");
        }

    }
    protected void LoginValidate_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string userNameRegex = @"^.+$";
        if (!Regex.IsMatch(UserName.Text.ToString(), userNameRegex))
            throw new Exception();
        string passwordRegex = @"^.+$";
        if (!Regex.IsMatch(UserName.Text.ToString(), passwordRegex))
            throw new Exception();

        AdminInfo admin = bllAdmin.FindByName(UserName.Text.ToString());
        if (admin != null && Password.Text.ToString() == admin.Adm_Password)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }


}