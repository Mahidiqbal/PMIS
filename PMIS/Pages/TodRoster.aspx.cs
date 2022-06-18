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
    public partial class Promotion : System.Web.UI.Page
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
            query = "select User_Pno, User_firstName +' '+User_lastName as Name,User_CNIC,User_Gender," +
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
                "CASE WHEN From_Date5 is not null and From_Date5 != '' THEN CAST(DATEDIFF(yy, From_Date5,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date5, convert(varchar, getdate(), 23)), From_Date5), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date4 is not null and From_Date4 != '' THEN CAST(DATEDIFF(yy, From_Date4,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date4, convert(varchar, getdate(), 23)), From_Date4), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date3 is not null and From_Date3 != ''  THEN CAST(DATEDIFF(yy, From_Date3,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date3, convert(varchar, getdate(), 23)), From_Date3), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date2 is not null and From_Date2 != '' THEN CAST(DATEDIFF(yy, From_Date2,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date2, convert(varchar, getdate(), 23)), From_Date2), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date1 is not null and From_Date1 != '' THEN CAST(DATEDIFF(yy, From_Date1,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date1, convert(varchar, getdate(), 23)), From_Date1), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "ELSE null END as Sta_Date from View_Roster order by Sta_Date desc";
            ds = con.getData(query);
            dgv.DataSource = ds;
            dgv.DataBind();

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            query = "select User_Pno, User_firstName +' '+User_lastName as Name,User_CNIC,User_Gender, " +
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
                "CASE WHEN From_Date5 is not null and From_Date5 != '' THEN CAST(DATEDIFF(yy, From_Date5,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date5, convert(varchar, getdate(), 23)), From_Date5), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date4 is not null and From_Date4 != '' THEN CAST(DATEDIFF(yy, From_Date4,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date4, convert(varchar, getdate(), 23)), From_Date4), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date3 is not null and From_Date3 != ''  THEN CAST(DATEDIFF(yy, From_Date3,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date3, convert(varchar, getdate(), 23)), From_Date3), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date2 is not null and From_Date2 != '' THEN CAST(DATEDIFF(yy, From_Date2,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date2, convert(varchar, getdate(), 23)), From_Date2), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "WHEN From_Date1 is not null and From_Date1 != '' THEN CAST(DATEDIFF(yy, From_Date1,convert(varchar, getdate(), 23) ) AS varchar(4)) +' Year '+CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, From_Date1, convert(varchar, getdate(), 23)), From_Date1), convert(varchar, getdate(), 23)) AS varchar(2)) + ' Month ' " +
                "ELSE null END as Sta_Date from View_Roster order by Sta_Date desc";
            ds = con.getData(query);
            ds.Tables[0].DefaultView.RowFilter = "Unit Like '" + txtSearch.Text.Trim() + "%'";
            DataTable dt = (ds.Tables[0].DefaultView).ToTable();
            dgv.DataSource = dt;
            dgv.DataBind();


        }
    }
}