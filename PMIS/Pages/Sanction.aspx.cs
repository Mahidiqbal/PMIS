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
    public partial class Sanction : System.Web.UI.Page
    {
        string query;
        DataSet ds;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"].ToString() == "User")
            {
                admin.Visible = false;
                query = "Select * from tbl_Qualification";
                ds = con.getData(query);
                
                DDCadre.DataTextField = ds.Tables[0].Columns["Cadre4"].ToString();
                DDCadre.DataValueField = ds.Tables[0].Columns["QualificationID"].ToString();
                DDCadre.DataSource = ds.Tables[0];
                DDCadre.DataBind();
                
            }
            else if(Session["Role"].ToString() == "Admin")
            {
                user.Visible = false;
                admin.Visible = true;
                query = "Select * from tbl_Qualification";
                ds = con.getData(query);
                DDCadre1.DataSource = ds;
                DDCadre1.DataBind();
                DDCadre1.DataTextField = "Cadre1";
                DDCadre1.DataValueField = "QualificationID";
                DDCadre1.DataBind();

                string query1 = "Select * from tbl_Sanction";
                ds = con.getData(query1);
                ddSanction.DataSource = ds;
                ddSanction.DataBind();
                ddSanction.DataTextField = "Working_Sanction";
                ddSanction.DataValueField = "SanctionID";
                ddSanction.DataBind();

                
            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                query = "select * from tbl_Sanction where Working_Sanction = '" + ddSanction.SelectedItem + "'";
                ds = con.getData(query);

                dgv.DataSource = ds;
                dgv.DataBind();

            }
            catch
            {

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                query = "insert into tbl_Sanction (Working_Sanction, latest_cadre) Values('" + txtWorkSanc.Text + "','"+DDCadre.SelectedValue+"')";
                con.setData(query);
                lblMsg.ForeColor = Color.Green;
                lblMsg.Text = "Data Added";

                Page_Load(this,null);
            }
            catch { }
        }

    }
}