﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.Text.RegularExpressions;
/*
 * author:summer
 */

public partial class Student_Login : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["usr"] != null)
            {

                HttpCookie cookie = new HttpCookie("usr");
                cookie.Expires = System.DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);

            }
        }


    }
    //验证登录
    //在cookie中添加user
    protected void Login_Click(object sender, EventArgs e)
    {
        StudentInfo student = new StudentInfo();
        StudentInfo student2 = bllStudent.GetByName(Username.Text.Trim());
        if (student2 == null)
            return;
        student.Stu_ID = student2.Stu_ID;
        student.Stu_Password = Password.Text.ToString().Trim();
        if (bllStudent.CheckLogin(student))
        {
            student2.Stu_LastLogin = DateTime.Now;
            bllStudent.Modify(student2);
            HttpCookie cookie = new HttpCookie("usr");
            cookie.Values["ID"] = student.Stu_ID.ToString();
            cookie.Values["pass"] = Password.Text.ToString().Trim();
            cookie.Expires = System.DateTime.Now.AddDays(1);//设置过期时间  1天
            Response.Cookies.Add(cookie);
            Response.Redirect("~/Home/Home.aspx");
        }

    }
    //后端进行登录验证
    //验证密码是否正确
    protected void LoginValidate_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string userNameRegex = @"^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,19}$";
        if (!Regex.IsMatch(Username.Text.ToString(), userNameRegex))
            throw new Exception();
        string passwordRegex = @".{5,19}$";
        if (!Regex.IsMatch(Password.Text.ToString(), passwordRegex))
            throw new Exception();

        StudentInfo student = new StudentInfo();
        StudentInfo student2 = bllStudent.GetByName(Username.Text.Trim());
        if (student2 == null)
        {
            args.IsValid = false;
            return;
        }
        student.Stu_ID = student2.Stu_ID;
        student.Stu_Password = Password.Text.ToString().Trim();
        if (student != null && bllStudent.CheckLogin(student))
        {

            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}