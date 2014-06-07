
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class OrderRecord : IDAL.IOrderRecord
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IOrderRecord.Add(OrderRecordInfo orderRecord)
        {
            DataContext ctx = new DataContext(connection);
            ITable orderRecords = ctx.GetTable<OrderRecordInfo>();
            orderRecords.InsertOnSubmit(orderRecord);
            ctx.SubmitChanges();
        }

        void IDAL.IOrderRecord.Remove(OrderRecordInfo orderRecord)
        {

            DataContext ctx = new DataContext(connection);

            ITable orderRecords = ctx.GetTable<OrderRecordInfo>();
            orderRecords.Attach(orderRecord);
            orderRecords.DeleteOnSubmit(orderRecord);
            ctx.SubmitChanges();
        }

        void IDAL.IOrderRecord.Modify(OrderRecordInfo orderRecord)
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            IQueryable<OrderRecordInfo> query = from o in orderRecords
                                                where o.Ord_ID == orderRecord.Ord_ID
                                                select o;
            foreach (OrderRecordInfo o in query)
            {
                o.Ord_Plan = orderRecord.Ord_Plan;
                o.Ord_Time = orderRecord.Ord_Time;
                o.Stu_ID = orderRecord.Stu_ID;
                o.Tea_ID = orderRecord.Tea_ID;
            }
            ctx.SubmitChanges();
        }

        IList<OrderRecordInfo> IDAL.IOrderRecord.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            return orderRecords.ToList<OrderRecordInfo>(); ;
        }



        OrderRecordInfo IDAL.IOrderRecord.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            IQueryable<OrderRecordInfo> query = from o in orderRecords
                                                where o.Ord_ID == id
                                                select o;
            return query.FirstOrDefault<OrderRecordInfo>();
        }


        DataSet IDAL.IOrderRecord.GetOrderList()
        {
            SqlConnection sqlcon = new SqlConnection(connection);
            string sqlstr = "SELECT tb_OrderRecord.Ord_ID, tb_OrderRecord.Ord_Time, tb_Student.Stu_UserName, tb_OrderRecord.Ord_Plan FROM tb_OrderRecord INNER JOIN tb_Student ON tb_OrderRecord.Stu_ID = tb_Student.Stu_ID";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds);
            sqlcon.Close();
            sqlcon.Close();
            return myds;
           
        }
    }
}
