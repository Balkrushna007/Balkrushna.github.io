using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Q3
{
    public partial class Q3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True";
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "select C.Cust_id,C.FirstName,C.LastName,C.City,C.Country,C.Phone,O.OrderDate,O.OrderNumber,O.Total_Amount from OrderDetails AS O,Customer AS C where O.Cust_id=C.Cust_id";
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    DataSet ds = new DataSet();
                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    ad.Fill(ds);
                    g1.DataSource = ds;
                    g1.DataBind();
                }
            }
            
        }
    }
}