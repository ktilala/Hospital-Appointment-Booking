using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HMS_Portel
{
    public partial class appointments : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from bookappointment", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_con")
            {


            }
            else
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from bookappointment where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/book-appointment.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("my-appointments.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["ConfirmMessage"] = "Your appointment is confirmed successfully.";
            Response.Redirect("~/User/my-appointments.aspx");
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["ConfirmMessage"] = "Your appointment is cancelled successfully.";
            Response.Redirect("~/User/my-appointments.aspx");

        }
    }
}