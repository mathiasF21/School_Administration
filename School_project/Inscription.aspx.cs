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
    public partial class Inscription : System.Web.UI.Page
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

            int courseId = Int16.Parse(TextBox1.Text);
            int instructorId = Int16.Parse(TextBox2.Text);
            int studentId = Int16.Parse((Session["user"].ToString()));

            SqlCommand inscription = new SqlCommand("InscriptionToCourse", conn);
            inscription.CommandType = System.Data.CommandType.StoredProcedure;

            inscription.Parameters.Add(new SqlParameter("@studentId", studentId));
            inscription.Parameters.Add(new SqlParameter("@instructorId", instructorId));
            inscription.Parameters.Add(new SqlParameter("@courseId", courseId));

            conn.Open();
            inscription.ExecuteNonQuery();
            conn.Close();

        }
    }
}