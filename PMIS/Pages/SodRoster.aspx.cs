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
    public partial class Transfer : System.Web.UI.Page
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
            query = "select User_Pno, User_firstName +' '+User_lastName as Name,User_DOB,EnrollDate," +
                "CASE WHEN Cadre6 is not null and Cadre6 != '' THEN Cadre6 " +
                "WHEN Cadre5 is not null and Cadre5 != '' THEN Cadre5 " +
                "WHEN Cadre4 is not null and Cadre4 != '' THEN Cadre4 " +
                "WHEN Cadre3 is not null and Cadre3 != '' THEN Cadre3 " +
                "WHEN Cadre2 is not null and Cadre2 != '' THEN Cadre2 " +
                "WHEN Cadre1 is not null and Cadre1 != '' THEN Cadre1 " +
                "ELSE null END as Cadre, " +
                "CASE WHEN Unit_Served5 is not null and Unit_Served5 != '' THEN Unit_Served5 " +
                "WHEN Unit_Served4 is not null and Unit_Served4 != '' THEN Unit_Served4 " +
                "WHEN Unit_Served3 is not null and Unit_Served3 != ''  THEN Unit_Served3 " +
                "WHEN Unit_Served2 is not null and Unit_Served2 != '' THEN Unit_Served2 " +
                "WHEN Unit_Served1 is not null and Unit_Served1 != '' THEN Unit_Served1 " +
                "ELSE null END as Unit, " +
                "CAST(DATEDIFF(yy, User_DOB,convert(varchar, getdate(), 23) ) AS varchar(4)) +' year '+ " +
                "CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, User_DOB, convert(varchar, getdate(), 23)), User_DOB), convert(varchar, getdate(), 23)) AS varchar(2)) + ' month ' " +
                "AgeLimit from View_Roster order by AgeLimit desc";
            ds = con.getData(query);
            dgv.DataSource = ds;
            dgv.DataBind();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            query = "select User_Pno, User_firstName +' '+User_lastName as Name,User_DOB,EnrollDate," +
                "CASE WHEN Cadre6 is not null and Cadre6 != '' THEN Cadre6 " +
                "WHEN Cadre5 is not null and Cadre5 != '' THEN Cadre5 " +
                "WHEN Cadre4 is not null and Cadre4 != '' THEN Cadre4 " +
                "WHEN Cadre3 is not null and Cadre3 != '' THEN Cadre3 " +
                "WHEN Cadre2 is not null and Cadre2 != '' THEN Cadre2 " +
                "WHEN Cadre1 is not null and Cadre1 != '' THEN Cadre1 " +
                "ELSE null END as Cadre, " +
                "CASE WHEN Unit_Served5 is not null and Unit_Served5 != '' THEN Unit_Served5 " +
                "WHEN Unit_Served4 is not null and Unit_Served4 != '' THEN Unit_Served4 " +
                "WHEN Unit_Served3 is not null and Unit_Served3 != ''  THEN Unit_Served3 " +
                "WHEN Unit_Served2 is not null and Unit_Served2 != '' THEN Unit_Served2 " +
                "WHEN Unit_Served1 is not null and Unit_Served1 != '' THEN Unit_Served1 " +
                "ELSE null END as Unit, " +
                "CAST(DATEDIFF(yy, User_DOB,convert(varchar, getdate(), 23) ) AS varchar(4)) +' year '+ " +
                "CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, User_DOB, convert(varchar, getdate(), 23)), User_DOB), convert(varchar, getdate(), 23)) AS varchar(2)) + ' month ' " +
                "AgeLimit from View_Roster order by AgeLimit desc";
            ds = con.getData(query);
            ds.Tables[0].DefaultView.RowFilter = "Unit Like '" + txtSearch.Text.Trim() + "%'";
            DataTable dt = (ds.Tables[0].DefaultView).ToTable();
            dgv.DataSource = dt;
            dgv.DataBind();


        }
    }
}