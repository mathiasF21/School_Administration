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
    public partial class ModifyCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connection = WebConfigurationManager.ConnectionStrings["School"].ToString();
            SqlConnection conn = new SqlConnection(connection);

            int courseId = Int16.Parse(TextBox2.Text);
            String newDescription = TextBox1.Text;

            SqlCommand modifyCourse = new SqlCommand("ModifyCourseDescription", conn);
            modifyCourse.CommandType = System.Data.CommandType.StoredProcedure;

            modifyCourse.Parameters.Add(new SqlParameter("@newDescription", newDescription));
            modifyCourse.Parameters.Add(new SqlParameter("@courseId", courseId));

            conn.Open();
            modifyCourse.ExecuteNonQuery();
            conn.Close();
        }
    }
}