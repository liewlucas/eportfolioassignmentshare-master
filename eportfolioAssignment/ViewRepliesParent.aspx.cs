using eportfolioAssignment.Classes;
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
    public partial class ViewRepliesParent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayMentorReply();
        }

        public void displayMentorReply()
        {
            // Read Connection String " StudentEportfolioConnectionString" from web.config file

            string strConn = ConfigurationManager.ConnectionStrings
                ["StudentEPortfolioConnectionString"].ToString();

            //Instantiate a SqlConnection object with the Connection  String read
            SqlConnection conn = new SqlConnection(strConn);

            // Instantiate SQLCOMMAND object, supply it with the SQL statement
            //SELECT that operates against the database, and the connection object 
            //used for connecting to database 
            SqlCommand cmd = new SqlCommand("SELECT Reply.Text, Reply.DateTimePosted FROM Reply INNER JOIN Message "
                + "ON Reply.MessageID = Message.MessageID "
                + "WHERE Message.FromID = " + Session["ParentID"].ToString() + " AND Reply.ParentID IS NULL", conn);

            //Instantiate a DataAdapter oject and pass the SqlCommand object
            // created as a parameter 
            SqlDataAdapter daStaff = new SqlDataAdapter(cmd);

            //create a dataset object to contain the records retrieved from database
            DataSet result = new DataSet();

            //a connection must be opened before any operations made 
            conn.Open();

            // use dataadapter to fetch data to a table "StaffDetails" in DataSet.
            //DataSet " Result" will store the result of the SELECT operation.
            daStaff.Fill(result, "ReplyDetails");

            //A connection should always be closed , whether error occurs or not. 
            conn.Close();

            //Specify gridview to gt data from table " StaffDetails" 
            // in DataSet "result"
            gvMentorReply.DataSource = result.Tables["ReplyDetails"];

            //display the list of data in GridView 
            gvMentorReply.DataBind();
        }

        public void insertreply()
        {
            // Read Connection String " StudentEportfolioConnectionString" from web.config file

            string strConn = ConfigurationManager.ConnectionStrings
                ["StudentEPortfolioConnectionString"].ToString();

            //Instantiate a SqlConnection object with the Connection  String read
            SqlConnection conn = new SqlConnection(strConn);

            // Instantiate SQLCOMMAND object, supply it with the SQL statement
            //SELECT that operates against the database, and the connection object 
            //used for connecting to database 
            SqlCommand cmd = new SqlCommand("SELECT Reply.MessageID FROM Reply INNER JOIN Message "
                + "ON Reply.MentorID = Message.ToID "
                + "WHERE Message.FromID = " + Session["ParentID"].ToString() + " AND Reply.ParentID IS NULL", conn);

            //Instantiate a DataAdapter oject and pass the SqlCommand object
            // created as a parameter 
            SqlDataAdapter daStaff = new SqlDataAdapter(cmd);

            //create a dataset object to contain the records retrieved from database
            DataSet result = new DataSet();

            //a connection must be opened before any operations made 
            conn.Open();

            // use dataadapter to fetch data to a table "StaffDetails" in DataSet.
            //DataSet " Result" will store the result of the SELECT operation.
            daStaff.Fill(result, "MessageID");

            //A connection should always be closed , whether error occurs or not. 
            conn.Close();

            ParentReply objParentReply = new ParentReply();
            objParentReply.MessageID = Convert.ToInt32(result.Tables["MessageID"].Rows[0][0]);
            //objParentReply.MentorID = "NULL" ;
            objParentReply.ParentID = Convert.ToInt32(Session["ParentID"]);
            objParentReply.dateTimePosted = DateTime.Now;
            objParentReply.Text = txtParentReply.Text;

            int id = objParentReply.addReply();

        }

        protected void rplyParent_Click(object sender, EventArgs e)
        {
            insertreply();
            lblConfirmMsg.Text = "Congrats You have Successfully Submitted Your Reply Please Wait for Another Reply Again.";
        }
    }
}