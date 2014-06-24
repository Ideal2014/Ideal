using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.IO;
using BLLSupport;

/*
 * author: summer
 */
public partial class Student_StudentResetPassword : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    //加载页面，显示用户的基本信息
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
        student.Stu_Password = cookie.Values["pass"].Trim();
        if(!bllStudent.CheckLogin(student)){
            Response.Redirect("~/Student/Login.aspx");
        }
        student = bllStudent.Get(student.Stu_ID);
        Mailbox.Text = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"])).Stu_Email;
        Mailbox.Attributes["ContentEditable"]="false";

        Image7.ImageUrl = student.Stu_Image;
        Std_Name.Text = student.Stu_UserName;
        Std_ID.Text = Convert.ToString(student.Stu_ID);
        
    }

    //点击修改密码，向用户发送激活账户的邮件
    //并且修改用户的验证码，自动生成随机字符串
    protected void ResetPassword_Click(object sender, EventArgs e)
    {
            HttpCookie cookie = Request.Cookies["usr"];
            StudentInfo student = bllStudent.Get(Convert.ToInt32(cookie.Values["ID"]));
            student.Stu_Password =Password1.Text.Trim();
            if(bllStudent.CheckLogin(student)&&Password2.Text.Trim().Equals(Password3.Text.Trim())){
                student.Stu_Password = Md5Support.GetMd5String( Password2.Text.Trim());
            student.Stu_Validation = Str(10, false);
            bllStudent.Modify(student);
            try
            { 
            String strSmtpServer = "smtp.163.com";
            String strFrom = "vikivalidation@163.com";
            String strFromPass = "vikiviki";
            String strTo =student.Stu_Email;
            String strSubject = "Viki账号激活";
            StringBuilder sb = new StringBuilder();


       //邮件内容
            sb.AppendFormat("点击下面链接激活账号，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
            sb.AppendFormat("<a href='http://{0}/WebFrontEnd/Student/MailValidateSuccess.aspx?userName={1}&validateCode={2}''>点击这里</a></br>", Request.Url.Authority, student.Stu_ID, student.Stu_Validation);
            sb.AppendFormat("如未能激活请点击下面链接：<a href='http://{0}/WebFrontEnd/Student/MailValidateSuccess.aspx?userName={1}&validateCode={2}'>{3}/Student/MailValidateSuccess.aspx?userName={4}&validateCode={5}</a></br>", Request.Url.Authority, student.Stu_ID, student.Stu_Validation, Server.UrlPathEncode(Request.ApplicationPath), student.Stu_ID, student.Stu_Validation);
            SendSMTPEMail(strSmtpServer, strFrom, strFromPass, strTo, strSubject, sb.ToString());
            Response.Redirect("~/Student/Login.aspx");
               
    }
        catch(Exception ex)
        {
            Console.Out.WriteLine(ex.Data);
            throw ex;
        }
            }
    }
 
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

    //生成随机字符串
    public static string Str(int Length, bool Sleep)
    {
        if (Sleep)
            System.Threading.Thread.Sleep(3);
        char[] Pattern = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
        string result = "";
        int n = Pattern.Length;
        System.Random random = new Random(~unchecked((int)DateTime.Now.Ticks));
        for (int i = 0; i < Length; i++)
        {
            int rnd = random.Next(0, n);
            result += Pattern[rnd];
        }
        return result;
    }
    //验证输入的原密码是否正确
    protected void ResetValidate_ServerValidate(object source, ServerValidateEventArgs args)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        StudentInfo student = new StudentInfo();
        student.Stu_ID = Convert.ToInt32(cookie.Values["ID"]);
        student.Stu_Password = Password1.Text.Trim();
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