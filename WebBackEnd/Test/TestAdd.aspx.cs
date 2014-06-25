using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Test_TestADD : System.Web.UI.Page
{
    private IBLL.ITest bllTest = BLLFactory.DataAccess.CreateTest();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Click(object sender, EventArgs e)
    {
        TestInfo test = new TestInfo();


        test.Tes_Type = TestType.Text.ToString();
        test.Tes_Detail = TextDetail.Text.ToString();
        test.Tes_A = AnswerA.Text.ToString();
        test.Tes_B = AnswerB.Text.ToString();
        test.Tes_C = AnswerC.Text.ToString();
        test.Tes_D = AnswerD.Text.ToString();
        test.Tes_Answer = Convert.ToInt32(TestAnswer.SelectedValue.ToString());

        bllTest.Add(test);
        Response.Redirect("~/Test/TestList.aspx");
    }
}