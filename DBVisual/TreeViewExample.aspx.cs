using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DBVisual
{
    public partial class TreeViewExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tvCatalog_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            if (e.Node.ChildNodes.Count == 0)
            {
                switch (e.Node.Depth)
                {
                    case 0:
                        PopulateC1(e.Node);
                        break;
                    case 1:
                        PopulateC2(e.Node);
                        break;
                }
            }
        }

        private void PopulateC1(TreeNode node)
        {
            SqlCommand sqlQuery = new SqlCommand(
                "SELECT [ProductCategoryID],[Name] FROM [Production].[ProductCategory] ORDER BY [ProductCategoryID]");
            DataSet resultSet;
            resultSet = RunQuery(sqlQuery);
            if (resultSet.Tables.Count > 0)
            {
                foreach (DataRow row in resultSet.Tables[0].Rows)
                {
                    TreeNode NewNode = new
                        TreeNode(row["Name"].ToString(),
                        row["ProductCategoryID"].ToString());
                    NewNode.PopulateOnDemand = true;
                    NewNode.SelectAction = TreeNodeSelectAction.Expand;
                    node.ChildNodes.Add(NewNode);
                }
            }
        }

        private void PopulateC2(TreeNode node)
        {
            SqlCommand sqlQuery = new SqlCommand();
            sqlQuery.CommandText = "SELECT [ProductSubcategoryID],[ProductCategoryID],[Name] FROM [Production].[ProductSubcategory]" +
                " WHERE ([ProductCategoryID] = @ProductCategoryID) ORDER BY [ProductSubcategoryID]";
            sqlQuery.Parameters.Add("@ProductCategoryID", SqlDbType.NVarChar).Value = node.Value;
            DataSet ResultSet = RunQuery(sqlQuery);
            if (ResultSet.Tables.Count > 0)
            {
                foreach (DataRow row in ResultSet.Tables[0].Rows)
                {
                    TreeNode NewNode = new
                        TreeNode(row["Name"].ToString(),
                        row["ProductSubcategoryID"].ToString());
                    NewNode.PopulateOnDemand = false;
                    NewNode.SelectAction = TreeNodeSelectAction.Select;
                    node.ChildNodes.Add(NewNode);
                }
            }
        }

        private DataSet RunQuery(SqlCommand sqlQuery)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["AdventureWorksConnectionString"].ConnectionString;
            SqlConnection DBConnection = new SqlConnection(connectionString);
            SqlDataAdapter dbAdapter = new SqlDataAdapter();
            dbAdapter.SelectCommand = sqlQuery;
            sqlQuery.Connection = DBConnection;
            DataSet resultsDataSet = new DataSet();
            try
            {
                dbAdapter.Fill(resultsDataSet);
            }
            catch
            {
                //labelStatus.Text = "Unable to connect to SQL Server.";
            }
            return resultsDataSet;
        }
    }
}