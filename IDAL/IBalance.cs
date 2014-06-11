using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace IDAL
{
    public interface IBalance
    {
        void Add(BalanceInfo balance);
        void Remove(BalanceInfo balance);
        void Modify(BalanceInfo balance);
        IList<BalanceInfo> GetAll();
        BalanceInfo Get(int id);
        DataSet GetBalanceWithTea(int id);
    }
}
