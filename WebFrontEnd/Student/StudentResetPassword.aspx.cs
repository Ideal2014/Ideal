using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.IO;

public partial class Student_StudentResetPassword : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["usr"] == null)
        {
            Response.Redirect("~/Student/Login.aspx");
        }

        //check longin 
        HttpCookie cookie = Request.Cookies["usr"];
        StudentInfo student = new StudentInfo();
        student.Stu_ID = Convert.ToInt32(cookie.Values["ID"]);
        student.Stu_Password = cookie.Values["pass"];
        if(!bllStudent.CheckLogin(student)){
            Response.Redirect("~/Student/Login.aspx");
        }

        Mailbox.Text = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"])).Stu_Email;
        Mailbox.Attributes["ContentEditable"]="false";
        
    }

    protected void ResetPassword_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
       
    
            StudentInfo student = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"]));
            String strSmtpServer = "smtp.163.com";
            String strFrom = "vikivalidation@163.com";
            String strFromPass = "vikiviki";
            String strTo = "825549402@qq.com";//student.stu_Email;
            String strSubject = "Viki账号激活";
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("点击下面链接激活账号，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
            sb.AppendFormat("<a href='{0}/Student/MailValidateSuccess.aspx?userName={1}&validateCode={2}''>点击这里</a></br>", Server.UrlPathEncode(Request.ApplicationPath), student.Stu_ID, student.Stu_UserName);
            sb.AppendFormat("如未能激活请点击下面链接：<a href='{0}/Student/MailValidateSuccess.aspx?userName={1}&validateCode={2}'>{3}/Student/MailValidateSuccess.aspx?userName={4}&validateCode={5}</a></br>", Server.UrlPathEncode(Request.ApplicationPath), student.Stu_ID, student.Stu_UserName, Server.UrlPathEncode(Request.ApplicationPath), student.Stu_ID, student.Stu_UserName);
            SendSMTPEMail(strSmtpServer, strFrom, strFromPass, strTo, strSubject, sb.ToString());
            Response.Redirect("~/Student/Login.aspx");
            try
            {    
    }
        catch(Exception ex)
        {
            Console.Out.WriteLine(ex.Data);
            throw ex;
        }
    }
  /**  protected void btnEdit_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        try
        {
            StudentInfo student = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"]));

            string strSmtpServer = "smtp." + model.UserEmail.Substring(model.UserEmail.IndexOf("@") + 1);
            string strFrom = "908472235";
            string strFromPass = "xuanling0203";
            string strto = model.UserEmail;
            string strSubject = "账号激活";
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
            sb.AppendFormat("<a href='http://localhost:4371/WuYou/User/MailValidateSuccess.aspx?userName={0}&validateCode={1}'>点击这里</a></br>", model.UserAccount, model.checkNumber);
            sb.AppendFormat("如未能激活请点击下面链接：<a href='http://localhost:4371/WuYou/User/MailValidateSuccess.aspx?userName={0}&validateCode={1}'>http://localhost:4371/WuYou/User/MailValidateSuccess.aspx?userName={2}&validateCode={3}</a></br>", model.UserAccount, model.checkNumber, model.UserAccount, model.checkNumber);
            WuYou.BLL.User.SendSMTPEMail(strSmtpServer, strFrom, strFromPass, strto, strSubject, sb.ToString());
            Page.Alert("发送成功");

            nva0.Visible = false;
            nva1.Visible = true;
        }
        catch (Exception ex)
        {
            Page.Alert("发送失败：" + ex.Message);
        }
    }**/

    /// <summary>
    /// 发送邮件
    /// </summary>
    /// <param name="strSmtpServer"></param>
    /// <param name="strFrom"></param>
    /// <param name="strFromPass"></param>
    /// <param name="strto"></param>
    /// <param name="strSubject"></param>
    /// <param name="strBody"></param>
    public static void SendSMTPEMail(string strSmtpServer, string strFrom, string strFromPass, string strto, string strSubject, string strBody)
    {
        System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient(strSmtpServer);
        client.UseDefaultCredentials = false;
        client.Credentials =
        new System.Net.NetworkCredential(strFrom, strFromPass);
        client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(strFrom, strto, strSubject, strBody);
        message.BodyEncoding = System.Text.Encoding.UTF8;
        message.IsBodyHtml = true;
        client.Send(message);
    }
}