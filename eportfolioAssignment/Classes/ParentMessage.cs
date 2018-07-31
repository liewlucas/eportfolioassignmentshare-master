using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace eportfolioAssignment.Classes
{
    public class ParentMessage
    {
        public int MessageID;
        public int fromID;
        public int toID;
        public DateTime DateTimePosted;
        public string Title;
        public string Text;



        public int addMessage()
        {
            //read connection string from "StudentEPortfolioConnectionString" in web config file 
            string strConn = ConfigurationManager.ConnectionStrings
                ["StudentEPortfolioConnectionString"].ToString();

            //instantiate connection object with connection string read. 
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a SqlCommand Object, supply it with an insert SQL statement 
            //which will return auto generated parentID after insertion,
            // and the connection object for connecting to the database.

            SqlCommand cmd = new SqlCommand
                ("INSERT INTO Message (FromID, ToID, DateTimePosted, Title, Text) " +
                "OUTPUT INSERTED.MessageID " +
                "VALUES (@fromid, @toid, @datetimeposted,@title,@text)", conn);

            // define the parameters used in sql statement, value for each parameter 
            // is taken from the properties above ( class property) 
            cmd.Parameters.AddWithValue("@fromid", fromID);
            cmd.Parameters.AddWithValue("@toid", toID);
            cmd.Parameters.AddWithValue("@datetimeposted", DateTimePosted);
            cmd.Parameters.AddWithValue("@title", Title);
            cmd.Parameters.AddWithValue("@text", Text);



            //a connection to database must be opened to make any operations 
            conn.Open();

            //execute scalar used to retrieve auto generated parentID 
            //after executing insert sql statement
            int id = (int)cmd.ExecuteScalar();

            //a connection must always be closed after all executions
            conn.Close();

            //return id when no error occur 
            return id;
        }
    }
}