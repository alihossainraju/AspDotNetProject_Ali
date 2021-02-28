using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject_Ali
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgent_Click(object sender, EventArgs e)
        {
            Response.Redirect("TravelAgent.aspx");
        }

        protected void btnStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("TourGuide.aspx");
        }

        protected void btnTransportation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transportation.aspx");
        }

        protected void btnHotel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hotel.aspx");
        }

        protected void btnPackage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Package.aspx");
        }

        protected void btnTourist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tourist.aspx");
        }
    }
}