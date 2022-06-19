using PMC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class Pension : System.Web.UI.Page
    {
        string query;
        DataSet ds;
        DB_Conn con = new DB_Conn();
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
                query = "select * from tbl_User where User_Pno = '" + PnoSearch.Text + "' and Is_Deleted ='" + false + "'";
                ds = con.getData(query);
                if(ds.Tables[0].Rows.Count>0 && PnoSearch.Text != "")
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
                    lblMessage.Text = "Invalid! P.No";
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