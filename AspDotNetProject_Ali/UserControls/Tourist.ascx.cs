using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserControls_Tourist : System.Web.UI.UserControl
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
        txtPhone.Text = "";
        txtAddress.Text = "";
        txtNidPas.Text = "";
        txtNationlity.Text ="";
        ddlGuideID.Text = ddlGuideID.SelectedValue;
        ddlPackageID.Text = ddlPackageID.SelectedValue;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        DataLoad();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (chkAgree.Checked && txtName.Text != "" && txtPhone.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO Tourist(TouristName,TouristPhoneNumber,TouristAddress,TouristNid_PassportNumber,Nationlity,GuideID,PackageID) VALUES(@touristname,@touristphonenumber,@touristaddress,@touristnid_passportnumber,@nationlity,@guideid,@packageid)", con);
                cmd.Parameters.AddWithValue("@touristname", txtName.Text);
                cmd.Parameters.AddWithValue("@touristphonenumber", txtPhone.Text);
                cmd.Parameters.AddWithValue("@touristaddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@touristnid_passportnumber", txtNidPas.Text);
                cmd.Parameters.AddWithValue("@nationlity", txtNationlity.Text);
                cmd.Parameters.AddWithValue("@guideid", ddlGuideID.SelectedValue);
                cmd.Parameters.AddWithValue("@packageid", ddlPackageID.SelectedItem.Value);
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
        if (chkAgree.Checked && txtName.Text != "" && txtPhone.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE Tourist Set TouristName=@touristname,TouristPhoneNumber=@touristphonenumber, TouristAddress=@touristaddress,TouristNid_PassportNumber=@tornidpass,Nationlity=@nationlity,GuideID=@guideid,PackageID=@packageid Where TouristID=@touristid", con);
                cmd.Parameters.AddWithValue("@touristid", lblTouristID.Text);
                cmd.Parameters.AddWithValue("@touristname", txtName.Text);
                cmd.Parameters.AddWithValue("@touristphonenumber", txtPhone.Text);
                cmd.Parameters.AddWithValue("@touristaddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@tornidpass", txtNidPas.Text);
                cmd.Parameters.AddWithValue("@nationlity", txtNationlity.Text);
                cmd.Parameters.AddWithValue("@guideid", ddlGuideID.SelectedValue);
                cmd.Parameters.AddWithValue("@PackageID", ddlPackageID.SelectedValue);
                cmd.ExecuteNonQuery();


                con.Close();
                DataLoad();
                CleanAllControl();
            }
        }
        else
        {
            lblMessage.Text = "Please Provide All Values";
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        using (con = new SqlConnection(cs))
        {
            con.Open();
            cmd = new SqlCommand("DELETE FROM Tourist WHERE TouristID=@touristid", con);
            cmd.Parameters.AddWithValue("@touristid", lblTouristID.Text);

            cmd.ExecuteNonQuery();
            DataLoad();
            con.Close();

            CleanAllControl();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtName.Text = GridView1.SelectedRow.Cells[2].Text;
        txtPhone.Text = GridView1.SelectedRow.Cells[3].Text;
        txtAddress.Text = GridView1.SelectedRow.Cells[4].Text;
        txtNidPas.Text = GridView1.SelectedRow.Cells[5].Text;
        txtNationlity.Text = GridView1.SelectedRow.Cells[6].Text;
        ddlGuideID.Text = GridView1.SelectedRow.Cells[7].Text;
        ddlPackageID.Text = GridView1.SelectedRow.Cells[8].Text;
        lblTouristID.Text = GridView1.SelectedRow.Cells[1].Text;
    }
}