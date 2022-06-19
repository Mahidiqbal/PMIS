using PMC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class Qualification : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btnApprove.Visible = false;
                btnReject.Visible = false;
                btnDelete.Visible = false;
                if (Session["Role"].ToString() == "Admin")
                {
                    btnSubmit.Visible = false;
                    btnCancel.Visible = false;

                    query = "select * from tbl_Qualification where Pno = '" + Session["Pno"].ToString() + "'";
                    DataSet ds1 = con.getData(query);
                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        txtInsitute1.Text = Convert.ToString(ds1.Tables[0].Rows[0][1]);
                        txtInsitute2.Text = Convert.ToString(ds1.Tables[0].Rows[0][2]);
                        txtInsitute3.Text = Convert.ToString(ds1.Tables[0].Rows[0][3]);
                        txtInsitute4.Text = Convert.ToString(ds1.Tables[0].Rows[0][4]);
                        txtDegree1.Text = Convert.ToString(ds1.Tables[0].Rows[0][5]);
                        txtDegree2.Text = Convert.ToString(ds1.Tables[0].Rows[0][6]);
                        txtDegree3.Text = Convert.ToString(ds1.Tables[0].Rows[0][7]);
                        txtDegree4.Text = Convert.ToString(ds1.Tables[0].Rows[0][8]);
                        txtPercentage1.Text = Convert.ToString(ds1.Tables[0].Rows[0][9]);
                        txtPercentage2.Text = Convert.ToString(ds1.Tables[0].Rows[0][10]);
                        txtPercentage3.Text = Convert.ToString(ds1.Tables[0].Rows[0][11]);
                        txtPercentage4.Text = Convert.ToString(ds1.Tables[0].Rows[0][12]);
                        txtYear1.Text = Convert.ToString(ds1.Tables[0].Rows[0][13]);
                        txtYear2.Text = Convert.ToString(ds1.Tables[0].Rows[0][14]);
                        txtYear3.Text = Convert.ToString(ds1.Tables[0].Rows[0][15]);
                        txtYear4.Text = Convert.ToString(ds1.Tables[0].Rows[0][16]);

                        txtSpec1.Text = Convert.ToString(ds1.Tables[0].Rows[0][17]);
                        txtSpec2.Text = Convert.ToString(ds1.Tables[0].Rows[0][18]);
                        txtSpec3.Text = Convert.ToString(ds1.Tables[0].Rows[0][19]);
                        txtSpec4.Text = Convert.ToString(ds1.Tables[0].Rows[0][20]);
                        txtComplete1.Text = Convert.ToString(ds1.Tables[0].Rows[0][21]);
                        txtComplete2.Text = Convert.ToString(ds1.Tables[0].Rows[0][22]);
                        txtComplete3.Text = Convert.ToString(ds1.Tables[0].Rows[0][23]);
                        txtComplete4.Text = Convert.ToString(ds1.Tables[0].Rows[0][24]);
                        txtCourse1.Text = Convert.ToString(ds1.Tables[0].Rows[0][25]);
                        txtCourse2.Text = Convert.ToString(ds1.Tables[0].Rows[0][26]);
                        txtCourse3.Text = Convert.ToString(ds1.Tables[0].Rows[0][27]);
                        txtCourse4.Text = Convert.ToString(ds1.Tables[0].Rows[0][28]);
                        txtInstitute1.Text = Convert.ToString(ds1.Tables[0].Rows[0][29]);
                        txtInstitute2.Text = Convert.ToString(ds1.Tables[0].Rows[0][30]);
                        txtInstitute3.Text = Convert.ToString(ds1.Tables[0].Rows[0][31]);
                        txtInstitute4.Text = Convert.ToString(ds1.Tables[0].Rows[0][32]);
                        txtstatus1.Text = Convert.ToString(ds1.Tables[0].Rows[0][33]);
                        txtstatus2.Text = Convert.ToString(ds1.Tables[0].Rows[0][34]);
                        txtstatus3.Text = Convert.ToString(ds1.Tables[0].Rows[0][35]);
                        txtstatus4.Text = Convert.ToString(ds1.Tables[0].Rows[0][36]);

                        txtCadre1.Text = Convert.ToString(ds1.Tables[0].Rows[0][37]);
                        txtCadre2.Text = Convert.ToString(ds1.Tables[0].Rows[0][38]);
                        txtCadre3.Text = Convert.ToString(ds1.Tables[0].Rows[0][39]);
                        txtCadre4.Text = Convert.ToString(ds1.Tables[0].Rows[0][40]);
                        txtCadre5.Text = Convert.ToString(ds1.Tables[0].Rows[0][41]);
                        txtCadre6.Text = Convert.ToString(ds1.Tables[0].Rows[0][42]);
                        txtDate1.Text = Convert.ToString(ds1.Tables[0].Rows[0][43]);
                        txtDate2.Text = Convert.ToString(ds1.Tables[0].Rows[0][44]);
                        txtDate3.Text = Convert.ToString(ds1.Tables[0].Rows[0][45]);
                        txtDate4.Text = Convert.ToString(ds1.Tables[0].Rows[0][46]);
                        txtDate5.Text = Convert.ToString(ds1.Tables[0].Rows[0][47]);
                        txtDate6.Text = Convert.ToString(ds1.Tables[0].Rows[0][48]);

                        if(Session["Request"].ToString()=="1")
                        {
                            btnBack.Visible = false;
                            btnApprove.Visible = true;
                            btnReject.Visible = true;
                            btnDelete.Visible = true;
                        }
                    }
                }
                else if (Session["Role"].ToString() == "User")
                {
                    query = "select * from tbl_Qualification where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved'";
                    DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtInsitute1.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtInsitute2.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtInsitute3.Text = Convert.ToString(ds.Tables[0].Rows[0][3]);
                        txtInsitute4.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtDegree1.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtDegree2.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        txtDegree3.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtDegree4.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtPercentage1.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);
                        txtPercentage2.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtPercentage3.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtPercentage4.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtYear1.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtYear2.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        txtYear3.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtYear4.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);

                        txtSpec1.Text = Convert.ToString(ds.Tables[0].Rows[0][17]);
                        txtSpec2.Text = Convert.ToString(ds.Tables[0].Rows[0][18]);
                        txtSpec3.Text = Convert.ToString(ds.Tables[0].Rows[0][19]);
                        txtSpec4.Text = Convert.ToString(ds.Tables[0].Rows[0][20]);
                        txtComplete1.Text = Convert.ToString(ds.Tables[0].Rows[0][21]);
                        txtComplete2.Text = Convert.ToString(ds.Tables[0].Rows[0][22]);
                        txtComplete3.Text = Convert.ToString(ds.Tables[0].Rows[0][23]);
                        txtComplete4.Text = Convert.ToString(ds.Tables[0].Rows[0][24]);
                        txtCourse1.Text = Convert.ToString(ds.Tables[0].Rows[0][25]);
                        txtCourse2.Text = Convert.ToString(ds.Tables[0].Rows[0][26]);
                        txtCourse3.Text = Convert.ToString(ds.Tables[0].Rows[0][27]);
                        txtCourse4.Text = Convert.ToString(ds.Tables[0].Rows[0][28]);
                        txtInstitute1.Text = Convert.ToString(ds.Tables[0].Rows[0][29]);
                        txtInstitute2.Text = Convert.ToString(ds.Tables[0].Rows[0][30]);
                        txtInstitute3.Text = Convert.ToString(ds.Tables[0].Rows[0][31]);
                        txtInstitute4.Text = Convert.ToString(ds.Tables[0].Rows[0][32]);
                        txtstatus1.Text = Convert.ToString(ds.Tables[0].Rows[0][33]);
                        txtstatus2.Text = Convert.ToString(ds.Tables[0].Rows[0][34]);
                        txtstatus3.Text = Convert.ToString(ds.Tables[0].Rows[0][35]);
                        txtstatus4.Text = Convert.ToString(ds.Tables[0].Rows[0][36]);

                        txtCadre1.Text = Convert.ToString(ds.Tables[0].Rows[0][37]);
                        txtCadre2.Text = Convert.ToString(ds.Tables[0].Rows[0][38]);
                        txtCadre3.Text = Convert.ToString(ds.Tables[0].Rows[0][39]);
                        txtCadre4.Text = Convert.ToString(ds.Tables[0].Rows[0][40]);
                        txtCadre5.Text = Convert.ToString(ds.Tables[0].Rows[0][41]);
                        txtCadre6.Text = Convert.ToString(ds.Tables[0].Rows[0][42]);
                        txtDate1.Text = Convert.ToString(ds.Tables[0].Rows[0][43]);
                        txtDate2.Text = Convert.ToString(ds.Tables[0].Rows[0][44]);
                        txtDate3.Text = Convert.ToString(ds.Tables[0].Rows[0][45]);
                        txtDate4.Text = Convert.ToString(ds.Tables[0].Rows[0][46]);
                        txtDate5.Text = Convert.ToString(ds.Tables[0].Rows[0][47]);
                        txtDate6.Text = Convert.ToString(ds.Tables[0].Rows[0][48]);
                    }
                }
            }
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            try
            {
                query = "UPDATE tbl_Qualification SET Status = 'Approved' where Pno = '" + Session["Pno"].ToString() + "'";
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
                query = "UPDATE tbl_Qualification SET Status = 'Reject' where Pno = '" + Session["Pno"].ToString() + "'";
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
                query = "UPDATE tbl_Qualification SET IsDeleted = '"+true+"' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Data Deleted Successfully";
                Response.Redirect("Request.aspx");
            }
            catch { }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                query = "INSERT INTO tbl_Qualification (Institute1,Institute2,Institute3,Institute4,Degree1,Degree2,Degree3,Degree4,Percentage1,Percentage2,Percentage3,Percentage4,Year1,Year2,Year3,Year4,Specialization1,Specialization2,Specialization3,Specialization4,Status1,Status2,Status3,Status4,Course1,Course2,Course3,Course4,Inst1,Inst2,Inst3,Inst4,CourseStatus1,CourseStatus2,CourseStatus3,CourseStatus4,Cadre1,Cadre2,Cadre3,Cadre4,Cadre5,Cadre6,Promotion_Date1,Promotion_Date2,Promotion_Date3,Promotion_Date4,Promotion_Date5,Promotion_Date6,User_ID,Pno,IsDeleted,CreatedOn,CreatedBy,Status)" +
                    " VALUES ('" + txtInsitute1.Text + "','" + txtInsitute2.Text + "','" + txtInsitute3.Text + "','" + txtInsitute4.Text + "','" + txtDegree1.Text + "','" + txtDegree2.Text + "','" + txtDegree3.Text + "','" + txtDegree4.Text + "','" + txtPercentage1.Text + "','" + txtPercentage2.Text + "','" + txtPercentage3.Text + "','" + txtDegree4.Text + "','" + txtYear1.Text + "','" + txtYear2.Text + "','" + txtYear3.Text + "','" + txtYear4.Text + "'," +
                    " '" + txtSpec1.Text + "','" + txtSpec2.Text + "','" + txtSpec3.Text + "','" + txtSpec4.Text + "','" + txtComplete1.Text + "','" + txtComplete2.Text + "','" + txtComplete3.Text + "','" + txtComplete4.Text + "'," +
                    " '" + txtCourse1.Text + "','" + txtCourse2.Text + "','" + txtCourse3.Text + "','" + txtCourse4.Text + "','" + txtInsitute1.Text + "','" + txtInsitute2.Text + "','" + txtInsitute3.Text + "','" + txtInsitute4.Text + "','" + txtstatus1.Text + "','" + txtstatus2.Text + "','" + txtstatus3.Text + "','" + txtstatus4.Text + "'," +
                    " '" + txtCadre1.Text + "','" + txtCadre2.Text + "','" + txtCadre3.Text + "','" + txtCadre4.Text + "','" + txtCadre5.Text + "','" + txtCadre5.Text + "','" + txtDate1.Text + "','" + txtDate2.Text + "','" + txtDate3.Text + "','" + txtDate4.Text + "','" + txtDate5.Text + "','" + txtDate6.Text + "','" + Session["ID"].ToString() + "','" + Session["User_Pno"].ToString() + "','" + false + "',getdate(),'" + Session["Name"].ToString() + "','Pending')";
                con.setData(query);
                lblMsg.ForeColor = Color.Green;
                lblMsg.Text = "Data Submit Successfully";

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