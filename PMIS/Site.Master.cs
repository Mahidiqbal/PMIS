using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["Role"].Equals("Admin"))
                {
                    btnUserName.Text = "Hello " + Session["Name"].ToString();
                    btnRole.Text = Session["Role"].ToString();
                }
                else if(Session["Role"].Equals("User"))
                {
                    btnHome.Visible = false;
                    btnUserName.Text = "Hello " + Session["Name"].ToString();
                    btnRole.Text = Session["Role"].ToString();
                }
            }
            catch
            {

            }
        }


    }
}