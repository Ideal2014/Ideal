using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Xml;
using Com.Alipay;
using Model;

/*
 * @author 余春帆 
 */

public partial class Purchase_TeachersPurchase : System.Web.UI.Page
{
    IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    int stdID = -1;
    String tid;
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["usr"];
        if (null != cookie)
        {
            try
            {
                stdID = Convert.ToInt32(cookie.Values["ID"]);
            }
            catch
            {
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else
            Response.Redirect("~/Student/Login.aspx");
        
        
        tid = Request.QueryString["tid"];


    }

    protected void button1_Click(object sender, EventArgs e)
    {
        BtnAlipay_Click(Convert.ToInt32(tid), 1);
    }
    protected void button4_Click(object sender, EventArgs e)
    {
        BtnAlipay_Click(Convert.ToInt32(tid), 4);
    }
    protected void button3_Click(object sender, EventArgs e)
    {
        BtnAlipay_Click(Convert.ToInt32(tid), 3);
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        BtnAlipay_Click(Convert.ToInt32(tid), 2);
    }



    private static char[] constant = 
{ 
'0','1','2','3','4','5','6','7','8','9'
};




    public static string GenerateRandom(int p)                      //生成随机数
    {
        System.Text.StringBuilder newRandom = new System.Text.StringBuilder(10);
        Random rd = new Random();
        for (int i = 0; i < p; i++)
        {
            newRandom.Append(constant[rd.Next(10)]);
        }
        return newRandom.ToString();
    }



    protected void BtnAlipay_Click(int tid, int plan)
    {
        IBLL.ITeacher tea = BLLFactory.DataAccess.CreateTeacher();
        IBLL.IBalance balance = BLLFactory.DataAccess.CreateBalance();
        Model.BalanceInfo bal = balance.GetbyTidSid(tid, stdID);
        
        String tNick = tea.Get(tid).Tea_Nickname;
        String planName = "";
        String discribe = "";
        String ord_NUM = Convert.ToString(GenerateRandom(9));
        double pri= 0;
        DateTime balTime = bal.Bal_Time;
        Boolean exist = true;
        if (null != bal)
        {
            if (System.DateTime.Now.CompareTo(balTime) >= 0)
            {
                balTime = System.DateTime.Now;
            }
        }
        else
        {
            exist = false;
            bal = new BalanceInfo();
            balTime = System.DateTime.Now;
            bal.Stu_ID = stdID;
            bal.Tea_ID = tid;
        }
        
        switch (plan)                                                   //判断购买类型
        {
            case 1:
                planName = "普通版";
                pri = 299;
                discribe = "可与智能外教交流1个月";
                balTime.AddMonths(1);
                break;
            case 2:
                planName = "高级版";
                pri = 499;
                discribe = "可与智能外教交流2个月";
                balTime.AddMonths(2);
                break;
            case 3:
                planName = "专业版";
                pri = 899;
                discribe = "可与智能外教交流半年";
                balTime.AddMonths(6);
                break;
            case 4:
                planName = "旗舰版";
                pri = 1699;
                discribe = "可与智能外教交流一年";
                balTime.AddMonths(12);
                break;

        }


        bal.Bal_Time = balTime;
        if (exist)
            balance.Modify(bal);
        else
            balance.Add(bal);

        IBLL.IOrderRecord order = BLLFactory.DataAccess.CreateOrderRecord();
        Model.OrderRecordInfo ord = new Model.OrderRecordInfo();
        ord.Ord_Plan = Convert.ToInt32(Request.QueryString["plan"]);
        ord.Ord_Time = System.DateTime.Now;
        ord.Stu_ID = Convert.ToInt32(Request.Cookies["usr"].Values["ID"]);
        ord.Tea_ID = Convert.ToInt32(Request.QueryString["tid"]);
        ord.Ord_Num = Convert.ToInt32(ord_NUM);

        order.Add(ord);
        ////////////////////////////////////////////请求参数////////////////////////////////////////////

        //支付类型
        string payment_type = "1";
        //必填，不能修改
        //服务器异步通知页面路径
        string notify_url = "http://www.xxx.com/create_partner_trade_by_buyer-CSHARP-UTF-8/notify_url.aspx";
        //需http://格式的完整路径，不能加?id=123这类自定义参数

        //页面跳转同步通知页面路径
        string return_url = "http://www.xxx.com/create_partner_trade_by_buyer-CSHARP-UTF-8/return_url.aspx";
        //需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/

        //卖家支付宝帐户
        string seller_email = "11301145@bjtu.edu.cn";
        //必填

        //商户订单号
        string out_trade_no = ord_NUM ;
        //商户网站订单系统中唯一订单号，必填

        //订单名称
        string subject = tNick + planName;
        //必填

        //付款金额
        string price = Convert.ToString(pri);
        //必填

        //商品数量
        string quantity = "1";
        //必填，建议默认为1，不改变值，把一次交易看成是一次下订单而非购买一件商品
        //物流费用
        string logistics_fee = "0.00";
        //必填，即运费
        //物流类型
        string logistics_type = "EXPRESS";
        //必填，三个值可选：EXPRESS（快递）、POST（平邮）、EMS（EMS）
        //物流支付方式
        string logistics_payment = "SELLER_PAY";
        //必填，两个值可选：SELLER_PAY（卖家承担运费）、BUYER_PAY（买家承担运费）
        //订单描述

        string body = discribe;
        //商品展示地址
        string show_url = "http://www.xxx.com/myorder.html";
        //需以http://开头的完整路径，如：http://www.xxx.com/myorder.html

        //收货人姓名
        string receive_name = "";
        //如：张三

        //收货人地址
        string receive_address = "";
        //如：XX省XXX市XXX区XXX路XXX小区XXX栋XXX单元XXX号

        //收货人邮编
        string receive_zip = "";
        //如：123456

        //收货人电话号码
        string receive_phone = "";
        //如：0571-88158090

        //收货人手机号码
        string receive_mobile = "";
        //如：13312341234


        ////////////////////////////////////////////////////////////////////////////////////////////////

        //把请求参数打包成数组
        SortedDictionary<string, string> sParaTemp = new SortedDictionary<string, string>();
        sParaTemp.Add("partner", Config.Partner);
        sParaTemp.Add("_input_charset", Config.Input_charset.ToLower());
        sParaTemp.Add("service", "create_partner_trade_by_buyer");
        sParaTemp.Add("payment_type", payment_type);
        sParaTemp.Add("notify_url", notify_url);
        sParaTemp.Add("return_url", return_url);
        sParaTemp.Add("seller_email", seller_email);
        sParaTemp.Add("out_trade_no", out_trade_no);
        sParaTemp.Add("subject", subject);
        sParaTemp.Add("price", price);
        sParaTemp.Add("quantity", quantity);
        sParaTemp.Add("logistics_fee", logistics_fee);
        sParaTemp.Add("logistics_type", logistics_type);
        sParaTemp.Add("logistics_payment", logistics_payment);
        sParaTemp.Add("body", body);
        sParaTemp.Add("show_url", show_url);
        sParaTemp.Add("receive_name", receive_name);
        sParaTemp.Add("receive_address", receive_address);
        sParaTemp.Add("receive_zip", receive_zip);
        sParaTemp.Add("receive_phone", receive_phone);
        sParaTemp.Add("receive_mobile", receive_mobile);

        //建立请求
        string sHtmlText = Submit.BuildRequest(sParaTemp, "get", "确认");
        Response.Write(sHtmlText);                                  //发送购买请求，支付宝api

    }


}