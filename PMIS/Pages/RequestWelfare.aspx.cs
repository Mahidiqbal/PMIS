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
    public partial class Reports : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data.Visible = false;

                loadData();
            }
        }
        protected void btnNOC_Click(object sender, EventArgs e)
        {
            if(Session["Role"].ToString()=="Admin")
            {
                button.Visible = false;
                data.Visible = false;
                Admin.Visible = true;
            }
            if (Session["Role"].ToString() == "User")
            {
                button.Visible = false;
                Admin.Visible = false;
                data.Visible = true;
            }
        }
        
        protected void btnBack_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Dashboard.aspx");
            }
            catch { }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                query = "select * from tbl_Request where User_ID = '" + Session["ID"].ToString() + "' and Is_Deleted='"+false+"'";
                DataSet ds3 = con.getData(query);
                if (ds3.Tables[0].Rows.Count > 0)
                {
                   string query2 = "Update tbl_Request Set Name='" + txtName.Text + "',Gender='" + ddGender.SelectedItem.Text + "',Age='" + txtAge.Text + "',CNIC='" + txtCNIC.Text + "',Cadre='" + ddAdminCadre.SelectedItem.Text + "',Unit='" + DDUnitServed1.SelectedItem.Text + "',Reason='" + txtReason.Text + "',Date=convert(varchar, getdate(), 23),Dash1='" + txtDash1.Text + "',Dash2='" + txtDash2.Text + "',Dash3='" + txtDash3.Text + "',Status='Pending',Is_Deleted='" + false + "' where Pno='" + Session["User_Pno"] + "'";
                    con.setData(query2);
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Data Successfully Submit";
                }
                else
                {
                    query = "INSERT INTO tbl_Request (Pno,Name,Gender,Age,CNIC,Cadre,Unit,Reason,Date,Dash1,Dash2,Dash3,User_ID,Status,Is_Deleted,Created_On,Created_By) " +
                    "VALUES ('" + txtPno.Text + "','" + txtName.Text + "','" + ddGender.SelectedValue + "','" + txtAge.Text + "','" + txtCNIC.Text + "','" + ddAdminCadre.SelectedValue + "','" + DDUnitServed1.Text + "','" + txtReason.Text + "',convert(varchar, getdate(), 23),'" + txtDash1.Text + "','" + txtDash2.Text + "','" + txtDash3.Text + "','" + Session["ID"] + "','Pending','" + false + "',getdate(),'" + Session["Name"].ToString() + "')";
                    con.setData(query);
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Data Successfully Submit";
                }
            }
            catch (Exception ex ){
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = ex.Message;
            }
        }
        protected void loadData()
        {
            try
            {
                if (Session["Role"].ToString() == "Admin")
                {
                    btnEdit.Visible = false;
                    btnNOC.Visible = false;
                    data.Visible = false;
                    query = "Select * from tbl_Request where Is_Deleted = '" + false + "'";

                    ds = con.getData(query);
                    dgv.DataSource = ds;
                    dgv.DataBind();
                }
                else if (Session["Role"].ToString() == "User")
                {
                    Admin.Visible = false;
                    query = "select * from tbl_Request where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved'";
                    DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtPno.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtName.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        ddGender.Text = Convert.ToString(ds.Tables[0].Rows[0][3]);
                        txtAge.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtCNIC.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        ddAdminCadre.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        DDUnitServed1.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtReason.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtDash1.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtDash2.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtDash3.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
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
                    query = "UPDATE tbl_Request SET Status = 'Approved' where Pno = '" + id + "'";
                    con.setData(query);
                    loadData();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_Request SET Status = 'Rejected' where Pno = '" + id + "'";
                    con.setData(query);
                    loadData();
                }
            }
            catch (Exception)
            {

            }
        }
        protected void dgv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id1 = Convert.ToInt32(dgv.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_Request SET Is_Deleted = '" + true + "' where Pno = '" + id1 + "'";
            ds = con.getData(query);
            loadData();
        }
    }
}