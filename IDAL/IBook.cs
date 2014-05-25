using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IDAL
{
    public interface IBook
    {
        void Add(BookInfo book);
        void Remove(BookInfo book);
        void Modify(BookInfo book);
        IList<BookInfo> GetAll();
        BookInfo Get(int id);
    }
}
