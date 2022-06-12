using System;
using System.Collections.Generic;
using System.Drawing;
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
            if(!IsPostBack)
            {
                if (Session["Role"].ToString() == "User")
                {
                    lblMessage.Text = "";
                    PnoSearch.Visible = false;
                    btnSearch.Visible = false;
                    btnPerInfo.Visible = true;
                    btnFamInfo.Visible = true;
                    btnTraining.Visible = true;
                    btnTransfer.Visible = true;
                }
                else
                {
                    lblMessage.Text = "";
                    btnPerInfo.Visible = false;
                    btnFamInfo.Visible = false;
                    btnTraining.Visible = false;
                    btnTransfer.Visible = false;
                }
            }
        }
        protected void BtnPnoSearch_Click(object sender, EventArgs e)
        {
            try
            {
                if(PnoSearch.Text != "")
                {
                    lblMessage.Text = "";
                    Session["Pno"] = PnoSearch.Text.ToString();
                    btnPerInfo.Visible = true;
                    btnFamInfo.Visible = true;
                    btnTraining.Visible = true;
                    btnTransfer.Visible = true;
                }
                else
                {
                    lblMessage.ForeColor = Color.Red;
                    lblMessage.Text = "*Please Enter P.No";
                }
            }
            catch { }
        }
        
        protected void BtnTraining_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Qualification.aspx");
            }
            catch { }
        }
        protected void BtnTransfer_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Transfer_Record.aspx");
            }
            catch { }
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