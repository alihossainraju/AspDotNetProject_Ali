using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserControls_UsTravelAgent : System.Web.UI.UserControl
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
        txtAgentName.Text = "";
        txtAgentAddress.Text = "";
        txtAgentPhoneNumber.Text = "";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        DataLoad();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (chkAggree.Checked && txtAgentName.Text != "" && txtAgentPhoneNumber.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO TravelAgent(AgentName,AgentAddress,AgentPhoneNumber) VALUES(@agentname,@agentaddress,@agentphonenumber)", con);

                cmd.Parameters.AddWithValue("@agentname", txtAgentName.Text);
                cmd.Parameters.AddWithValue("@agentaddress", txtAgentAddress.Text);
                cmd.Parameters.AddWithValue("@agentphonenumber", txtAgentPhoneNumber.Text);
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
        if (chkAggree.Checked && txtAgentName.Text != "" && txtAgentPhoneNumber.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE TravelAgent Set AgentName=@agentname,AgentAddress=@agentaddress,AgentPhoneNumber=@agentphonenumber where AgentID=@agentid", con);
                cmd.Parameters.AddWithValue("@agentid", lblAgentID.Text);
                cmd.Parameters.AddWithValue("@agentname", txtAgentName.Text);
                cmd.Parameters.AddWithValue("@agentaddress", txtAgentAddress.Text);
                cmd.Parameters.AddWithValue("@agentphonenumber", txtAgentPhoneNumber.Text);
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
            cmd = new SqlCommand("DELETE FROM TravelAgent WHERE AgentID=@agentid", con);
            cmd.Parameters.AddWithValue("@agentid", lblAgentID.Text);
            cmd.ExecuteNonQuery();
            DataLoad();
            con.Close();

            CleanAllControl();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtAgentName.Text = GridView1.SelectedRow.Cells[2].Text;
        txtAgentAddress.Text = GridView1.SelectedRow.Cells[3].Text;
        txtAgentPhoneNumber.Text = GridView1.SelectedRow.Cells[4].Text;
        lblAgentID.Text = GridView1.SelectedRow.Cells[1].Text;
    }
}