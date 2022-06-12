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
    public partial class Independent : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadData();
            }
        }
        
        protected void btnApply_Click(object sender, EventArgs e)
        {
            try
            {
                query = "INSERT INTO tbl_UpCountryRoster (Pno, Name, Cadre, CurrentStation, DurationServed, DateWill, Station, User_ID, Status, Is_Deleted, Created_On) " +
                    " VALUES('" + txtPno.Text + "','" + txtName.Text + "','" + txtCadre.Text + "','" + txtCurrentSta.Text + "','" + txtDuration.Text + "','" + txtDate.Text + "','" + txtCurrentSta.Text + "', '" + Session["ID"].ToString() + "','Pending','" + false + "',getdate())";
                con.setData(query);
                lblMsg.ForeColor = Color.Green;
                lblMsg.Text = "Application Submit Wait for Admin Approval";

                Page_Load(this, null);
            }
            catch { }
        }
        protected void loadData()
        {
            try
            {
                if (Session["Role"].ToString() == "Admin")
                {
                    btnApply.Visible = false;
                    btnCancel.Visible = false;
                    User.Visible = false;
                    query = "Select * from tbl_UpCountryRoster where Is_Deleted = '" + false + "'";
                    ds = con.getData(query);
                    dgv.DataSource = ds;
                    dgv.DataBind();
                }
                else if (Session["Role"].ToString() == "User")
                {
                    Admin.Visible = false;
                    query = "select * from tbl_UpCountryRoster where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved'";
                    DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtPno.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtName.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtCadre.Text = Convert.ToString(ds.Tables[0].Rows[0][3]);
                        txtCurrentSta.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtDuration.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtDate.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        txtUpcountry.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                    }
                    else
                    {
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "Your Status is Pending.";
                    }
                }
            }
            catch { }
        }
        int id;
        protected void dgv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                id = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_UpCountryRoster SET Status = 'Approved' where UpCountryID = '" + id + "'";
                    con.setData(query);
                    loadData();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_UpCountryRoster SET Status = 'Rejected' where UpCountryID = '" + id + "'";
                    con.setData(query);
                    loadData();
                }
            }
            catch (Exception)
            {

            }
        }
        protected void dgv_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
        }
    }
}