using System.Data;
using Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace SQLServerDAL
{
    public class Balance : IDAL.IBalance
    {
        private  string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IBalance.Add(BalanceInfo balance)
        {
            DataContext ctx = new DataContext(connection);
            ITable balances = ctx.GetTable<BalanceInfo>();
            balances.InsertOnSubmit(balance);
            ctx.SubmitChanges();
        }

        void IDAL.IBalance.Remove(BalanceInfo balance)
        {

            DataContext ctx = new DataContext(connection);

            ITable balances = ctx.GetTable<BalanceInfo>();
            balances.Attach(balance);
            balances.DeleteOnSubmit(balance);
            ctx.SubmitChanges();
        }

        void IDAL.IBalance.Modify(BalanceInfo balance)
        {
            DataContext ctx = new DataContext(connection);
            ITable<BalanceInfo> balances = ctx.GetTable<BalanceInfo>();
            IQueryable<BalanceInfo> query = from o in balances
                                            where o.Bal_ID == balance.Bal_ID
                                            select o;
            foreach (BalanceInfo o in query)
            {
                o.Bal_Time = balance.Bal_Time;
                o.Stu_ID = balance.Stu_ID;
                o.Tea_ID = balance.Tea_ID;
            }
            ctx.SubmitChanges();
        }

        IList<BalanceInfo> IDAL.IBalance.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<BalanceInfo> balances = ctx.GetTable<BalanceInfo>();
            return balances.ToList<BalanceInfo>(); ;
        }



        BalanceInfo IDAL.IBalance.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<BalanceInfo> balances = ctx.GetTable<BalanceInfo>();
            IQueryable<BalanceInfo> query = from o in balances
                                            where o.Bal_ID == id
                                            select o;
            return query.FirstOrDefault<BalanceInfo>();
        }

        DataSet IDAL.IBalance.GetBalanceWithTea(int id)
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr = string.Format("select * from tb_Balance join tb_Teacher on tb_Balance.Tea_ID = tb_Teacher.Tea_ID where Stu_ID = {0}",id);
                SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
                DataSet myds = new DataSet();
                sqlcon.Open();
                myda.Fill(myds);
                return myds;
            }
            finally
            {
                if (sqlcon != null)
                    sqlcon.Close();
            }

        }
    }
}
