using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Model;

public partial class Test_Default : System.Web.UI.Page
{
    int testNO = 0;
    IList<TestInfo> tests = null; 

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            tests = getData();
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

    protected IList<TestInfo> getData()
    {
        IBLL.ITest test = BLLFactory.DataAccess.CreateTest();
        IList<TestInfo> tests = test.GetAll();
        return tests;
    }

    protected void next_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(tests.ElementAt<TestInfo>(testNO - 1).Tes_Answer) == btgp.SelectedIndex + 1)
            Session["goal"] = (100.0 / tests.Count) + Convert.ToDouble(Session["goal"]);
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
        {
            Response.Write("<script>alert('您的得分是：" + Session["goal"] + "')</script>");
            Response.Redirect("~/Purchase/AccountInfo.aspx");
        }
    }
}