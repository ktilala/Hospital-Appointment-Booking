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
    public partial class add_doctor : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillcategory();
            imgupload();
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
        void imgupload()
        {
            if (fldimg.HasFile)
            {
                fnm = "images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtfn.Text = "";
            txtln.Text = "";
            txteml.Text = "";
            txtpn.Text = "";
            txtat.Text = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("insert into adddoctor(Medicine_Name,Last_Name,Email,Phone,Department,Available_Time,Image)" + "Values ('" + txtfn.Text + "','" + txtln.Text + "','" + txteml.Text + "','" + txtpn.Text + "','" + dldt.SelectedValue + "','"+txtat.Text+"','" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("doctor.aspx");
        }
    }
}