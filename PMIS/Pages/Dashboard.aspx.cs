using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void BtnSanction_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Sanction.aspx");
            }
            catch { }
        }
        protected void BtnUpCountry_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("UpCountry.aspx");
            }
            catch { }
        }
        protected void BtnActiveService_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Active_Service.aspx");
            }
            catch { }
        }
        protected void BtnLengthOfService_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Length_Of_Service.aspx");
            }
            catch { }
        }
        protected void BtnEdozzier_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Edozzier.aspx");
            }
            catch { }
        }
        protected void BtnTodRoster_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("TodRoster.aspx");
            }
            catch { }
        }
            protected void BtnSodRoster_Click(object sender, EventArgs e)
            {
                try
                {
                    Response.Redirect("SodRoster.aspx");
                }
                catch { }
            }
            protected void BtnRequestWelfare_Click(object sender, EventArgs e)
            {
                try
                {
                    Response.Redirect("RequestWelfare.aspx");
                }
                catch { }
            }
        
    }
}