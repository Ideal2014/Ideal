using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
    public class Book : IBLL.IBook
    {
        private  IDAL.IBook dal = DALFactory.DataAccess.CreateBook();

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

        DataSet IBLL.IBook.GetBookList()
        {
            return dal.GetBookList();
        }
    }
}
