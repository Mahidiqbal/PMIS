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
            if(!IsPostBack)
            {
                btnHome.InnerText = "Dashboard";
                if (Session["Role"].ToString() == "User")
                {
                    btnPMIS.Visible=false;
                    btnHome.InnerText = "PNCA Dashboard";
                    return;
                }
            }
        }
    }
}