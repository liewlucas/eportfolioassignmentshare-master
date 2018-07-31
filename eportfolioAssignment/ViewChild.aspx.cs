using System;
using System.Collections.Generic;
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
            lblStudentName.Text = "Lucas Liew";
            lblStudentID.Text = "S12345678J";
            lblStudentSch.Text = "School of ICT";
            lblStudentCourse.Text = "Information Technology";
            lblStudentDescription.Text = "Hello! I am a Student in Ngee Ann Poly Studying IT! :D";
        }
    }
}