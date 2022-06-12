using PMC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS
{
    public partial class _Default : Page
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
           
               query = "SELECT User_ID, User_firstName,User_lastName,User_Role,User_Pno,User_Email,User_Password,User_Phone,User_DOB,User_CNIC,User_Gender,Marital_Status,PresentAddress,User_Status FROM tbl_User where Is_Deleted = '" + false + "'";
            ds = con.getData(query);
            dgv.DataSource = ds;
            dgv.DataBind();
        }
        int id;
        protected void dgv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                id = Convert.ToInt32(e.CommandArgument.ToString());
                if (e.CommandName == "Approve")
                {
                    query = "UPDATE tbl_User SET User_Status = 'Approved' where User_ID = '" + id + "'";
                    con.setData(query);
                    loadData();

                }
                else if (e.CommandName == "Reject")
                {
                    query = "UPDATE tbl_User SET User_Status = 'Rejected' where User_ID = '" + id + "'";
                    con.setData(query);
                    loadData();
                }
            }
            catch(Exception)
            {
                
            }
        }
            protected void dgv_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv.EditIndex = e.NewEditIndex;
            loadData();
        }
        protected void dgv_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string fname = (dgv.Rows[e.RowIndex].FindControl("txtName") as TextBox).Text.Trim();
            string lname = (dgv.Rows[e.RowIndex].FindControl("txtLname") as TextBox).Text.Trim();
            string role = (dgv.Rows[e.RowIndex].FindControl("txtRole") as TextBox).Text.Trim();
            string pNo = (dgv.Rows[e.RowIndex].FindControl("txtPno") as TextBox).Text.Trim();
            string email = (dgv.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim();
            string phone = (dgv.Rows[e.RowIndex].FindControl("txtPhone") as TextBox).Text.Trim();
            string dob = (dgv.Rows[e.RowIndex].FindControl("txtDOB") as TextBox).Text.Trim();
            string cnic = (dgv.Rows[e.RowIndex].FindControl("txtCNIC") as TextBox).Text.Trim();
            string gender = (dgv.Rows[e.RowIndex].FindControl("txtGender") as TextBox).Text.Trim();
            string address = (dgv.Rows[e.RowIndex].FindControl("txtAddress") as TextBox).Text.Trim();
            string marital = (dgv.Rows[e.RowIndex].FindControl("txtMariStatus") as TextBox).Text.Trim();

            int id = Convert.ToInt32(dgv.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_User SET User_firstName='" + fname + "', User_lastName='" + lname + "', User_Role='" + role + "', User_Pno='" + pNo + "', User_Email='" + email + "', User_Phone='" + phone + "', User_DOB='" + dob + "',User_CNIC='" + cnic + "', User_Gender='" + gender + "',Marital_Status='" + marital + "', User_Address='" + address + "',Modified_On=getdate(),Modified_By='" + Session["Name"].ToString() + "' WHERE User_ID ='" + id + "'";
            con.setData(query);
            dgv.EditIndex = -1;
            loadData();
        }
        protected void dgv_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv.EditIndex = -1;
            loadData();
        }

        protected void dgv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(dgv.DataKeys[e.RowIndex].Value.ToString());
            query = "UPDATE tbl_User SET Is_Deleted = '"+true+"' where User_ID ='" + id + "'";
            ds = con.getData(query);
            loadData();
        }
    }
}