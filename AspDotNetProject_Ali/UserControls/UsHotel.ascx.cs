using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspDotNetProject_Ali.UserControls
{
    public partial class UsHotel : System.Web.UI.UserControl
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
            txtHotelName.Text = "";
            ddlRoomtype.Text = ddlRoomtype.Items[0].ToString();
            txtHotelAddress.Text = "";
            txtBoxPhoneNumber.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtHotelName.Text != "" && txtHotelAddress.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Hotel(HotelName,HotelRoomType,HotelAddress,HotelPhoneNumber) VALUES(@hotelname,@hotelroomtype,@hoteladdress,@hotelphonenumber)", con);

                    cmd.Parameters.AddWithValue("@hotelname", txtHotelName.Text);
                    cmd.Parameters.AddWithValue("@hotelroomtype", ddlRoomtype.SelectedValue);
                    cmd.Parameters.AddWithValue("@hoteladdress", txtHotelAddress.Text);
                    cmd.Parameters.AddWithValue("@hotelphonenumber", txtBoxPhoneNumber.Text);
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
            if (chkAgree.Checked && txtHotelName.Text != "" && txtHotelAddress.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Hotel Set HotelName=@hotelname,HotelRoomType=@hotelroomtype,HotelAddress=@hoteladdress,HotelPhoneNumber=@hotelphonenumber where HotelID=@hotelid", con);
                    cmd.Parameters.AddWithValue("@hotelid", lblHotelID.Text);

                    cmd.Parameters.AddWithValue("@hotelname", txtHotelName.Text);
                    cmd.Parameters.AddWithValue("@hotelroomtype", ddlRoomtype.SelectedValue);
                    cmd.Parameters.AddWithValue("@hoteladdress", txtHotelAddress.Text);
                    cmd.Parameters.AddWithValue("@hotelphonenumber", txtBoxPhoneNumber.Text);
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
                cmd = new SqlCommand("DELETE FROM Hotel WHERE HotelID=@hotelid", con);
                cmd.Parameters.AddWithValue("@hotelid", lblHotelID.Text);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtHotelName.Text = GridView1.SelectedRow.Cells[2].Text;
            ddlRoomtype.Text = GridView1.SelectedRow.Cells[3].Text;
            txtHotelAddress.Text = GridView1.SelectedRow.Cells[4].Text;
            txtBoxPhoneNumber.Text = GridView1.SelectedRow.Cells[5].Text;

            lblHotelID.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}