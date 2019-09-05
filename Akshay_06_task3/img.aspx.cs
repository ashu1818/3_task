using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Akshay_06_task3
{
    public partial class img : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            byte[] imgp = imgUpload.FileBytes;

            SqlCommand cmd = new SqlCommand("Insert into task_3(ImgName,ImgUrl) values(@ImgName,@ImgUrl)", conn);
            cmd.Parameters.AddWithValue("@ImgName", name.Text);
            cmd.Parameters.AddWithValue("@ImgUrl", imgp);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}