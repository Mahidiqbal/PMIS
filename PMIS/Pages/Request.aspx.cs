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
    public partial class Request : System.Web.UI.Page
    {
        string query;
        DataSet ds;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadData();
                loadData1();
                loadData2();
            }
        }
        public void loadData()
        {
            query = "SELECT * FROM tbl_User where Is_Deleted = '" + false + "'";
            ds = con.getData(query);
            dgv.DataSource = ds;
            dgv.DataBind();
        }
        public void loadData1()
        {
            query = "SELECT * FROM tbl_FamilyInfo where Is_Deleted = '" + false + "'";
            ds = con.getData(query);
            dgvFam.DataSource = ds;
            dgvFam.DataBind();
        }
        public void loadData2()
        {
            query = "SELECT * FROM tbl_Qualification where IsDeleted = '" + false + "'";
            ds = con.getData(query);
            dgvQualification.DataSource = ds;
            dgvQualification.DataBind();
        }

        int id;
        protected void dgv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                id = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_User SET Status = 'Approved' where User_ID = '" + id + "'";
                    con.setData(query);
                    loadData();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_User SET Status = 'Rejected' where User_ID = '" + id + "'";
                    con.setData(query);
                    loadData();
                }
            }
            catch (Exception)
            {

            }
        }
        
        protected void dgv_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int id1 = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_FamilyInfo SET Status = 'Approved' where Fam_ID = '" + id1 + "'";
                    con.setData(query);
                    loadData1();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_FamilyInfo SET Status = 'Rejected' where Fam_ID = '" + id1 + "'";
                    con.setData(query);
                    loadData1();
                }
            }
            catch (Exception)
            {

            }
        }
        protected void dgv_RowCommand2(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int id1 = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_Qualification SET Status = 'Approved' where QualificationID = '" + id1 + "'";
                    con.setData(query);
                    loadData2();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_Qualification SET Status = 'Rejected' where QualificationID = '" + id1 + "'";
                    con.setData(query);
                    loadData2();
                }
            }
            catch (Exception)
            {

            }
        }
    }
}