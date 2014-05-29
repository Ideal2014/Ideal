
using Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class Admin : IDAL.IAdmin
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];


        void IDAL.IAdmin.Add(AdminInfo admin)
        {
            DataContext ctx = new DataContext(connection);
            ITable admins = ctx.GetTable<AdminInfo>();
            admins.InsertOnSubmit(admin);
            ctx.SubmitChanges();
        }

        void IDAL.IAdmin.Remove(AdminInfo admin)
        {
            DataContext ctx = new DataContext(connection);
            ITable admins = ctx.GetTable<AdminInfo>();
            admins.Attach(admin);
            admins.DeleteOnSubmit(admin);
            ctx.SubmitChanges();
        }

        void IDAL.IAdmin.Modify(AdminInfo admin)
        {
            DataContext ctx = new DataContext(connection);
            ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
            IQueryable<AdminInfo> query = from o in admins
                                          where o.Adm_ID == admin.Adm_ID
                                          select o;
            foreach (AdminInfo o in query)
            {
                o.Adm_LastLogin = admin.Adm_LastLogin;
                o.Adm_Nickname = admin.Adm_Nickname;
                o.Adm_Password = admin.Adm_Password;
                o.Adm_UserName = admin.Adm_UserName;
            }
            ctx.SubmitChanges();
        }

        IList<AdminInfo> IDAL.IAdmin.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
            return admins.ToList<AdminInfo>(); ;
        }



        AdminInfo IDAL.IAdmin.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<AdminInfo> admins = ctx.GetTable<AdminInfo>();
            IQueryable<AdminInfo> query = from a in admins
                                          where a.Adm_ID == id
                                          select a;
            return query.FirstOrDefault<AdminInfo>();
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
    }
}