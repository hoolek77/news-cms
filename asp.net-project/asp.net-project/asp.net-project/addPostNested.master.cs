using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace asp.net_project
{
    public partial class NestedMasterPage5 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Post(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO users (Author,Title,Content,Thumbnail,Published)VALUES('"+author.Value+ "','" + title.Value + "','" + postContent.Value + "','" + thumbnail.Value + "',GETDATE())";
            SqlDataReader reader = cmd.ExecuteReader();
            con.Close();
        }
    }
}