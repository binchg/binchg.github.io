using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myweb
{
    public partial class from : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             string a = "hello word";
            Response.Write(a);
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("ok");

        }
    }
}