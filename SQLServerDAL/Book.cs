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
    public class Book : IDAL.IBook
    {
        private  string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

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
                string sqlstr = string.Format("SELECT BookInfo.Boo_ID, BookInfo.Boo_Image, BookInfo.Boo_Desribe, BookInfo.Boo_Desribe, BookInfo.Boo_RegisterDate, BookInfo.Boo_Preview, BookInfo.Boo_View, BookInfo.Boo_Name, TeacherInfo.Tea_Name FROM BookInfo INNER JOIN TeacherInfo ON BookInfo.Tea_ID = TeacherInfo.Tea_ID ");
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
