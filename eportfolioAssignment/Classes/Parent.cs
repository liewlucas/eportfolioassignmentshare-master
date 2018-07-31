using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace eportfolioAssignment.Classes
{
    public class Parent
    {
        public int parentID { get; set; }
        public string parentName { get; set; }
        public string parentEmailAddress { get; set; }
        public string parentPassword { get; set; }


        public int addParent()
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
                ("INSERT INTO Parent (ParentName, EmailAddr, Password) " +
                "OUTPUT INSERTED.ParentID " +
                "VALUES (@name, @email, @password)", conn);

            // define the parameters used in sql statement, value for each parameter 
            // is taken from the properties above ( class property) 
            cmd.Parameters.AddWithValue("@name", parentName);
            cmd.Parameters.AddWithValue("@email", parentEmailAddress);
            cmd.Parameters.AddWithValue("@password", parentPassword);

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
        /*
        public int getParentDetails()
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
                ("SELECT * FROM Parent WHERE ParentID = @selectedParentID " , conn);

            //define the parameter used in sql statement, value is retrieved from 
            //parent class 
            cmd.Parameters.AddWithValue("@selectedParentID", parentID);

            // instantiate DataAdapter object , pass sqlcommand object 
            //created as parameter 
            SqlDataAdapter daParent = new SqlDataAdapter(cmd);

            //create dataset object to contain records retrieved from database 
            DataSet result = new DataSet();

            //open connection
            conn.Open();

            //close connection
            conn.Close();

            
           
        }
        */

    }
}