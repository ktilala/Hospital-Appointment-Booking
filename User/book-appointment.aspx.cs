using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HMS_Portel.User
{
    public partial class book_appointment : System.Web.UI.Page
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
            fillcategory();
            filldoctor();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillcategory()
        {
            getcon();
            da = new SqlDataAdapter("select * from sd_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                dldt.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        void filldoctor()
        {
            getcon();
            da = new SqlDataAdapter("select * from adddoctor", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                dldr.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("insert into bookappointment(Name,Email,Phone,Department,Doctor,Date,Time)" + "Values ('" + txtnm.Text + "','" + txtem.Text + "','" + txtpn.Text + "','" + dldt.SelectedValue + "','" + dldr.SelectedValue + "','" + txtda.Text + "','" + txtti.Text + "')", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
        }

        //protected void cal_SelectionChanged(object sender, EventArgs e)
        //{

        //}
    }
}