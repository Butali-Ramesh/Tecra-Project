using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SportsManagement
{
    public partial class Login_DIRSA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from registration_DIRSA where rollno=@rollno and pass=@pass", con);
                cmd.Parameters.AddWithValue("@rollno", rollno.Text);
                cmd.Parameters.AddWithValue("@pass", pass.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Role"].ToString() == "Student")
                    {
                        Session["LoggedinName"] = dr["Name"].ToString();
                        Session["RollNo"] = dr["rollno"].ToString();
                        Session["LoggedinTime"] = System.DateTime.Now.ToLongTimeString();
                   Response.Redirect("StudentHome_DIRSA.aspx");

                    }
                    else
                    {
                        Session["LoggedinName"] = dr["Name"].ToString();
                        Session["LoggedinTime"] = System.DateTime.Now.ToLongTimeString();
                        Response.Redirect("ManagementHome_DIRSA.aspx");
                    }
                }
                else
                {
                    lbllogin.Text = "Invalid Username/Password";
                }
            }
            catch(Exception ex)
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