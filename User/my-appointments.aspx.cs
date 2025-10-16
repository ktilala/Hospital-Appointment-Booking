using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_Portel.User
{
    public partial class my_appointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ConfirmMessage"] != null)
            {
                lblMessage.Text = Session["ConfirmMessage"].ToString();
                Session["ConfirmMessage"] = null; 
            }
            else
            {
                lblMessage.Text = Session["ConfirmMessage"].ToString();

            }
        }

    }
}