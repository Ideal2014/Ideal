using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Base_Count : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    private IBLL.IOrderRecord bllOrderRecord = BLLFactory.DataAccess.CreateOrderRecord();
    private IBLL.IClassRecord bllClassRecord = BLLFactory.DataAccess.CreateClassRecord();
    private IBLL.IFeedback bllFeedback = BLLFactory.DataAccess.CreateFeedback();
    private IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        IList<StudentInfo> studentList = bllStudent.GetAll();
        StudentNum.Text = studentList.Count.ToString();

        IList<StudentInfo> newStudentList = bllStudent.GetStudentsByDate(DateTime.Now);
        NewStudentNum.Text = newStudentList.Count.ToString();

        IList<OrderRecordInfo> orderList = bllOrderRecord.GetAll();
        OrderNum.Text = orderList.Count.ToString();

        IList<OrderRecordInfo> newOrderList = bllOrderRecord.GetOrdersByDate(DateTime.Now);
        NewOrderNum.Text = newOrderList.Count.ToString();

        IList<ClassRecordInfo> classList = bllClassRecord.GetAll();
        ClassNum.Text = classList.Count.ToString();

        IList<ClassRecordInfo> newClassList = bllClassRecord.GetClasssByDate(DateTime.Now);
        NewClassNum.Text = newClassList.Count.ToString();

        IList<FeedbackInfo> feedbackList = bllFeedback.GetAll();
        FeeNum.Text = feedbackList.Count.ToString();

        IList<FeedbackInfo> newFeedbackList = bllFeedback.GetFeedBackByDate(DateTime.Now);
        NewFeeNum.Text = newFeedbackList.Count.ToString();

        HiddenClassNumber.Value = getClassNumberJson(classList);

        HiddenOrderNumber.Value = getOrderNumberJson(orderList);

        DataSet dsClassPercent = bllClassRecord.getClassPercent();
        HiddenClassPercent.Value = dsToJson(dsClassPercent);

        DataSet dsOrderPercent = bllOrderRecord.getOrderPercent();
        HiddenOrderPercent.Value = dsToJson(dsOrderPercent);
    }
    private string getOrderNumberJson(IList<OrderRecordInfo> orders)
    {
        int[,] result = new int[10, 2];
        for (int i = 0; i < 10; i++)
        {
            result.SetValue(i + 1, i, 0);
            result.SetValue(0, i, 1);
        }
        for (int i = 0; i < orders.Count; i++)
        {
            OrderRecordInfo o = orders[i];

            int off = DateTime.Now.Day - o.Ord_Time.Day;
            if (off >= 10 | off == 0)
                continue;
            result.SetValue(Int32.Parse(result.GetValue(off - 1, 1).ToString()) + 1, off - 1, 1);
        }
        System.Text.StringBuilder str = new System.Text.StringBuilder("[");
        for (int i = 0; i < 10; i++)
        {
            str.Append("[");
            for (int j = 0; j < 2; j++)
            {
                str.Append(result.GetValue(i, j) + ",");
            }
            str.Append("],");
        }
        str.Append("]");
        return str.ToString();
    }
    private string getClassNumberJson(IList<ClassRecordInfo> classes)
    {
        int[,] result = new int[10, 2];
        for (int i = 0; i < 10; i++)
        {
            result.SetValue(i + 1, i, 0);
            result.SetValue(0, i, 1);
        }
        for (int i = 0; i < classes.Count; i++)
        {
            ClassRecordInfo o = classes[i];
            int off = DateTime.Now.Day - o.Cla_StartTime.Day;
            if (off >= 10 | off == 0)
                continue;
            result.SetValue(Int32.Parse(result.GetValue(off - 1, 1).ToString()) + 1, off - 1, 1);
        }
        System.Text.StringBuilder str = new System.Text.StringBuilder("[");
        for (int i = 0; i < 10; i++)
        {
            str.Append("[");
            for (int j = 0; j < 2; j++)
            {
                str.Append(result.GetValue(i, j) + ",");
            }
            str.Append("],");
        }
        str.Append("]");
        return str.ToString();
    }



    private string dsToJson(DataSet ds)
    {
        System.Text.StringBuilder str = new System.Text.StringBuilder("[");

        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            str.Append("{");
            for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
            {
                str.Append(string.Format("\"{0}\":\"{1}\",", ds.Tables[0].Columns[j].ColumnName, ds.Tables[0].Rows[i][j].ToString()));
            }
            str.Append("},");
        }
        str.Append("]");
        return str.ToString();
    }
}