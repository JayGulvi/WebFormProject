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
    public partial class ProductsDetails : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string conf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(conf);
            conn.Open();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string cat = DropDownList1.Text;
            string price = TextBox2.Text;
            string q = "exec ProdDetails '" + name + "', '" + cat + "', '" + price + "'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Index.aspx");
        }
    }
}