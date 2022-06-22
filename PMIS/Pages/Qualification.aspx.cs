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
                query = "select * from tbl_Qualification where User_ID ='" + Session["ID"] + "' and IsDeleted ='" + false + "'";
                DataSet ds3 = con.getData(query);
                if(ds3.Tables[0].Rows.Count>0)
                {
                    btnSubmit.Text = "Update";
                }
                btnApprove.Visible = false;
                btnReject.Visible = false;
                btnDelete.Visible = false;
                if (Session["Role"].ToString() == "Admin")
                {
                    btnSubmit.Visible = false;
                    btnCancel.Visible = false;

                    query = "select * from tbl_Qualification where Pno = '" + Session["Pno"].ToString() + "' and IsDeleted ='"+false+"'";
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
                    query = "select * from tbl_Qualification where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved' and IsDeleted='"+false+"'";
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
                if (btnSubmit.Text == "Submit")
                {
                    query = "INSERT INTO tbl_Qualification (Institute1,Institute2,Institute3,Institute4,Degree1,Degree2,Degree3,Degree4,Percentage1,Percentage2,Percentage3,Percentage4,Year1,Year2,Year3,Year4,Specialization1,Specialization2,Specialization3,Specialization4,Status1,Status2,Status3,Status4,Course1,Course2,Course3,Course4,Inst1,Inst2,Inst3,Inst4,CourseStatus1,CourseStatus2,CourseStatus3,CourseStatus4,Cadre1,Cadre2,Cadre3,Cadre4,Cadre5,Cadre6,Promotion_Date1,Promotion_Date2,Promotion_Date3,Promotion_Date4,Promotion_Date5,Promotion_Date6,User_ID,Pno,IsDeleted,CreatedOn,CreatedBy,Status)" +
                        " VALUES ('" + txtInsitute1.Text + "','" + txtInsitute2.Text + "','" + txtInsitute3.Text + "','" + txtInsitute4.Text + "','" + txtDegree1.Text + "','" + txtDegree2.Text + "','" + txtDegree3.Text + "','" + txtDegree4.Text + "','" + txtPercentage1.Text + "','" + txtPercentage2.Text + "','" + txtPercentage3.Text + "','" + txtPercentage4.Text + "','" + txtYear1.Text + "','" + txtYear2.Text + "','" + txtYear3.Text + "','" + txtYear4.Text + "'," +
                        " '" + txtSpec1.Text + "','" + txtSpec2.Text + "','" + txtSpec3.Text + "','" + txtSpec4.Text + "','" + txtComplete1.Text + "','" + txtComplete2.Text + "','" + txtComplete3.Text + "','" + txtComplete4.Text + "'," +
                        " '" + txtCourse1.Text + "','" + txtCourse2.Text + "','" + txtCourse3.Text + "','" + txtCourse4.Text + "','" + txtInsitute1.Text + "','" + txtInsitute2.Text + "','" + txtInsitute3.Text + "','" + txtInsitute4.Text + "','" + txtstatus1.Text + "','" + txtstatus2.Text + "','" + txtstatus3.Text + "','" + txtstatus4.Text + "'," +
                        " '" + txtCadre1.Text + "','" + txtCadre2.Text + "','" + txtCadre3.Text + "','" + txtCadre4.Text + "','" + txtCadre5.Text + "','" + txtCadre5.Text + "','" + txtDate1.Text + "','" + txtDate2.Text + "','" + txtDate3.Text + "','" + txtDate4.Text + "','" + txtDate5.Text + "','" + txtDate6.Text + "','" + Session["ID"].ToString() + "','" + Session["User_Pno"].ToString() + "','" + false + "',getdate(),'" + Session["Name"].ToString() + "','Pending')";
                    con.setData(query);
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Data Submit Successfully";
                }
                else if(btnSubmit.Text=="Update")
                {
                    string inst1 = txtInstitute1.Text.ToString();
                    string inst2 = txtInstitute2.Text.ToString();
                    string inst3 = txtInstitute3.Text.ToString();
                    string inst4 = txtInstitute4.Text.ToString();
                    string deg1 = txtDegree1.Text.ToString();
                    string deg2 = txtDegree2.Text.ToString();
                    string deg3 = txtDegree3.Text.ToString();
                    string deg4 = txtDegree4.Text.ToString();
                    string percent1 = txtPercentage1.Text.ToString();
                    string percent2 = txtPercentage2.Text.ToString();
                    string percent3 = txtPercentage3.Text.ToString();
                    string percent4 = txtPercentage4.Text.ToString();
                    string year1 = txtYear1.Text.ToString();
                    string year2 = txtYear2.Text.ToString();
                    string year3 = txtYear3.Text.ToString();
                    string year4 = txtYear4.Text.ToString();
                    string qr1 = "UPDATE tbl_Qualification SET Institute1='" + inst1 + "',Institute2='" + inst2 + "',Institute3='" + inst3 + "',Institute4='" + inst4 + "',Degree1='" + deg1 + "',Degree2='" + deg2 + "',Degree3='" + deg3 + "',Degree4='" + deg4 + "',Percentage1='" + percent1 + "',Percentage2='" + percent2 + "',Percentage3='" + percent3 + "',Percentage4='" + percent4 + "',Year1='" + year1 + "',Year2='" + year2 + "',Year3='" + year3 + "',Year4='" + year4 + "', " + "Specialization1='" + txtSpec1.Text + "',Specialization2='" + txtSpec2.Text + "',Specialization3='" + txtSpec3.Text + "',Specialization4='" + txtSpec4.Text + "',Status1='" + txtComplete1.Text + "',Status2='" + txtComplete2.Text + "',Status3='" + txtComplete3.Text + "',Status4='" + txtComplete4.Text + "', " + "Course1='" + txtCourse1.Text + "',Course2='" + txtCourse2.Text + "',Course3='" + txtCourse3.Text + "',Course4='" + txtCourse4.Text + "',Inst1='" + txtInsitute1.Text + "',Inst2='" + txtInsitute2.Text + "',Inst3='" + txtInsitute3.Text + "',Inst4='" + txtInsitute4.Text + "',CourseStatus1='" + txtstatus1.Text + "',CourseStatus2='" + txtstatus2.Text + "',CourseStatus3='" + txtstatus3.Text + "',CourseStatus4='" + txtstatus4.Text + "', " + "Cadre1='" + txtCadre1.Text + "',Cadre2='" + txtCadre2.Text + "',Cadre3='" + txtCadre3.Text + "',Cadre4='" + txtCadre4.Text + "',Cadre5='" + txtCadre5.Text + "',Cadre6='" + txtCadre6.Text + "',Promotion_Date1='" + txtDate1.Text + "',Promotion_Date2='" + txtDate2.Text + "',Promotion_Date3='" + txtDate3.Text + "',Promotion_Date4='" + txtDate4.Text + "',Promotion_Date5='" + txtDate5.Text + "',Promotion_Date6='" + txtDate6.Text + "',IsDeleted='false',ModifiedOn=getdate(),ModifiedBy='" + Session["Name"].ToString() + "',Status='Pending' where Pno = '" + Session["User_Pno"].ToString() + "'";
                    con.setData(qr1);
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Data Updated Successfully";
                }
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