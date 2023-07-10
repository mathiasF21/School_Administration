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
    public partial class DeleteCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connection = WebConfigurationManager.ConnectionStrings["School"].ToString();
            SqlConnection conn = new SqlConnection(connection);

            int courseId = Int16.Parse(TextBox1.Text);

            SqlCommand deleteCourse = new SqlCommand("DeleteCourse", conn);
            deleteCourse.CommandType = System.Data.CommandType.StoredProcedure;

            deleteCourse.Parameters.Add(new SqlParameter("@courseId", courseId));

            conn.Open();
            deleteCourse.ExecuteNonQuery();
            conn.Close();
        }
    }
}