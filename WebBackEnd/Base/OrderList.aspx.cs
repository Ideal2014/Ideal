using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Base_OrderList : System.Web.UI.Page
{
    private static readonly IBLL.IOrderRecord bllOrderRecord = BLLFactory.DataAccess.CreateOrderRecord();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        OrderGrid.DataSource = bllOrderRecord.GetOrderList();
        OrderGrid.DataBind();
    }
}