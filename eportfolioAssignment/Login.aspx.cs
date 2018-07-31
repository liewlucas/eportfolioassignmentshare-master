using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eportfolioAssignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ParentCheck() //Lucas
        {
            //read inputs
            string loginID = loginUsername.Text.ToLower();
            string password = loginPassword.Text.ToString();

            //read radiobuttonlist 
            string userType = "";
            if (RadioButtonList1.SelectedIndex == 3)
                userType = "Parent";

            //read connection string "EPortfolioConnectionString" from web.config file
            string strConn = ConfigurationManager.ConnectionStrings
                ["StudentEPortfolioConnectionString"].ToString();

            //Instatiate a SqlConenction object with the COnnction String raed.
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a Sql Command object, supply ti with an  SQL Statement
            SqlCommand cmd = new SqlCommand
                ("SELECT * FROM Parent", conn);

            //create dataset
            DataSet result = new DataSet();

            //create DataAdapter object
            SqlDataAdapter daParent = new SqlDataAdapter(cmd);

            //Open COnenction
            conn.Open();

            //Store in table in dataset
            daParent.Fill(result, "ParentTable");

            //close connection
            conn.Close();

            //creating datatable
            DataTable table = result.Tables["ParentTable"];
            //defining primary key
            table.PrimaryKey = new DataColumn[]
            {
                table.Columns["EmailAddr"]
            };

            //comparing login id (email) to table to get ID
            DataRow foundRow = table.Rows.Find(loginID);


            if (foundRow != null)
            {
                string parentID = foundRow[0].ToString();
                string parentName = foundRow[1].ToString();
                if (password == foundRow[3].ToString() && userType == "Parent")
                {
                    // save the parent id in the session
                    Session["ParentID"] = parentID;
                    Session["ParentName"] = parentName;
                    Response.Redirect("ParentMaster.aspx");
                }
                else
                    LoginMessage.Text = "Check user and password again.";
            }

            else
            {
                LoginMessage.Text = "Credentials not valid.";
            }
        }
        protected void loginButton_Click(object sender, EventArgs e)
        {
            ParentCheck();
        }
    }
}