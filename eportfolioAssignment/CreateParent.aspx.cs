using eportfolioAssignment.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eportfolioAssignment
{
    public partial class CreateParent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // new parent object
            Parent objParent = new Parent();
            // adding the entered details to the class object
            objParent.parentName = txtParentName.Text;
            objParent.parentEmailAddress = txtParentEmail.Text;
            objParent.parentPassword = txtParentPassword.Text;

            //call method to insert the staff record into database
            int id = objParent.addParent();

            // passing info as query string to label 
            lblConfirmed.Text = "Congratulations! You have Successfully Created an Account!" + "<br/>" +
                "Your Parent ID: " + id + "<br/>" +
                "Your Name: " + txtParentName.Text + "<br/>" +
                "Your Email: " + txtParentEmail.Text + "<br/>" +
                "Your Password: " + txtParentPassword.Text;

        }   
    }
}