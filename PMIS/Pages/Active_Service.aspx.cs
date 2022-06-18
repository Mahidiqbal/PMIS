using PMC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class Application_Form : System.Web.UI.Page
    {
        string query;
        DataSet ds;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }

        public void loadData()
        {

            query = "select User_Pno, User_firstName +' '+User_lastName as Name,User_Phone, " +
                "CASE WHEN Cadre6 is not null and Cadre6 != '' THEN Cadre6 " +
                "WHEN Cadre5 is not null and Cadre5 != '' THEN Cadre5 " +
                "WHEN Cadre4 is not null and Cadre4 != '' THEN Cadre4 " +
                "WHEN Cadre3 is not null and Cadre3 != '' THEN Cadre3 " +
                "WHEN Cadre2 is not null and Cadre2 != '' THEN Cadre2 " +
                "WHEN Cadre1 is not null and Cadre1 != '' THEN Cadre1 " +
                "ELSE null END as Cadre, Working_Sanction, " +
                "CASE WHEN Unit_Served5 is not null and Unit_Served5 != '' THEN Unit_Served5 " +
                "WHEN Unit_Served4 is not null and Unit_Served4 != '' THEN Unit_Served4 " +
                "WHEN Unit_Served3 is not null and Unit_Served3 != ''  THEN Unit_Served3 " +
                "WHEN Unit_Served2 is not null and Unit_Served2 != '' THEN Unit_Served2 " +
                "WHEN Unit_Served1 is not null and Unit_Served1 != '' THEN Unit_Served1 " +
                "ELSE null END as Unit from View_Active_Service";
            ds = con.getData(query);
            dgv.DataSource = ds;
            dgv.DataBind();
        }
       
        protected void dgv_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv.EditIndex = -1;
            loadData();
        }

        protected void dgv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgv.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_User SET Is_Deleted = '" + true + "' where User_ID ='" + id + "'";
            ds = con.getData(query);
            loadData();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            query = "select User_Pno, User_firstName +' '+User_lastName as Name,User_Phone, " +
                "CASE WHEN Cadre6 is not null and Cadre6 != '' THEN Cadre6 " +
                "WHEN Cadre5 is not null and Cadre5 != '' THEN Cadre5 " +
                "WHEN Cadre4 is not null and Cadre4 != '' THEN Cadre4 " +
                "WHEN Cadre3 is not null and Cadre3 != '' THEN Cadre3 " +
                "WHEN Cadre2 is not null and Cadre2 != '' THEN Cadre2 " +
                "WHEN Cadre1 is not null and Cadre1 != '' THEN Cadre1 " +
                "ELSE null END as Cadre, Working_Sanction, " +
                "CASE WHEN Unit_Served5 is not null and Unit_Served5 != '' THEN Unit_Served5 " +
                "WHEN Unit_Served4 is not null and Unit_Served4 != '' THEN Unit_Served4 " +
                "WHEN Unit_Served3 is not null and Unit_Served3 != ''  THEN Unit_Served3 " +
                "WHEN Unit_Served2 is not null and Unit_Served2 != '' THEN Unit_Served2 " +
                "WHEN Unit_Served1 is not null and Unit_Served1 != '' THEN Unit_Served1 " +
                "ELSE null END as Unit from View_Active_Service ";
            ds = con.getData(query);
            ds.Tables[0].DefaultView.RowFilter = "Unit Like '"+txtSearch.Text.Trim()+"%'";
            DataTable dt = (ds.Tables[0].DefaultView).ToTable();
            dgv.DataSource = dt;
            dgv.DataBind();


        }
    }
}