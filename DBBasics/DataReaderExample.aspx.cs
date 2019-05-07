using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace DBBasics
{
    public partial class DataReaderExample : System.Web.UI.Page
    {
        //构建连接字符串
        string connectionString =
            "Data Source=.;Initial Catalog=AdventureWorks2008R2;Integrated Security=True;Connect Timeout=30";

        //构建SQL字符串
        string queryString = "SELECT top 10 [AddressID],[AddressLine1] FROM [Person].[Address]";

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btTableClient_Click(object sender, EventArgs e)
        {
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

                    Response.Write("<table border='1'>"); //输出Table的起始标签
                    Response.Write("<tr><td>编号</td><td>地址</td></tr>"); //输出标题行

                    while (reader.Read())
                    {
                        Response.Write("<tr><td>" + reader["AddressID"] + "</td><td>" + reader["AddressLine1"] + "</td></tr>"); //输出数据行
                    }
                    Response.Write("</table>"); //输出Table的终结标签

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

        protected void btTableServer_Click(object sender, EventArgs e)
        {
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
                        TableRow tempRow = new TableRow();

                        TableCell tempCell = new TableCell();
                        tempCell.Text = reader["AddressID"].ToString();
                        tempRow.Cells.Add(tempCell);

                        tempCell = new TableCell();
                        tempCell.Text = reader["AddressLine1"].ToString();
                        tempRow.Cells.Add(tempCell);

                        Table1.Rows.Add(tempRow);
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

        protected void btRepeater_Click(object sender, EventArgs e)
        {
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

                    //设置并绑定数据源
                    Repeater1.DataSource = reader;
                    Repeater1.DataBind();

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

    }
}