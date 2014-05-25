using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Admin : IBLL.IAdmin
    {
        private static readonly IDAL.IAdmin dal = DALFactory.DataAccess.CreateAdmin();

        void IBLL.IAdmin.Add(AdminInfo admin)
        {
            dal.Add(admin);
        }

        void IBLL.IAdmin.Remove(AdminInfo admin)
        {
            dal.Remove(admin);
        }

        void IBLL.IAdmin.Modify(AdminInfo admin)
        {
            dal.Modify(admin);
        }

        IList<AdminInfo> IBLL.IAdmin.GetAll()
        {
            return dal.GetAll();
        }

        AdminInfo IBLL.IAdmin.Get(int id)
        {
            return dal.Get(id);
        }

        AdminInfo IBLL.IAdmin.FindByName(string name)
        {
            return dal.FindByName(name);
        }
    }
}
