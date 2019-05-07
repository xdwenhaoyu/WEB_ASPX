using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace DBBasics
{
    public partial class CommandExample : System.Web.UI.Page
    {
        //构建连接字符串
        private string connectionString =
               "Data Source=.;Initial Catalog=AdventureWorks2008R2;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSelect_Click(object sender, EventArgs e)
        {
            //构建SQL字符串
            string queryString = "SELECT [AddressID],[AddressLine1],[City],[StateProvinceID],[PostalCode]" +
                                        " FROM [Person].[Address] WHERE [City]='shenzhen'";

            //实例化SqlConnection对象，并规定了SqlConnection对象的范围
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                //实例化SqlCommand对象
                SqlCommand command = new SqlCommand(queryString, connection);

                //在异常处理try/catch块中打开数据连接并完成数据的操作
                try
                {
                    connection.Open();

                    //实例化SqlDataReader对象
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Response.Write("编号:" + reader["AddressID"] + ";");
                        Response.Write("<br/>");
                        Response.Write("地址:" + reader["AddressLine1"] + ";");
                        Response.Write("<br/>");
                    }
                    reader.Close();
                }
                catch (Exception ex) //当出现异常时要执行的语句
                {
                    Response.Write(ex.Message);
                }
                finally  //无论如何都要执行的语句
                {
                    connection.Close();
                }
            }//结束SqlConnection对象的范围，并释放对象
        }

        private void doNonQuery(string nonQueryString)
        {
            //实例化SqlConnection对象，并规定了SqlConnection对象的范围
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                //实例化SqlCommand对象
                SqlCommand command = new SqlCommand(nonQueryString, connection);

                //在异常处理try/catch块中打开数据连接并完成数据的操作
                try
                {
                    connection.Open();
                    int i = command.ExecuteNonQuery();
                    Response.Write("执行完毕，" + i + "条数据受到影响");

                }
                catch (Exception ex) //当出现异常时要执行的语句
                {
                    Response.Write(ex.Message);
                }
                finally  //无论如何都要执行的语句
                {
                    connection.Close();
                }
            }//结束SqlConnection对象的范围，并释放对象
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            //构建SQL字符串
            string nonQueryString = "DELETE FROM [Person].[Address] WHERE [City]='shenzhen'";
            //执行SQL命令
            doNonQuery(nonQueryString);
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            //构建SQL字符串
            string nonQueryString = "UPDATE [Person].[Address] SET [AddressLine1] = 'Shenzhen Nanshan No.222'" +
                                         " WHERE [City]='shenzhen'";
            //执行SQL命令
            doNonQuery(nonQueryString);
        }

        protected void btInsert_Click(object sender, EventArgs e)
        {
            //构建SQL字符串
            string nonQueryString = "INSERT INTO [Person].[Address] " +
                      "([AddressLine1],[City],[StateProvinceID],[PostalCode]) " +
                      "VALUES ('Shenzhen Nanshan No.111', 'shenzhen', '79', '999000')";
            //执行SQL命令
            doNonQuery(nonQueryString);
        }
    }
}