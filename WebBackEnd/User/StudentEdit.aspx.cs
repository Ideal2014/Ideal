﻿using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_StudentEdit : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();

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
            StuNo.Value = Request.QueryString["id"].ToString();
        else
            return;
        StudentInfo student = bllStudent.Get(Int32.Parse(StuNo.Value));
        StuNoShow.Text = student.Stu_ID.ToString();
        StuNickName.Text = student.Stu_UserName;
        StuEmail.Text = student.Stu_Email;
        StuPassword.Text = student.Stu_Password;
        //头像
        //余额
        //StuDuration.Text=
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S{1,5}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(StuEmail.Text.ToString(), @"^([a-zA-Z0-9]+[_|_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\S{1,10}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        //头像
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\d+$"))
            throw new Exception();

        StudentInfo student = new StudentInfo();

        student.Stu_UserName = StuNickName.Text.ToString();
        student.Stu_Email = StuEmail.Text.ToString();
        student.Stu_Password = StuPassword.Text.ToString();
        //头像
        //时长
        //student.Stu_RegisteTime = StuDuration.Text;

        bllStudent.Add(student);

        Response.Redirect("~/User/StudentList.aspx");
    }
    protected void Reset_Click(object sender, EventArgs e)
    {

    }
}