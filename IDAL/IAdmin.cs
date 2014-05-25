
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IDAL
{
    public interface IAdmin
    {
        void Add(AdminInfo admin);
        void Remove(AdminInfo admin);
        void Modify(AdminInfo admin);
        IList<AdminInfo> GetAll();
        AdminInfo Get(int id);
        AdminInfo FindByName(string name);
    }
}
