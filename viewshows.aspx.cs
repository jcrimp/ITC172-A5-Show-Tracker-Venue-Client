using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AddShowService;

public partial class viewshows : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["venueKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        FillShowList();
    }

    private void FillShowList()
    {
        AddShowServiceClient addShowSC = new AddShowServiceClient();
        int key = (int)Session["venueKey"];
        List<Show> shows = addShowSC.GetShows(key).ToList();
        DataList1.DataSource = shows;
        DataList1.DataBind();
    }
}