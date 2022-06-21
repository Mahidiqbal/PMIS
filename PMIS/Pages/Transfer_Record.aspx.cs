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
    public partial class Transfer_Record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnApprove.Visible = false;
                btnReject.Visible = false;
                btnDelete.Visible = false;
                if (Session["Role"].ToString() == "Admin")
                {
                    btnEdit.Visible = false;
                    btnCancel.Visible = false;
                    query = "select * from tbl_Transfer where Pno = '" + Session["Pno"].ToString() + "'";
                    DataSet ds2 = con.getData(query);
                    if (ds2.Tables[0].Rows.Count > 0)
                    {
                        DDUnitServed1.SelectedItem.Text = Convert.ToString(ds2.Tables[0].Rows[0][1]);
                        txtFrom1.Text = Convert.ToString(ds2.Tables[0].Rows[0][2]);
                        txtTo1.Text = Convert.ToString(ds2.Tables[0].Rows[0][3]);
                        DDUnitServed2.SelectedItem.Text = Convert.ToString(ds2.Tables[0].Rows[0][4]);
                        txtFrom2.Text = Convert.ToString(ds2.Tables[0].Rows[0][5]);
                        txtTo2.Text = Convert.ToString(ds2.Tables[0].Rows[0][6]);
                        DDUnitServed3.SelectedItem.Text = Convert.ToString(ds2.Tables[0].Rows[0][7]);
                        txtFrom3.Text = Convert.ToString(ds2.Tables[0].Rows[0][8]);
                        txtTo3.Text = Convert.ToString(ds2.Tables[0].Rows[0][9]);
                        DDUnitServed4.SelectedItem.Text = Convert.ToString(ds2.Tables[0].Rows[0][10]);
                        txtFrom4.Text = Convert.ToString(ds2.Tables[0].Rows[0][11]);
                        txtTo4.Text = Convert.ToString(ds2.Tables[0].Rows[0][12]);
                        DDUnitServed5.SelectedItem.Text = Convert.ToString(ds2.Tables[0].Rows[0][13]);
                        txtFrom5.Text = Convert.ToString(ds2.Tables[0].Rows[0][14]);
                        txtTo5.Text = Convert.ToString(ds2.Tables[0].Rows[0][15]);
                        if (Session["Request"].ToString() == "1")
                        {
                            btnBack.Visible = false;
                            btnApprove.Visible = true;
                            btnReject.Visible = true;
                            btnDelete.Visible = true;
                        }
                    }
                    else
                    {
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "No Record Found";
                    }
                }
                else if (Session["Role"].ToString() == "User")
                {
                    query = "select * from tbl_Transfer where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved'";
                    DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        btnEdit.Text = "Update";
                        DDUnitServed1.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtFrom1.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtTo1.Text = Convert.ToString(ds.Tables[0].Rows[0][3]);
                        DDUnitServed2.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtFrom2.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtTo2.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        DDUnitServed3.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtFrom3.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtTo3.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);
                        DDUnitServed4.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtFrom4.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtTo4.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        DDUnitServed5.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtFrom5.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        txtTo5.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                    }
                    else
                    {
                        btnEdit.Text = "Submit";
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "No Record Found";
                    }
                }
            }
        }
        
        string query;
        DB_Conn con = new DB_Conn();
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            try
            {
                query = "UPDATE tbl_Transfer SET Status = 'Approved' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Green;
                lblMsg.Text = "Data Approved Successfully";
            }
            catch { }
        }
        protected void btnReject_Click(object sender, EventArgs e)
        {
            try
            {
                query = "UPDATE tbl_Transfer SET Status = 'Reject' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Data Rejected Successfully";
            }
            catch { }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                query = "UPDATE tbl_Transfer SET Is_Deleted = '" + true + "' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Data Deleted Successfully";
                Response.Redirect("Request.aspx");
            }
            catch { }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                query = "INSERT INTO tbl_Transfer(Unit_Served1,From_Date1,To_Date1,Unit_Served2,From_Date2,To_Date2,Unit_Served3,From_Date3,To_Date3,Unit_Served4,From_Date4,To_Date4,Unit_Served5,From_Date5,To_Date5,Is_Deleted,Created_On,Created_By,Pno,User_ID,Status) " +
                    " VALUES('" + DDUnitServed1.SelectedValue + "','" + txtFrom1.Text + "','" + txtTo2.Text + "','" + DDUnitServed2.SelectedValue + "','" + txtFrom2.Text + "','" + txtTo2.Text + "','" + DDUnitServed3.SelectedValue + "','" + txtFrom3.Text + "','" + txtTo3.Text + "','" + DDUnitServed4.SelectedValue + "','" + txtFrom4.Text + "','" + txtTo4.Text + "','" + DDUnitServed5.SelectedValue + "','" + txtFrom5.Text + "','" + txtTo5.Text + "','"+false+ "',getdate(),'" + Session["Name"].ToString() + "','" +Session["User_Pno"].ToString() + "','" + Session["ID"].ToString() + "','Pending')";
                con.setData(query);
                lblMsg.ForeColor = Color.Green;
                lblMsg.Text = "Data Submit Successfully";

                //for(int i=1; i<=6; i++)
                //{

                //}

            }
            catch(Exception ex)
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = ex.Message;
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            try
            {

            }
            catch { }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Edozzier.aspx");
            }
            catch { }
        }
    }
}