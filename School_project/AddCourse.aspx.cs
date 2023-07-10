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
    public partial class AddCourse : System.Web.UI.Page
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

            String name = TextBox1.Text;
            String description = TextBox2.Text;
            int instructorId = Int16.Parse((Session["user"].ToString()));

            SqlCommand addCourse = new SqlCommand("InstructorAddCourse", conn);
            addCourse.CommandType = System.Data.CommandType.StoredProcedure;

            addCourse.Parameters.Add(new SqlParameter("@name", name));
            addCourse.Parameters.Add(new SqlParameter("@instructor_id", instructorId));
            addCourse.Parameters.Add(new SqlParameter("@description", description));

            conn.Open();
            addCourse.ExecuteNonQuery();
            conn.Close();
            
        }

       
    }   
}