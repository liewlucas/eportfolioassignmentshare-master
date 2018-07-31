using eportfolioAssignment.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eportfolioAssignment
{
    public partial class SubmitViewing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtPName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtChildStdID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmitViewingRequest_Click(object sender, EventArgs e)
        {
            // new viewing request object 
            ViewingRequest objViewingRequest = new ViewingRequest();

            //appending entered details into object 
            var parid= txtPName.Text;
            objViewingRequest.parentid = Convert.ToInt32(parid);
            objViewingRequest.studentname = txtChildName.Text;
            var stdid = txtChildStdID.Text;
            objViewingRequest.studentid = Convert.ToInt32(stdid);
            objViewingRequest.status = "P";
            objViewingRequest.datecreated = DateTime.Now;

            //call add method 
            int id = objViewingRequest.addRequest();


            lblConfirmation.Text = "Congratulations! You have successfully submitted the Request! " + "<br/>" +
                "Viewing Request ID: " + id + "<br/>" +
                "Your ID: " + txtPName.Text + "<br/>" +
                "Your Child's Name: " + txtChildName.Text + "<br/>" +
                "Your Child's ID: " + txtChildStdID.Text + "<br/>" +
                "Status: " + "Pending" + "<br/>" +
                "Date Created " + DateTime.Now.ToString();


        }
    }
}