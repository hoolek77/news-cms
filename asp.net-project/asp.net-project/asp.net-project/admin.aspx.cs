using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Post(object sender, EventArgs e)
        {
            Response.Redirect("./addPost.aspx");
        }

        protected void Mange_Users(object sender, EventArgs e)
        {
            Response.Redirect("./manageUsers.aspx");
        }

    }
}