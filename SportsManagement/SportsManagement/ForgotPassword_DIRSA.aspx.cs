using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsManagement
{
    public partial class ForgotPassword_DIRSA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panlogin.Visible = true;
            Panotp.Visible = false;
            Panupdate.Visible = false;
        }

        protected void forgot_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select Email from registration_DIRSA where email=@email", con);
                ViewState["Email"] = txtemail.Text;
                cmd.Parameters.AddWithValue("@Email", ViewState["Email"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Random rand = new Random();
                    ViewState["OTP"] = rand.Next(1111, 9999).ToString();
                    bool chk = SendEmail();
                    if (chk == true)
                    {
                        panlogin.Visible = false;
                        Panotp.Visible = true;
                        Panupdate.Visible = false;
                    }
                }
                else
                {
                    lblerror.Text = "EmailID Does not exists!";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
            bool SendEmail()
            {
                bool check = false;
                try
                {
                    MailMessage obj = new MailMessage();
                    obj.From = new MailAddress("Vnrvjietsports@gmail.com");
                    obj.To.Add(txtemail.Text);
                    obj.IsBodyHtml = true;
                    obj.Subject = "Your OTP for Login";
                    obj.Body = "Wonderful greetings to you. Your OTP is:" + ViewState["OTP"] + "\n\n\n\n Thanks and warm regards,\nVNR Sports Management.";

                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                    smtp.Credentials = new NetworkCredential("Vnrvjietsports@gmail.com", "nblooepboklwught");
                    smtp.EnableSsl = true;
                    smtp.Send(obj);
                    check = true;
                }
                catch (Exception)
                {

                    throw;
                }
                return check;

            }
        }

        protected void verify_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtotp.Text))
            {
                panlogin.Visible = false;
                Panotp.Visible = true;
                Panupdate.Visible = false;
                lbl.Text = "please Enter OTP";
            }
            if (txtotp.Text.Equals(ViewState["OTP"]))
            {

                panlogin.Visible = false;
                Panotp.Visible = false;
                Panupdate.Visible = true;
            }
            else
            {
                panlogin.Visible = false;
                Panotp.Visible = true;
                Panupdate.Visible = false;
                lbl.Text = "Otp is Not Correct!";
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            { 
                con.Open();
                SqlCommand cmd = new SqlCommand("Update registration_DIRSA set pass=@pass where email=@email", con);
                cmd.Parameters.AddWithValue("@pass", txtnewpassword.Text);
                cmd.Parameters.AddWithValue("@email", ViewState["Email"]);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("Login_DIRSA.aspx");
                }
                else
                {
                    Label1.Text = "Something Went Wrong!";
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}