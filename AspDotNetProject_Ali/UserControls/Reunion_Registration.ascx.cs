using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;
using AspDotNetProject_Ali.BL;

namespace AspDotNetProject_Ali.UserControls
{
    public partial class Reunion_Registration : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ClearData()
        {
            txtBoxFullName.Text = "";
            txtBoxEmail.Text = ddlGender.Items[0].Value;
            ddlGender.Text = "";
            txtDOB.Text = DateTime.Today.Date.ToString();
            txtBoxRoundNo.Text = "";
            txtBoxPhoneNumber.Text = "";
            txtBoxMessage.Text = "";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (cBoxAgree.Checked && txtBoxFullName.Text != "" && txtBoxEmail.Text != "" && txtBoxRoundNo.Text != "" && txtDOB.Text != "" && txtBoxPhoneNumber.Text != "" && txtBoxMessage.Text != "")
            {
                try
                {
                    ReunionReg reg = new ReunionReg();
                    reg.FullName = txtBoxFullName.Text;
                    reg.EmailAddress = txtBoxEmail.Text;
                    reg.Gender = ddlGender.SelectedValue;
                    reg.DOB = txtDOB.Text;
                    reg.RoundNo = txtBoxRoundNo.Text;
                    reg.PhoneNo = txtBoxPhoneNumber.Text;
                    reg.Message = txtBoxMessage.Text;

                    bool status = reg.Save();
                    if (status == true)
                    {
                        ShowAlert("You Have Successfully Registered!!!!!!!!");

                        //Mail Send
                        sendMailToClient();
                        sendEmailToAuthority();
                        ClearData();

                    }
                    else
                    {
                        ShowAlert("Failed To Register!!!!!!!!!");
                    }
                }
                catch (Exception ex)
                {
                    ShowAlert(ex.Message.ToString());
                }
            }
            else
            {
                lblMessage.Text = "Please Fill Up All Data!!!!!!!!";
            }

        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }


        private void sendMailToClient()
        {
            var fromAddress = "1257170ali@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = txtBoxEmail.Text;
            string subject = "Booking Registration";

            string body = "Hello " + txtBoxFullName.Text + " You Have Been Registered Succesfully. \n";
            body += "You Can Now Enjoy Our Program in Hotel Sonargaon. \n";





            //smtp settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Value to smtp object

            smtp.Send(fromAddress, toAddress, subject, body);
        }

        //Mail Send To Authority
        protected void sendEmailToAuthority()
        {
            var fromAddress = "1257170ali@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = "1257168elias@gmail.com";
            string subject = "Booking Registration";

            string body = txtBoxFullName.Text + " has Registered. \n";
            body += "His/Her Information Are Provided Below : \n";
            body += "Name : " + txtBoxFullName.Text + "\n";
            body += "Email : " + txtBoxEmail.Text + "\n";
            body += "Gender : " + ddlGender.Text + "\n";
            body += "Round No : " + txtBoxRoundNo.Text + "\n";
            body += "Phone No : " + txtBoxPhoneNumber.Text + "\n";
            body += "Message : " + txtBoxMessage.Text + "\n";


            //smtp settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Value to smtp object

            smtp.Send(fromAddress, toAddress, subject, body);

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("All.aspx");
        }
    }
}