using PMC;
using System;
using System.Collections.Generic;
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

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                query = "INSERT INTO tbl_Qualification (Institute1,Institute2,Institute3,Institute4,Degree1,Degree2,Degree3,Degree4,Percentage1,Percentage2,Percentage3,Percentage4,Year1,Year2,Year3,Year4,Specialization1,Specialization2,Specialization3,Specialization4,Status1,Status2,Status3,Status4,Course1,Course2,Course3,Course4,Inst1,Inst2,Inst3,Inst4,CourseStatus1,CourseStatus2,CourseStatus3,CourseStatus4,Cadre1,Cadre2,Cadre3,Cadre4,Promotion_Date1,Promotion_Date2,Promotion_Date3,Promotion_Date4,IsDeleted,CreatedOn,CreatedBy)" +
                    " VALUES ('" + txtInsitute1.Text + "','" + txtInsitute2.Text + "','" + txtInsitute3.Text + "','" + txtInsitute4.Text + "','" + txtDegree1.Text + "','" + txtDegree2.Text + "','" + txtDegree3.Text + "','" + txtDegree4.Text + "','" + txtPercentage1.Text + "','" + txtPercentage2.Text + "','" + txtPercentage3.Text + "','" + txtDegree4.Text + "','" + txtYear1.Text + "','" + txtYear2.Text + "','" + txtYear3.Text + "','" + txtYear4.Text + "'," +
                    " '" + txtSpec1.Text + "','" + txtSpec2.Text + "','" + txtSpec3.Text + "','" + txtSpec4.Text + "','" + txtComplete1.Text + "','" + txtComplete2.Text + "','" + txtComplete3.Text + "','" + txtComplete4.Text + "'," +
                    " '" + txtCourse1.Text + "','" + txtCourse2.Text + "','" + txtCourse3.Text + "','" + txtCourse4.Text + "','" + txtInsitute1.Text + "','" + txtInsitute2.Text + "','" + txtInsitute3.Text + "','" + txtInsitute4.Text + "','" + txtstatus1.Text + "','" + txtstatus2.Text + "','" + txtstatus3.Text + "','" + txtstatus4.Text + "'," +
                    " '" + txtCadre1.Text + "','" + txtCadre2.Text + "','" + txtCadre3.Text + "','" + txtCadre4.Text + "','" + txtDate1.Text + "','" + txtDate2.Text + "','" + txtDate3.Text + "','" + txtDate4.Text + "','" + false + "',getdate(),'" + Session["ID"].ToString() + "')";
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