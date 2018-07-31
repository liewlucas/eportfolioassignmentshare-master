using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace eportfolioAssignment.Classes
{
    public class ViewingRequest
    {
        public int requestid { get; set; }
        public int parentid { get; set; }
        public string studentname { get; set; }
        public int studentid { get; set; }
        public string status { get; set; }
        public DateTime datecreated { get; set; }

    

        public int addRequest()
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
                ("INSERT INTO ViewingRequest (ParentID, StudentName, " +
                "StudentID, Status, DateCreated )" +
                "OUTPUT INSERTED.ViewingRequestID " +
                "VALUES (@parentid, @stdname, @stdID, @status, @datecreated)", conn);

            // define the parameters used in sql statement, value for each parameter 
            // is taken from the properties above ( class property) 
            cmd.Parameters.AddWithValue("@parentid",parentid);
            cmd.Parameters.AddWithValue("@stdname", studentname);
            cmd.Parameters.AddWithValue("@stdID", studentid);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@datecreated", datecreated);

            //a connection to database must be opened to make any operations 
            conn.Open();

            //execute scalar used to retrieve auto generated ViewingRequestID 
            //after executing insert sql statement
            int id = (int)cmd.ExecuteScalar();

            //a connection must always be closed after all executions
            conn.Close();

            //return id when no error occur 
            return id;

        }
    }
}