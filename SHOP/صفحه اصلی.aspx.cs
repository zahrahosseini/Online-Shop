using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using user.BALL;



namespace SHOP
{
    public partial class _Default : System.Web.UI.Page
    {
        private Buser bu = new Buser();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bu.username = TextBox1.Text;
            bu.password = TextBox2.Text;
            bu.type = "employee";
            if (bu.check() != 0)
                TextBox1.Text = "Find";
            else
                TextBox1.Text = "NFind";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            bu.username = TextBox1.Text;
            bu.password = TextBox2.Text;
            bu.type = "customer";
            if (bu.check() != 0)
               // TextBox1.Text = "Find";

                Response.Redirect("صفحه مشتری.aspx");
                
            else
                TextBox1.Text = "NFind";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            bu.username = TextBox1.Text;
            bu.password = TextBox2.Text;
            bu.type = "manager";
            if (bu.check() != 0)
                TextBox1.Text = "Find";
            else
                TextBox1.Text = "NFind";
        }
    }
}
