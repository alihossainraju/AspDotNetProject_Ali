using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserControls_TourGuide : System.Web.UI.UserControl
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
        txtAddress.Text = "";
        txtPhone.Text = "";
        ddlGender.Text = ddlGender.Items[0].ToString();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        DataLoad();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (chkAgree.Checked && txtName.Text != "" && txtAddress.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO Guide(GuideName,GuideAddress,GuidePhone,GuideGender) VALUES(@guidename,@guideaddress,@guidephone,@guidegender)", con);

                cmd.Parameters.AddWithValue("@guidename", txtName.Text);              
                cmd.Parameters.AddWithValue("@guideaddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@guidephone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@guidegender", ddlGender.SelectedValue);
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
        if (chkAgree.Checked && txtName.Text != "" && txtAddress.Text != "")
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE Guide Set GuideName=@guidename,GuideAddress=@guideaddress,GuidePhone=@guidephone,GuideGender=@guidegender where GuideID=@guideid", con);
                cmd.Parameters.AddWithValue("@guideid", lblGuideID.Text);
                cmd.Parameters.AddWithValue("@guidename", txtName.Text);
                cmd.Parameters.AddWithValue("@guideaddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@guidephone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@guidegender", ddlGender.SelectedValue);
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
            cmd = new SqlCommand("DELETE FROM Guide WHERE GuideID=@guideid", con);
            cmd.Parameters.AddWithValue("@guideid", lblGuideID.Text);
            cmd.ExecuteNonQuery();
            DataLoad();
            con.Close();

            CleanAllControl();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtName.Text = GridView1.SelectedRow.Cells[2].Text;
        txtAddress.Text = GridView1.SelectedRow.Cells[3].Text;
        txtPhone.Text = GridView1.SelectedRow.Cells[4].Text;
        ddlGender.Text = GridView1.SelectedRow.Cells[5].Text;

        lblGuideID.Text = GridView1.SelectedRow.Cells[1].Text;
    }
}