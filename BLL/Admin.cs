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
            if (admin == null)
                throw new Exception();
            dal.Add(admin);
        }

        void IBLL.IAdmin.Remove(AdminInfo admin)
        {
            if (admin == null)
                throw new Exception();
            dal.Remove(admin);
        }

        void IBLL.IAdmin.Modify(AdminInfo admin)
        {
            if (admin == null)
                throw new Exception();
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
            if (name == null || name.Equals(String.Empty))
                throw new Exception();
            return dal.FindByName(name);
        }


        System.Data.DataSet IBLL.IAdmin.getAdminList()
        {
            return dal.getAdminList();
        }
    }
}
