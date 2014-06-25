using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Test_Default : System.Web.UI.Page
{
    private  IBLL.ITest bllTest = BLLFactory.DataAccess.CreateTest();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                Bind();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        
        }
    }

    private void Bind()
    {
        TestGrid.DataSource = bllTest.GetTestList();
        TestGrid.DataBind();
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        var button = sender as Button;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.TestGrid.Rows[gvr.RowIndex].FindControl("TestID");
        int id = Int32.Parse(lab.Text.ToString());
        bllTest.Remove(bllTest.Get(id));
        Bind();
    }

}