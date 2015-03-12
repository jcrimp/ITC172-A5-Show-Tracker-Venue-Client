using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //instantiate the service
        VenueRegistrationReference.VenueRegistrationServiceClient registrationClient =
            new VenueRegistrationReference.VenueRegistrationServiceClient();

        //call the method
        int key = registrationClient.Login(txtPassword.Text, txtUserName.Text);
        //check the results
        if(key != 0)
        {
            Session["venueKey"] = key;
            Response.Redirect("addshow.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid Login";
        }
    }
}