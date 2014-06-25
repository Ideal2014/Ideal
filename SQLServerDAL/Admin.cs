
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
    public class Admin : IDAL.IAdmin
    {
        private string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];


        void IDAL.IAdmin.Add(AdminInfo admin)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable admins = ctx.GetTable<AdminInfo>();
                admins.InsertOnSubmit(admin);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IAdmin.Remove(AdminInfo admin)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable admins = ctx.GetTable<AdminInfo>();
                admins.Attach(admin);
                admins.DeleteOnSubmit(admin);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IAdmin.Modify(AdminInfo admin)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
                IQueryable<AdminInfo> query = from o in admins
                                              where o.Adm_ID == admin.Adm_ID
                                              select o;
                foreach (AdminInfo o in query)
                {
                    o.Adm_LastLogin = admin.Adm_LastLogin;
                    o.Adm_Email = admin.Adm_Email;
                    o.Adm_Password = admin.Adm_Password;
                    o.Adm_UserName = admin.Adm_UserName;
                }
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        IList<AdminInfo> IDAL.IAdmin.GetAll()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
                return admins.ToList<AdminInfo>();
            }
            finally
            {
            }
        }



        AdminInfo IDAL.IAdmin.Get(int id)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
                IQueryable<AdminInfo> query = from a in admins
                                              where a.Adm_ID == id
                                              select a;
                return query.FirstOrDefault<AdminInfo>();
            }
            finally
            {
            }
        }



        AdminInfo IDAL.IAdmin.FindByName(string name)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
                IQueryable<AdminInfo> query = from a in admins
                                              where a.Adm_UserName == name
                                              select a;
                return query.FirstOrDefault<AdminInfo>();
            }
            finally
            {
            }
        }


        System.Data.DataSet IDAL.IAdmin.getAdminList()
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr = "SELECT * FROM      AdminInfo";
                SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
                DataSet myds = new DataSet();
                sqlcon.Open();
                myda.Fill(myds);
                sqlcon.Close();
                return myds;
            }
            finally
            {
                if (sqlcon != null)
                    sqlcon.Close();
            }
        }


        IList<AdminInfo> IDAL.IAdmin.GetNotAdmin()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
                IQueryable<AdminInfo> query = from a in admins
                                              where a.Adm_Role != "admin"
                                              select a;
                return query.ToList<AdminInfo>();
            }
            finally
            {
            }
        }
    }
}