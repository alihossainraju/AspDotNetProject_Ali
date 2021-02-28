using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserControls_Package : System.Web.UI.UserControl
{
    string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adapter;
    DataTable dt;

    public void DataLoad()
    {
        if (Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }

    public void CleanAllControl()
    {
        txtName.Text = "";
        ddlDuration.Text = ddlDuration.Items[0].ToString();
        ddlPrice.Text = ddlPrice.Items[0].ToString();
        ddlAgentID.Text = ddlAgentID.SelectedValue;
        ddlTransportationID.Text = ddlTransportationID.SelectedValue;
        ddlHotelID.Text = ddlHotelID.SelectedValue;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        DataLoad();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (chkAgree.Checked && txtName.Text != "" && ddlPrice.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO Package(PackageName,PackageDuration,PackagePrice,AgentID,TransportationID,HotelID) VALUES(@packagename,@packageduration,@packageprice,@agentid,@transportationid,@hotelid)", con);
                cmd.Parameters.AddWithValue("@packagename", txtName.Text);
                cmd.Parameters.AddWithValue("@packageduration", ddlDuration.SelectedValue);
                cmd.Parameters.AddWithValue("@packageprice", ddlPrice.SelectedValue);
                cmd.Parameters.AddWithValue("@agentid", ddlAgentID.SelectedValue);
                cmd.Parameters.AddWithValue("@transportationid", ddlTransportationID.SelectedValue);
                cmd.Parameters.AddWithValue("@hotelid", ddlHotelID.SelectedValue);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }
        else
        {
            lblMessage.Text = "Please Provide All Values";
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (chkAgree.Checked && txtName.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE Package Set PackageName=@packagename, PackageDuration=@packageduration,PackagePrice=@packageprice,AgentID=@agentid,TransportationID=@transportationid,HotelID=@hotelid Where PackageID=@packageid", con);
                cmd.Parameters.AddWithValue("@packageid", lblPackageID.Text);
                cmd.Parameters.AddWithValue("@packagename", txtName.Text);
                cmd.Parameters.AddWithValue("@packageduration", ddlDuration.SelectedValue);
                cmd.Parameters.AddWithValue("@packageprice", ddlPrice.SelectedValue);
                cmd.Parameters.AddWithValue("@agentid", ddlAgentID.SelectedValue);
                cmd.Parameters.AddWithValue("@transportationid", ddlTransportationID.SelectedValue);
                cmd.Parameters.AddWithValue("@hotelid", ddlHotelID.SelectedValue);
                cmd.ExecuteNonQuery();


                con.Close();
                DataLoad();
                CleanAllControl();
            }
        }
        else
        {
            lblMessage.Text = "Some thing is wrong!!!!";
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        using (con = new SqlConnection(cs))
        {
            con.Open();
            cmd = new SqlCommand("DELETE FROM Package WHERE PackageID=@Packageid", con);
            cmd.Parameters.AddWithValue("@Packageid", lblPackageID.Text);

            cmd.ExecuteNonQuery();
            DataLoad();
            con.Close();

            CleanAllControl();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtName.Text = GridView1.SelectedRow.Cells[2].Text;
        ddlDuration.Text = GridView1.SelectedRow.Cells[3].Text;
        ddlPrice.Text = GridView1.SelectedRow.Cells[4].Text;
        ddlAgentID.Text = GridView1.SelectedRow.Cells[5].Text;
        ddlTransportationID.Text = GridView1.SelectedRow.Cells[6].Text;
        ddlHotelID.Text = GridView1.SelectedRow.Cells[7].Text;
        lblPackageID.Text = GridView1.SelectedRow.Cells[1].Text;
    }
}