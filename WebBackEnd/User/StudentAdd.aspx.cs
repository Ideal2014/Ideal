﻿using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSupport;

public partial class User_StudentAdd : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S{2,10}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuNickName.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(StuEmail.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\S{1,10}$"))
            throw new Exception();
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        //头像
        if (!Regex.IsMatch(StuPassword.Text.ToString(), @"^\d+$"))
            throw new Exception();

        string server = Server.MapPath("~/");
        string imageName = UploadSupport.GenerateRandom(10) + ".jpg";
        string error;
        if (!UploadSupport.SaveImage(ImageFile, server, imageName, out error))
            return;
        StudentInfo student = new StudentInfo();

        student.Stu_UserName = StuNickName.Text.ToString();
        student.Stu_Password = StuPassword.Text.ToString();
        student.Stu_Email = StuEmail.Text.ToString();
        //头像
        //时长
        student.Stu_RegisteTime = DateTime.Now;
        student.Stu_LastLogin = DateTime.Now;

        bllStudent.Add(student);

        Response.Redirect("~/User/UserList.aspx");
    }
    protected void Reset_Click(object sender, EventArgs e)
    {

    }
}