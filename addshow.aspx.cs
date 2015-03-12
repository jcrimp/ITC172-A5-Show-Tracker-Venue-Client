using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AddShowService;

public partial class addshow : System.Web.UI.Page
{
    AddShowServiceClient addShowSC = new AddShowServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["venueKey"] == null )
        {
            Response.Redirect("Default.aspx");
        }
        if(!IsPostBack)
        {
            FillDDListArtist();
        }
        SetArtistInvisible();
    }
    
    private void FillDDListArtist()
    {
        List<Artist> artists = addShowSC.GetArtists().ToList();
        ddArtistList.DataSource = artists;
        ddArtistList.DataTextField = "ArtistName";
        ddArtistList.DataValueField = "ArtistKey";
        ddArtistList.DataBind();
        //add a new item to the list
        ListItem item = new ListItem("New Artist");
        ddArtistList.Items.Add(item);
    }

    private void SetArtistInvisible()
    {
        TableArtist.Visible = false;
    }

    
    protected void ddArtistList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddArtistList.SelectedItem.Text.Equals("New Artist"))
        {
            TableArtist.Visible = true;
        }
        else
        {
            lblArtistKey.Text = ddArtistList.SelectedItem.Value.ToString();
        }
    }
    protected void btnSaveArtist_Click(object sender, EventArgs e)
    {
        Artist art = new Artist();
        art.ArtistName = txtArtistName.Text;
        art.ArtistEmail = txtArtistName.Text;
        art.ArtistWebPage = txtArtistWebsite.Text;
        bool result = addShowSC.AddArtist(art);

        if(!result)
        {
            lblChooseArtist.Text = "There was a problem saving the artist.";
        }
        else
        {
            FillDDListArtist();
            lblChooseArtist.Text="Artist Saved. Now choose the artist from the dropwdown menu.";
            ddArtistList.Focus();
        }
    }
    protected void btnSaveShow_Click(object sender, EventArgs e)
    {
        //get the venue key and save it in the session value
        int vKey = (int)Session["venueKey"];

        Show show = new Show();
        
        show.ShowName = txtShowName.Text;
        show.ShowDate = DateTime.Parse(txtShowDate.Text);
        show.ShowTime = TimeSpan.Parse(txtShowTime.Text);
        show.VenueKey = vKey;
        show.ShowTicketInfo = txtTicketInfo.Text;

        ShowDetail showdet = new ShowDetail();

        showdet.ArtistKey = int.Parse(lblArtistKey.Text);
        showdet.ShowDetailArtistStartTime = TimeSpan.Parse(txtArtistStartTime.Text);
        showdet.ShowDetailAdditional = txtShowDetail.Text;

        bool result = addShowSC.AddShow(show, showdet);
        if(!result)
        {
            lblResult.Text = "Show was not entered";
        }
        else
        {
            Response.Redirect("viewshows.aspx");
        }

    }
}