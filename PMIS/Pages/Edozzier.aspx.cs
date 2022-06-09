using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class Pension : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnPersonalInfo_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Personal_Info.aspx");
            }
            catch { }
        }
        protected void BtnFamliyInfo_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Family_Info.aspx");
            }
            catch { }
        }
    }
}