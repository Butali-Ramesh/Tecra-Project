using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsManagement
{
    public partial class TakenItems_DIRSA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        protected void btndel_Click(object sender, ImageClickEventArgs e)
        {
            int id = Convert.ToInt32(((ImageButton)(sender)).CommandArgument.ToString());
            SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_sports1", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect(Request.RawUrl);
                }
                else
                {
                    Response.Write("Something went wrong");
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
        public void GetData()
        {
            SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select t.id,r.name,r.rollno,r.mobile,t.itemname,t.itemcount from TakenItems_DIRSA t,registration_DIRSA r where r.rollno=t.rollno", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rep.DataSource = dt;
                rep.DataBind();
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

        protected void rep_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btndel_Click1(object sender, EventArgs e)
        {

        }
    }
}