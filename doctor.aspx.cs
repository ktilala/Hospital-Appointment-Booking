using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS_Portel
{
    public partial class doctor : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        String fnm;
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
            da = new SqlDataAdapter("select * from adddoctor", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        void select()
        {
            getcon();
            cmd = new SqlCommand("select * from adddoctor where Id='" + ViewState["id"] + "'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            //Paring

            //txtfn.Text = ds.Tables[0].Rows[0][1].ToString();
            //txtln.Text = ds.Tables[0].Rows[0][2].ToString();
            //txteml.Text = ds.Tables[0].Rows[0][3].ToString();
            //txtpn.Text = ds.Tables[0].Rows[0][4].ToString();
            //dldt.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
            //txtat.Text = ds.Tables[0].Rows[0][6].ToString();
        }
        void imgupload()
        {
            //if (fldimg.HasFile)
            //{
            //    fnm = "images/" + fldimg.FileName;
            //    fldimg.SaveAs(Server.MapPath(fnm));
            //}
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_doctor.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("selectedepartment.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                select();
            }
            else
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from adddoctor where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
}