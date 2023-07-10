using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_project
{
    public partial class Connect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["School"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int id = Int16.Parse(TextBox2.Text);
            String password = TextBox1.Text;

            SqlCommand connect = new SqlCommand("Connect", conn);
            connect.CommandType = System.Data.CommandType.StoredProcedure;

            connect.Parameters.Add(new SqlParameter("@id", id));
            connect.Parameters.Add(new SqlParameter("@password", password));

            SqlParameter success = connect.Parameters.Add("@success", System.Data.SqlDbType.Int);
            SqlParameter type = connect.Parameters.Add("@type", System.Data.SqlDbType.Int);

            success.Direction = System.Data.ParameterDirection.Output;
            type.Direction = System.Data.ParameterDirection.Output;

            conn.Open();
            connect.ExecuteNonQuery();
            conn.Close();

            if (success.Value.ToString() == "1")
                Session["user"] = id;

            if (type.Value.ToString() == "1")
                Response.Redirect("Instructor.aspx");
            if (type.Value.ToString() == "2")
                Response.Redirect("Student.aspx");
            else
                Response.Write("Either the ID or the password are incorrect.");


        }
    }
}