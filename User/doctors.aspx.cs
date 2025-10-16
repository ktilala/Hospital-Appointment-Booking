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
    public partial class doctors : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        PagedDataSource pg;
        int row, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        //protected void LinkButton2_Click(object sender, EventArgs e)//next
        //{
        //    int currentPage = Convert.ToInt32(ViewState["Id"]);
        //    currentPage++;
        //    ViewState["Id"] = currentPage;
        //    Filllist();
        //}

        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{
        //    int currentPage = Convert.ToInt32(ViewState["Id"]);
        //    currentPage--;
        //    ViewState["Id"] = currentPage;
        //    Filllist();
        //}

        //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        //{
        //    if (e.CommandName == "cmd_view")
        //    {
        //        int id = Convert.ToInt32(e.CommandArgument);
        //        Response.Redirect("viewDetails.aspx?id=" + id);
        //    }
        //}

        void Filllist()
        {
            getcon();
            da = new SqlDataAdapter("select * from adddoctor", con);
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            pg.AllowPaging = true;
            pg.PageSize = 3;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["Id"]);

            pg.DataSource = ds.Tables[0].DefaultView;

            // Enable/disable navigation button
            LinkButton1.Enabled = !pg.IsFirstPage;
            LinkButton2.Enabled = !pg.IsLastPage;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }

    }
}