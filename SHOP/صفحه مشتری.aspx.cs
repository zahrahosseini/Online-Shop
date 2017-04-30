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
using customer.BALL;
namespace SHOP
{
    public partial class صفحه_مشتری : System.Web.UI.Page
    {
        public void FillGrid()
        {
            Bcustomer bc = new Bcustomer();
            DataTable dt=null;
            if (TextBox1.Text != "" && TextBox2.Text == "" && TextBox3.Text == "")
                dt = bc.GetEntries(TextBox1.Text);
            else
                if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text == "")
                    dt = bc.GetEntries2(TextBox1.Text, int.Parse(TextBox2.Text));
                else
               if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
                   dt = bc.GetEntries3(TextBox1.Text,TextBox3.Text);
                        GridView1.DataSourceID = String.Empty;
            GridView1.DataSource = null;
            GridView1.DataSource = dt;
            TextBox1.Text = string.Empty;
            GridView1.DataBind();
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            GridView1.Visible = true;
            GridView1.DataSource = null;
            GridView1.DataBind();
            FillGrid();
            

        }

    }
}
