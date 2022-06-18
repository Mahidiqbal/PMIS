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
                loadData3();
                loadData4();
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
        public void loadData3()
        {
            query = "SELECT * FROM tbl_Sanction where Is_Deleted = '" + false + "'";
            ds = con.getData(query);
            dgvSanction.DataSource = ds;
            dgvSanction.DataBind();
        }
        public void loadData4()
        {
            query = "SELECT * FROM tbl_Transfer where Is_Deleted = '" + false + "'";
            ds = con.getData(query);
            dgvTransfer.DataSource = ds;
            dgvTransfer.DataBind();
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

        protected void dgv_RowCommand3(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int id1 = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_Sanction SET Status = 'Approved' where SanctionID = '" + id1 + "'";
                    con.setData(query);
                    loadData3();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_Sanction SET Status = 'Rejected' where SanctionID = '" + id1 + "'";
                    con.setData(query);
                    loadData3();
                }
              
            }
            catch (Exception)
            {

            }
        }

        protected void dgv_RowCommand4(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int id1 = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_Transfer SET Status = 'Approved' where TransferID = '" + id1 + "'";
                    con.setData(query);
                    loadData4();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_Transfer SET Status = 'Rejected' where TransferID = '" + id1 + "'";
                    con.setData(query);
                    loadData4();
                }
                
            }
            catch (Exception)
            {

            }
        }
        protected void dgv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgv.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_User SET Is_Deleted = '" + true + "' where User_ID ='" + id + "'";
            ds = con.getData(query);
            loadData();
        }
        protected void dgv_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgvFam.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_FamilyInfo SET Is_Deleted = '" + true + "' where Fam_ID ='" + id + "'";
            ds = con.getData(query);
            loadData1();
        }
        protected void dgv_RowDeleting2(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgvQualification.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_Qualification SET IsDeleted = '" + true + "' where QualificationID ='" + id + "'";
            ds = con.getData(query);
            loadData2();
        }
        protected void dgv_RowDeleting3(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgvSanction.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_Sanction SET Is_Deleted = '" + true + "' where SanctionID ='" + id + "'";
            ds = con.getData(query);
            loadData3();
        }
        protected void dgv_RowDeleting4(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgvTransfer.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_Transfer SET Is_Deleted = '" + true + "' where TransferID ='" + id + "'";
            ds = con.getData(query);
            loadData4();
        }
    }
}