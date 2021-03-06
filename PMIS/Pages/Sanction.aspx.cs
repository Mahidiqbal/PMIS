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
        DataSet ds,ds1;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                query = "Select * from tbl_Sanction where User_ID='" + Session["ID"] + "' and Is_Deleted = '" + false + "'";
                ds = con.getData(query);
                if(ds.Tables[0].Rows.Count>0)
                {
                    btnSubmit.Text = "Update";
                }
                if (Session["Role"].ToString() == "User")
                {
                    admin.Visible = false;
                    DDWorkingSanc.SelectedIndex = -1;
                    DDCadre.SelectedIndex = -1;
                    //query = "Select * from tbl_Qualification";
                    //ds = con.getData(query);

                    //DDCadre.DataTextField = ds.Tables[0].Columns["Cadre4"].ToString();
                    //DDCadre.DataValueField = ds.Tables[0].Columns["QualificationID"].ToString();
                    //DDCadre.DataSource = ds.Tables[0];
                    //DDCadre.DataBind();

                }
                else if (Session["Role"].ToString() == "Admin")
                {
                    user.Visible = false;
                    admin.Visible = true;

                    //string query1 = "Select DISTINCT * from tbl_Sanction";
                    //ds1 = con.getData(query1);
                    //ddSanction.DataSource = ds1;
                    //ddSanction.DataBind();
                    //ddSanction.DataTextField = "Working_Sanction";
                    //ddSanction.DataValueField = "SanctionID";
                    //ddSanction.DataBind();
                    //ddSanction.Items.Insert(0, new ListItem("Select", string.Empty));

                }
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt;
                
                query = "SELECT SanctionID,Working_Sanction,latest_cadre,User_firstName + '  ' + User_lastName As Name, User_Pno,Status, " +
                     "CASE WHEN Unit_Served5 is not null and Unit_Served5 != '' THEN Unit_Served5 " +
                     "WHEN Unit_Served4 is not null and Unit_Served4 != '' THEN Unit_Served4 " +
                     "WHEN Unit_Served3 is not null and Unit_Served3 != ''  THEN Unit_Served3 " +
                     "WHEN Unit_Served2 is not null and Unit_Served2 != '' THEN Unit_Served2 " +
                     "WHEN Unit_Served1 is not null and Unit_Served1 != '' THEN Unit_Served1 " +
                     "ELSE null END as Unit " +
                     "FROM View_Sanction where Is_Deleted ='" + false + "'";
                ds = con.getData(query);
                ds.Tables[0].DefaultView.RowFilter = "Unit = '" + ddAdminSanc.SelectedValue + "' or latest_cadre ='" + ddAdminCadre.SelectedValue + "'";
                dt = (ds.Tables[0].DefaultView).ToTable();
                dgv.DataSource = dt;
                dgv.DataBind();

                ds.Tables[0].DefaultView.RowFilter = "Unit = 'PNS BAHADUR'";
                dt = (ds.Tables[0].DefaultView).ToTable();
                dgvBahadur.DataSource = dt;
                dgvBahadur.DataBind();

                ds.Tables[0].DefaultView.RowFilter = "Unit = 'PNS JAUHAR'";
                dt = (ds.Tables[0].DefaultView).ToTable();
                dgvJauhar.DataSource = dt;
                dgvJauhar.DataBind();

                ds.Tables[0].DefaultView.RowFilter = "Unit = 'PNS RAHBAR'";
                dt= (ds.Tables[0].DefaultView).ToTable();
                dgvRAHBAR.DataSource = dt;
                dgvRAHBAR.DataBind(); 


                ds.Tables[0].DefaultView.RowFilter = "Unit = 'PNCA'";
                dt = (ds.Tables[0].DefaultView).ToTable();
                dgvPNCA.DataSource = dt;
                dgvPNCA.DataBind();

                ds.Tables[0].DefaultView.RowFilter = "Unit = 'PNSL'";
                dt = (ds.Tables[0].DefaultView).ToTable();
                dgvPNSL.DataSource = dt;
                dgvPNSL.DataBind();


            }
            catch
            {

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (btnSubmit.Text == "Submit")
                {
                    query = "insert into tbl_Sanction (Working_Sanction, latest_cadre, User_ID,Is_Deleted, Status,Pno) Values('" + DDWorkingSanc.SelectedValue + "','" + DDCadre.SelectedValue + "', '" + Session["ID"] + "', '" + false + "', 'Pending','" + Session["User_Pno"] + "')";
                    con.setData(query);
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Data Added Wait for Approval.";

                    Page_Load(this, null);
                }
                else if(btnSubmit.Text=="Update")
                {
                    query = "UPDATE tbl_Sanction SET Working_Sanction='" + DDWorkingSanc.SelectedValue + "', latest_cadre='" + DDCadre.SelectedValue + "', Is_Deleted='" + false + "', Status='Pending' where User_ID='" + Session["ID"] + "'";
                    con.setData(query);
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Data Updated Wait for Approval.";
                }
            }
            catch(Exception ex) 
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = ex.Message;
            }
        }

    }
}