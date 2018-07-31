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
    public partial class PostMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getMentorName();

        }

        public void getMentorName()
        {
            // Read Connection String " StudentEportfolioConnectionString" from web.config file

            string strConn = ConfigurationManager.ConnectionStrings
                ["StudentEPortfolioConnectionString"].ToString();

            //Instantiate a SqlConnection object with the Connection  String read
            SqlConnection conn = new SqlConnection(strConn);

            // Instantiate SQLCOMMAND object, supply it with the SQL statement
            //SELECT that operates against the database, and the connection object 
            //used for connecting to database 
            SqlCommand cmd = new SqlCommand("SELECT Mentor.Name FROM Mentor INNER JOIN Student "
                + "ON Mentor.MentorID = Student.MentorID"
                + " INNER JOIN ViewingRequest "
                + "ON ViewingRequest.StudentID = Student.StudentID "
                + "WHERE ParentID = " + Session["ParentID"].ToString(), conn);

            //Instantiate a DataAdapter oject and pass the SqlCommand object
            // created as a parameter 
            SqlDataAdapter daStaff = new SqlDataAdapter(cmd);

            //create a dataset object to contain the records retrieved from database
            DataSet result = new DataSet();

            //a connection must be opened before any operations made 
            conn.Open();

            // use dataadapter to fetch data to a table "StaffDetails" in DataSet.
            //DataSet " Result" will store the result of the SELECT operation.
            daStaff.Fill(result, "MentorDetails");

            //A connection should always be closed , whether error occurs or not. 
            conn.Close();

            lblMentorName.Text = result.Tables["MentorDetails"].Rows[0][0].ToString();

        }

        public void SendMessage()
        {
            // Read Connection String " StudentEportfolioConnectionString" from web.config file

            string strConn = ConfigurationManager.ConnectionStrings
                ["StudentEPortfolioConnectionString"].ToString();

            //Instantiate a SqlConnection object with the Connection  String read
            SqlConnection conn = new SqlConnection(strConn);

            // Instantiate SQLCOMMAND object, supply it with the SQL statement
            //SELECT that operates against the database, and the connection object 
            //used for connecting to database 
            SqlCommand cmd = new SqlCommand("SELECT Mentor.MentorID FROM Mentor INNER JOIN Student "
                + "ON Mentor.MentorID = Student.MentorID"
                + " INNER JOIN ViewingRequest "
                + "ON ViewingRequest.StudentID = Student.StudentID "
                + "WHERE ParentID = " + Session["ParentID"].ToString(), conn);

            //Instantiate a DataAdapter oject and pass the SqlCommand object
            // created as a parameter 
            SqlDataAdapter daStaff = new SqlDataAdapter(cmd);

            //create a dataset object to contain the records retrieved from database
            DataSet result = new DataSet();

            //a connection must be opened before any operations made 
            conn.Open();

            // use dataadapter to fetch data to a table "StaffDetails" in DataSet.
            //DataSet " Result" will store the result of the SELECT operation.
            daStaff.Fill(result, "MentorID");

            //A connection should always be closed , whether error occurs or not. 
            conn.Close();

            //new post message object 
            ParentMessage objPostMessage = new ParentMessage();

            //add entered details to class 
            objPostMessage.fromID = Convert.ToInt32(Session["ParentID"]);
            objPostMessage.toID = Convert.ToInt32(result.Tables["MentorID"].Rows[0][0]);
            objPostMessage.DateTimePosted = DateTime.Now;
            objPostMessage.Title = txtParentPMTitle.Text;
            objPostMessage.Text = txtParentMsg.Text;
            int id = objPostMessage.addMessage();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SendMessage();
            lblSuccessMsg.Text = "Congratulations! You Have Posted to Your Child's Mentor Please Await a Reply :) ";

        }
    }
}