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
    public partial class ViewChild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Read Connection String " StudentEportfolioConnectionString" from web.config file
 
             string strConn = ConfigurationManager.ConnectionStrings
                 ["StudentEPortfolioConnectionString"].ToString();

            //Instantiate a SqlConnection object with the Connection  String read
            SqlConnection conn = new SqlConnection(strConn);

            // Instantiate SQLCOMMAND object, supply it with the SQL statement
            //SELECT that operates against the database, and the connection object 
            //used for connecting to database 
            SqlCommand cmd = new SqlCommand("SELECT * FROM Student INNER JOIN ViewingRequest "
                +"ON ViewingRequest.StudentID = Student.StudentID "
                +"WHERE ParentID = " + Session["ParentID"].ToString() + "AND ViewingRequest.Status = 'A'", conn);

            //Instantiate a DataAdapter oject and pass the SqlCommand object
            // created as a parameter 
            SqlDataAdapter daStaff = new SqlDataAdapter(cmd);

            //create a dataset object to contain the records retrieved from database
            DataSet result = new DataSet();

            //a connection must be opened before any operations made 
            conn.Open();

            // use dataadapter to fetch data to a table "StaffDetails" in DataSet.
            //DataSet " Result" will store the result of the SELECT operation.
            daStaff.Fill(result, "StudentDetails");

            //A connection should always be closed , whether error occurs or not. 
            conn.Close();

            //Specify gridview to gt data from table " StaffDetails" 
            // in DataSet "result"
            gvStudent.DataSource = result.Tables["StudentDetails"];

            //display the list of data in GridView 
            gvStudent.DataBind();
        }

        
    }
}