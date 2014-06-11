using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_AdminList : System.Web.UI.Page
{
    private  IBLL.IAdmin bllAdmin = BLLFactory.DataAccess.CreateAdmin();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {

        AdminList.DataSource = bllAdmin.getAdminList();
        AdminList.DataBind();
    }
    protected void View_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.AdminList.Rows[gvr.RowIndex].FindControl("AdminID");
        int id = Int32.Parse(lab.Text.ToString());
        Response.Redirect("~/User/AdminView.aspx?id=" + id);

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.AdminList.Rows[gvr.RowIndex].FindControl("AdminID");
        int id = Int32.Parse(lab.Text.ToString());
        bllAdmin.Remove(bllAdmin.Get(id));
        Bind();
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/AdminAdd.aspx");
    }
}