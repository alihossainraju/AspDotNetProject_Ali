using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserControls_Transportation : System.Web.UI.UserControl
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

        ddlTran.Text = ddlTran.Items[0].ToString();
        txtHelpline.Text = "";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        DataLoad();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (chkAgree.Checked && txtHelpline.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO Transportation(TransportationType,TransportationHelpline) VALUES(@transportationtype,@transportationhelpline)", con);

                cmd.Parameters.AddWithValue("@transportationtype", ddlTran.SelectedValue);
                cmd.Parameters.AddWithValue("@transportationhelpline", txtHelpline.Text);

                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }
        else
        {
            lblMessage.Text = "Some thing is wrong!!!!";
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (chkAgree.Checked && txtHelpline.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE Transportation Set TransportationType=@transportationtype,TransportationHelpline=@transportationhelpline where TransportationID=@transportationid", con);
                cmd.Parameters.AddWithValue("@transportationid", lblTranID.Text);

                cmd.Parameters.AddWithValue("@transportationtype", ddlTran.SelectedValue);
                cmd.Parameters.AddWithValue("@transportationhelpline", txtHelpline.Text);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

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
            cmd = new SqlCommand("DELETE FROM Transportation WHERE TransportationID=@transportationid", con);
            cmd.Parameters.AddWithValue("@transportationid", lblTranID.Text);
            cmd.ExecuteNonQuery();
            DataLoad();
            con.Close();

            CleanAllControl();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlTran.Text = GridView1.SelectedRow.Cells[2].Text;
        txtHelpline.Text = GridView1.SelectedRow.Cells[3].Text;

        lblTranID.Text = GridView1.SelectedRow.Cells[1].Text;
    }
}