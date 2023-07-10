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
    public partial class ModifyFinalGrade : System.Web.UI.Page
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

            int studentId = Int16.Parse(TextBox2.Text);
            double finalGrade = Double.Parse(TextBox1.Text);

            SqlCommand modifyFinalGrade = new SqlCommand("ModifyFinalGrade", conn);
            modifyFinalGrade.CommandType = System.Data.CommandType.StoredProcedure;

            modifyFinalGrade.Parameters.Add(new SqlParameter("@studentId", studentId));
            modifyFinalGrade.Parameters.Add(new SqlParameter("@finalGrade", finalGrade));

            conn.Open();
            modifyFinalGrade.ExecuteNonQuery();
            conn.Close();
        }
    }
}