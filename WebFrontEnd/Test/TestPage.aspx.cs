using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Model;

/*
 * @author 余春帆 
 */

public partial class Test_Default : System.Web.UI.Page
{
    int testNO = 0;
    IList<TestInfo> tests = null; 

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {               
            tests = getData();                                      //获取数据
            if (!IsPostBack)
            {
                if (testNO < tests.Count)
                {
                    Label2.Text = Convert.ToString(testNO + 1);
                    Label3.Text = tests.ElementAt<TestInfo>(testNO).Tes_Detail;
                    btgp.Items[0].Text = tests.ElementAt<TestInfo>(testNO).Tes_A;
                    btgp.Items[1].Text = tests.ElementAt<TestInfo>(testNO).Tes_B;
                    btgp.Items[2].Text = tests.ElementAt<TestInfo>(testNO).Tes_C;
                    btgp.Items[3].Text = tests.ElementAt<TestInfo>(testNO).Tes_D;
                }
                else
                    throw new Exception();
                Session["goal"] = 0;


            }
            else
            {
                testNO = Convert.ToInt32(Label2.Text);
            }
        }
        catch
        {
            throw new Exception();
        }
    }

    protected IList<TestInfo> getData()                             //读取数据库数据
    {
        IBLL.ITest test = BLLFactory.DataAccess.CreateTest();
        IList<TestInfo> tests = test.GetAll();                      //读取全部测试题
        return tests;
    }

    protected void next_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(tests.ElementAt<TestInfo>(testNO - 1).Tes_Answer) == btgp.SelectedIndex + 1)
            Session["goal"] = (100.0 / tests.Count) + Convert.ToDouble(Session["goal"]);                //记录分数
        if (testNO < tests.Count)
        {
            Label2.Text = Convert.ToString(testNO + 1);
            Label3.Text = tests.ElementAt<TestInfo>(testNO).Tes_Detail;
            btgp.Items[0].Text = tests.ElementAt<TestInfo>(testNO).Tes_A;
            btgp.Items[1].Text = tests.ElementAt<TestInfo>(testNO).Tes_B;
            btgp.Items[2].Text = tests.ElementAt<TestInfo>(testNO).Tes_C;
            btgp.Items[3].Text = tests.ElementAt<TestInfo>(testNO).Tes_D;
        }
        else
        {                                                                                           //显示总分
            Label3.Text="<br/>";

            Label2.Text = "您的得分是：" + Session["goal"] + "<br/><br/><br/><br/><br/>";
            btgp.Visible = false;
            next.Text = "返回个人中心";
            next.PostBackUrl = "~/Purchase/AccountInfo.aspx";
        }
    }
}