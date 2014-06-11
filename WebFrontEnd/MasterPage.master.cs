using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Model;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private  IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
        int ID = -1;
        if (null != cookie)
        {
            ID = Convert.ToInt32(cookie.Values["ID"]);
        }
        if (ID != -1)
        {
            try
            {
                Model.StudentInfo stuInfo = stu.Get(ID);
                HyperLink1.Text = stuInfo.Stu_UserName + "的个人中心";
                HyperLink1.NavigateUrl = "~/Purchase/AccountInfo.aspx";
                HyperLink2.Text = "退出登录";
            }
            catch
            {
                Request.Cookies.Remove("usr");
                HyperLink1.NavigateUrl = "~/Student/Login.aspx";
                HyperLink1.Text = "点击这里登录";
                HyperLink2.Text = "没有账号，注册";
            }
        }
        else
        {
            HyperLink1.NavigateUrl = "~/Student/Login.aspx";
            HyperLink1.Text = "点击这里登录";
            HyperLink2.Text = "没有账号，注册";
        }
    }

    protected void HyperLink2_Click1(object sender, EventArgs e)
    {
        if (HyperLink2.Text.Equals("没有账号，注册"))
        {
            Response.Redirect("~/Student/Register.aspx");
        }
        else
        {
            HttpCookie cookie = Request.Cookies["usr"];
            if (null != cookie)
            {
                HttpCookie cook = new HttpCookie("usr");
                cook.Expires = DateTime.Now.AddDays(-1);
                Response.AppendCookie(cook);
            }
            Response.Redirect("~/Student/Login.aspx");

        }
    }
}
