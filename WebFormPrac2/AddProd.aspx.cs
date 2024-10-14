using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormPrac2
{
    public partial class AddProd : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string conf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(conf);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "exec ProdDetails '"+TextBox1.Text+"', '"+DropDownList1.Text+"' ,'"+TextBox2.Text+"' ";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Index2.aspx");
        }
    }
}