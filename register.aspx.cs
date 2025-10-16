using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.DynamicData;

namespace HMS_Portel
{
    public partial class register : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void Clear()
        {
            txtnm.Text = "";
            txtlnm.Text = "";
            txteml.Text = "";
            txtnum.Text = "";
            txtpass.Text = "";
            txtcpass.Text = "";

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            if (submit.Text == "Create Account")
            {
                cmd = new SqlCommand("insert into reg_tbl(FirstName,LastName,Email,PhoneNumber,Password) values ('" + txtnm.Text + "' , '" + txtlnm.Text + "' ,  '" + txteml.Text + "', '" + txtnum.Text + "'  ,'" + txtpass.Text + "' )", con);
                cmd.ExecuteNonQuery();
                Clear();
            }
            Response.Redirect("index.aspx");
        }
    }
}