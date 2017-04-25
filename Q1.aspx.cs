using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Q1
{
    public partial class Q1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Bind_Data_view();
            }
        }
        public void Bind_Data_view()
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True";
                SqlCommand cmd = new SqlCommand("select * from Q1", conn);
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = cmd;
                ad.Fill(ds);
                g1.DataSource = ds;
                g1.DataBind();
            }
        }

        protected void g1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void g1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Edit")
            {
                int RowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                Bind_Data_view();
            }
            if(e.CommandName=="Cancel")
            {
                g1.EditIndex = -1;
                Bind_Data_view();
            }
            if(e.CommandName=="Delete")
            {
                int RowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                int id = Convert.ToInt32(e.CommandArgument.ToString());

                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True";
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "delete from Q1 where id='"+id+"'";
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                Bind_Data_view();
            }
            if(e.CommandName=="Update")
            {
                int RowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                string Book_Name = ((TextBox)g1.Rows[RowIndex].FindControl("TextBox1")).Text;
                string Author = ((TextBox)g1.Rows[RowIndex].FindControl("TextBox2")).Text;
                string Publisher = ((TextBox)g1.Rows[RowIndex].FindControl("TextBox3")).Text;
                double Price = Convert.ToDouble(((TextBox)g1.Rows[RowIndex].FindControl("TextBox4")).Text);
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True";
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "update Q1 set Book_Name='"+Book_Name+"',Author='"+Author+"',Publisher='"+Publisher+"',Price='"+Price+"' where id='"+id+"'";
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                g1.EditIndex = -1;
                Bind_Data_view();
            }

        }

        protected void g1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void g1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void g1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void g1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            g1.PageIndex = e.NewPageIndex;
            Bind_Data_view();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            if(isValidation())
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True";
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "insert into Q1(Book_Name,Author,Publisher,Price) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + Convert.ToDouble(t4.Text) + "')";
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                l5.Text = "Data Inserted Succefully";
                t1.Text = "";
                t2.Text = "";
                t3.Text = "";
                t4.Text = "";
                Bind_Data_view();
            }
            
        }

        protected void b2_Click(object sender, EventArgs e)
        {
            t1.Text = "";
            t2.Text = "";
            t3.Text = "";
            t4.Text = "";
        }
        public bool isValidation()
        {
            bool ret = true;
            int r1, r2, r3, r4;
            if(string.IsNullOrEmpty(t1.Text))
            {
                ret = false;
                l1.Text = "Book Name is Required";
            }
            else if(int.TryParse(t1.Text,out r1))
            {
                ret = false;
                l1.Text = "Only Enter Characters";
            }
            else
            {
                l1.Text = "";
            }
            if(string.IsNullOrEmpty(t2.Text))
            {
                ret = false;
                l2.Text = "Author is Required";
            }
            else if (int.TryParse(t2.Text, out r2))
            {
                ret = false;
                l2.Text = "Only Enter Characters";
            }
            else
            {
                l2.Text = "";
            }
            if(string.IsNullOrEmpty(t3.Text))
            {
                ret = false;
                l3.Text = "Publisher is Required";
            }
            else if (int.TryParse(t3.Text, out r3))
            {
                ret = false;
                l3.Text = "Only Enter Characters";
            }
            else
            {
                l3.Text = "";
            }
            if(string.IsNullOrEmpty(t4.Text))
            {
                ret = false;
                l4.Text = "Price is Required";
            }
            else if (!(int.TryParse(t4.Text, out r1)))
            {
                ret = false;
                l4.Text = "Only Enter Number";
            }
            else
            {
                l4.Text = "";
            }
            return ret;
        }
    }
}