using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VenueRegistrationReference;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //instantiate service
        VenueRegistrationServiceClient registrationClient = new VenueRegistrationServiceClient();
        //create new instance of Venue
        Venue v = new Venue();
        v.VenueName = txtVenueName.Text;
        v.VenueAddress = txtAddress.Text;
        v.VenueCity = txtAddress.Text;
        v.VenueState = txtState.Text;
        v.VenueZipCode = txtZip.Text;
        v.VenuePhone = txtPhone.Text;
        v.VenueEmail = txtEmail.Text;
        v.VenueWebPage = txtWebsite.Text;
        v.VenueAgeRestriction = int.Parse(ddAgeRestriction.SelectedValue.ToString());
        v.VenueDateAdded = DateTime.Now;

        VenueLogin vl = new VenueLogin();
        vl.VenueLoginUserName = txtUser.Text;
        vl.VenueLoginPasswordPlain = txtConfirmPass.Text;
        vl.VenueLoginDateAdded = DateTime.Now;

        //pass the values to RegisterVenue in the service, which returns a bool
        bool result = registrationClient.RegisterVenue(v, vl);

        //if RegisterVenue returns true(was successful)
        if (result)
            //change this later to redirect to Default.aspx and add message to top of that page
            //saying "registration successful".
            //lblResult.Text = "Registration was successful. You may now log in.";
            Response.Redirect("addshow.aspx");
        else
            lblResult.Text = "Registration failed.";
    }
}