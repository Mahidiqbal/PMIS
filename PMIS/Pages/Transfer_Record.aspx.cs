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
                if (Session["Role"].ToString() == "Admin")
                {
                    btnEdit.Visible = false;
                    btnCancel.Visible = false;
                    query = "select * from tbl_Transfer where Pno = '" + Session["Pno"].ToString() + "'";
                    DataSet ds2 = con.getData(query);
                    if (ds2.Tables[0].Rows.Count > 0)
                    {
                        txtUnit1.Text = Convert.ToString(ds2.Tables[0].Rows[0][1]);
                        txtFrom1.Text = Convert.ToString(ds2.Tables[0].Rows[0][2]);
                        txtTo1.Text = Convert.ToString(ds2.Tables[0].Rows[0][3]);
                        txtUnit2.Text = Convert.ToString(ds2.Tables[0].Rows[0][4]);
                        txtFrom2.Text = Convert.ToString(ds2.Tables[0].Rows[0][5]);
                        txtTo2.Text = Convert.ToString(ds2.Tables[0].Rows[0][6]);
                        txtUnit3.Text = Convert.ToString(ds2.Tables[0].Rows[0][7]);
                        txtFrom3.Text = Convert.ToString(ds2.Tables[0].Rows[0][8]);
                        txtTo3.Text = Convert.ToString(ds2.Tables[0].Rows[0][9]);
                        txtUnit4.Text = Convert.ToString(ds2.Tables[0].Rows[0][10]);
                        txtFrom4.Text = Convert.ToString(ds2.Tables[0].Rows[0][11]);
                        txtTo4.Text = Convert.ToString(ds2.Tables[0].Rows[0][12]);
                        txtUnit5.Text = Convert.ToString(ds2.Tables[0].Rows[0][13]);
                        txtFrom5.Text = Convert.ToString(ds2.Tables[0].Rows[0][14]);
                        txtTo5.Text = Convert.ToString(ds2.Tables[0].Rows[0][15]);
                        txtUnit6.Text = Convert.ToString(ds2.Tables[0].Rows[0][16]);
                        txtFrom6.Text = Convert.ToString(ds2.Tables[0].Rows[0][17]);
                        txtTo6.Text = Convert.ToString(ds2.Tables[0].Rows[0][18]);
                    }
                    else
                    {
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "No Record Found";
                    }
                }
                else if (Session["Role"].ToString() == "User")
                {
                    query = "select * from tbl_Transfer where User_ID = '" + Session["ID"].ToString() + "'";
                    DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        btnEdit.Text = "Update";
                        txtUnit1.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtFrom1.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtTo1.Text = Convert.ToString(ds.Tables[0].Rows[0][3]);
                        txtUnit2.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtFrom2.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtTo2.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        txtUnit3.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtFrom3.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtTo3.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);
                        txtUnit4.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtFrom4.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtTo4.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtUnit5.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtFrom5.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        txtTo5.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtUnit6.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                        txtFrom6.Text = Convert.ToString(ds.Tables[0].Rows[0][17]);
                        txtTo6.Text = Convert.ToString(ds.Tables[0].Rows[0][18]);
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
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                query = "INSERT INTO tbl_Transfer(Unit_Served1,From_Date1,To_Date1,Unit_Served2,From_Date2,To_Date2,Unit_Served3,From_Date3,To_Date3,Unit_Served4,From_Date4,To_Date4,Unit_Served5,From_Date5,To_Date5,Unit_Served6,From_Date6,To_Date6,Is_Deleted,Created_On,Created_By,Pno) " +
                    " VALUES('" + txtUnit1.Text + "','" + txtFrom1.Text + "','" + txtTo2.Text + "','" + txtUnit2.Text + "','" + txtFrom2.Text + "','" + txtTo2.Text + "','" + txtUnit3.Text + "','" + txtFrom3.Text + "','" + txtTo3.Text + "','" + txtUnit4.Text + "','" + txtFrom4.Text + "','" + txtTo4.Text + "','" + txtUnit5.Text + "','" + txtFrom5.Text + "','" + txtTo5.Text + "','" + txtUnit6.Text + "','" + txtFrom6.Text + "','" + txtTo6.Text + "','"+false+ "',getdate(),'" + Session["ID"].ToString() + "','" +Session["User_Pno"].ToString() + "')";
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