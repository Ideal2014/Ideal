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

/// <summary>
/// 功能：纯担保交易接口接入页
/// 版本：3.3
/// 日期：2012-07-05
/// 说明：
/// 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
/// 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
/// 
/// /////////////////注意///////////////////////////////////////////////////////////////
/// 如果您在接口集成过程中遇到问题，可以按照下面的途径来解决
/// 1、商户服务中心（https://b.alipay.com/support/helperApply.htm?action=consultationApply），提交申请集成协助，我们会有专业的技术工程师主动联系您协助解决
/// 2、商户帮助中心（http://help.alipay.com/support/232511-16307/0-16307.htm?sh=Y&info_type=9）
/// 3、支付宝论坛（http://club.alipay.com/read-htm-tid-8681712.html）
/// 
/// 如果不想使用扩展功能请把扩展功能参数赋空值。
/// </summary>
public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        IBLL.ITeacher tea = BLLFactory.DataAccess.CreateTeacher();
        

        int plan = Convert.ToInt32(Request.QueryString["plan"]);
        int tid = Convert.ToInt32(Request.QueryString["tid"]);
        String tNick = tea.Get(tid).Tea_Nickname;
        String planName = "";
        String discribe = "";
        double price = 0;
        switch (plan) 
        {
            case 1:
                planName = "普通版";
                price = 299;
                discribe = "可与智能外教交流1个月";
                break;
            case 2:
                planName = "高级版";
                price = 499;
                discribe = "可与智能外教交流2个月";
                break;
            case 3:
                planName = "专业版";
                price = 899;
                discribe = "可与智能外教交流半年";
                break;
            case 4:
                planName = "旗舰版";
                price = 1699;
                discribe = "可与智能外教交流一年";
                break;

        }
        

        WIDout_trade_no.Text = GenerateRandom(10);
        WIDsubject.Text = tNick+ planName;
        WIDprice.Text = Convert.ToString(price );
        WIDbody.Text = discribe;
       
    }

    private static char[] constant = 
{ 
'0','1','2','3','4','5','6','7','8','9'
};




    public static string GenerateRandom(int p)
    {
        System.Text.StringBuilder newRandom = new System.Text.StringBuilder(10);
        Random rd = new Random();
        for (int i = 0; i < p; i++)
        {
            newRandom.Append(constant[rd.Next(10)]);
        }
        return newRandom.ToString();
    }



    protected void BtnAlipay_Click(object sender, EventArgs e)
    {
        IBLL.IOrderRecord order = BLLFactory.DataAccess.CreateOrderRecord();
        Model.OrderRecordInfo ord = new Model.OrderRecordInfo();
        ord.Ord_Plan = Convert.ToInt32(Request.QueryString["plan"]);
        ord.Ord_Time = System.DateTime.Now;
        ord.Stu_ID = Convert.ToInt32(Request.Cookies["usr"].Values["ID"]);
        ord.Tea_ID = Convert.ToInt32(Request.QueryString["tid"]);
        ord.Ord_Num = Convert.ToInt32(WIDout_trade_no.Text);

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
        string out_trade_no = WIDout_trade_no.Text.Trim();
        //商户网站订单系统中唯一订单号，必填
        //订单名称
        string subject = WIDsubject.Text.Trim();
        //必填
        //付款金额
        string price = WIDprice.Text.Trim();
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
        string body = WIDbody.Text.Trim();
        //商品展示地址
        string show_url ="http://www.xxx.com/myorder.html";
        //需以http://开头的完整路径，如：http://www.xxx.com/myorder.html
        //收货人姓名
        string receive_name = WIDreceive_name.Text.Trim();
        //如：张三
        //收货人地址
        string receive_address = "";
        //如：XX省XXX市XXX区XXX路XXX小区XXX栋XXX单元XXX号
        //收货人邮编
        string receive_zip = "123456";
        //如：123456
        //收货人电话号码
        string receive_phone = "0571-88158090";
        //如：0571-88158090
        //收货人手机号码
        string receive_mobile = "13312341234";
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
        Response.Write(sHtmlText);
        
    }
}
