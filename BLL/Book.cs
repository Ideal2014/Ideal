using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Book : IBLL.IBook
    {
        private static readonly IDAL.IBook dal = DALFactory.DataAccess.CreateBook();

        void IBLL.IBook.Add(BookInfo book)
        {
            dal.Add(book);
        }

        void IBLL.IBook.Remove(BookInfo book)
        {
            dal.Remove(book);
        }

        void IBLL.IBook.Modify(BookInfo book)
        {
            dal.Modify(book);
        }

        IList<BookInfo> IBLL.IBook.GetAll()
        {
            return dal.GetAll();
        }

        BookInfo IBLL.IBook.Get(int id)
        {
            return dal.Get(id);
        }
    }
}
