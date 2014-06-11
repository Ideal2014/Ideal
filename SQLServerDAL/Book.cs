
using Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SQLServerDAL
{
    public class Book : IDAL.IBook
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IBook.Add(BookInfo book)
        {
            DataContext ctx = new DataContext(connection);
            ITable books = ctx.GetTable<BookInfo>();
            books.InsertOnSubmit(book);
            ctx.SubmitChanges();
        }

        void IDAL.IBook.Remove(BookInfo book)
        {

            DataContext ctx = new DataContext(connection);
            
            ITable books = ctx.GetTable<BookInfo>();
            books.Attach(book);
            books.DeleteOnSubmit(book);
            ctx.SubmitChanges();
        }

        void IDAL.IBook.Modify(BookInfo book)
        {
            DataContext ctx = new DataContext(connection);
            ITable<BookInfo> books = ctx.GetTable<BookInfo>();
            IQueryable<BookInfo> query = from o in books
                                         where o.Boo_ID == book.Boo_ID
                                            select o;
            foreach (BookInfo o in query)
            {
                o.Boo_Desribe = book.Boo_Desribe;
                o.Boo_Image = book.Boo_Image;
                o.Boo_Preview = book.Boo_Preview;
                o.Boo_RegisterDate = book.Boo_RegisterDate;
                o.Boo_View = book.Boo_View;
                o.Tea_ID = book.Tea_ID;
            }
            ctx.SubmitChanges();
        }

        IList<BookInfo> IDAL.IBook.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<BookInfo> books = ctx.GetTable<BookInfo>();
            return books.ToList<BookInfo>(); ;
        }



        BookInfo IDAL.IBook.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<BookInfo> books = ctx.GetTable<BookInfo>();
            IQueryable<BookInfo> query = from o in books
                                            where o.Boo_ID == id
                                            select o;
            return query.FirstOrDefault<BookInfo>();
        }

        DataSet IDAL.IBook.GetBookList()
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr = string.Format("SELECT tb_Book.Boo_ID, tb_Book.Boo_Image, tb_Book.Boo_Desribe, tb_Book.Boo_Desribe, tb_Book.Boo_RegisterDate, tb_Book.Boo_Preview, tb_Book.Boo_View, tb_Book.Boo_Name, tb_Book.Tea_ID, tb_Teacher.Tea_Name FROM tb_Book INNER JOIN tb_Teacher ON tb_Book.Tea_ID = tb_Teacher.Tea_ID ");
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
