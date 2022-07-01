using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace SportsManagement
{
    public partial class Regsiter_DIRSA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panotp.Visible = false;
            panreg.Visible = true;
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select mailid from tb_validusers where mailid=@email", con);
                ViewState["EmailID"] = email.Text;
                cmd.Parameters.AddWithValue("@email", ViewState["EmailID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Random rand = new Random();
                    ViewState["OTP"] = rand.Next(1111, 9999).ToString();
                    bool chk = SendEmail();
                    if (chk == true)
                    {
                        panotp.Visible = true;
                        panreg.Visible = false;
                    }
                }
                else
                {
                    lblerror.Text = "invalid!";
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
                    obj.To.Add(email.Text);
                    obj.IsBodyHtml = true;
                    obj.Subject = "OTP for Login";
                    obj.Body = "your OTP is:" + ViewState["OTP"];

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
                lbl.Text = "Please enter OTP";
            }
            if (txtotp.Text.Equals(ViewState["OTP"]))
            {
                SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into REGISTRATION_DIRSA(name, rollno, email, mobile, pass, role) values(@name,@rollno, @email, @mobile, @pass, @role)", con);
                    cmd.Parameters.AddWithValue("@name", name.Text);
                    cmd.Parameters.AddWithValue("@rollno", rollno.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@mobile", mobile.Text);
                    cmd.Parameters.AddWithValue("@pass", pass.Text);
                    cmd.Parameters.AddWithValue("@role", ddlrole.SelectedValue);
                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        Response.Redirect("Login_DIRSA.aspx");

                    }
                    else
                    {
                        Response.Write("Invalid RollNo/Password");
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

        protected void verify_Click1(object sender, EventArgs e)
        {

        }
    }
}