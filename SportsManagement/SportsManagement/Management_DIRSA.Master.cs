using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsManagement
{
    public partial class Management_DIRSA : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LoggedinName"] != null)
                {
                    lbl.Text = " &nbsp&nbsp&nbspWelcome Back : &nbsp;" + "&nbsp"+  Session["LoggedinName"].ToString() + ".&nbsp;Logged In Time:&nbsp&nbsp&nbsp&nbsp&nbsp;" + Session["LoggedinTime"].ToString();
                }
                else
                {
                    Response.Redirect("Login_DIRSA.aspx");
                }
            }
        }

        protected void link_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login_DIRSA.aspx");
        }
    }
}