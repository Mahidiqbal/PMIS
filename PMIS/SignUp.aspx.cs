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
    public partial class SignUp : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                query = "insert into tbl_User (User_firstName,User_lastName,User_Role,User_Pno,User_Email,User_Password,User_Phone,User_DOB,User_CNIC,User_Gender,User_Address,Marital_Status,Is_Deleted,Created_On )" +
                    "values('" + txtfName.Text + "', '" + txtlName.Text + "', '" + ddUserRole.Items[ddUserRole.SelectedIndex].Text + "', '" + txtPno.Text + "', '" + txtEmail.Text + "', '" + txtPass.Text + "', '" + txtPhone.Text + "', '" + txtUserDOB.Text + "','" + txtCNIC.Text + "', '" + ddGender.Items[ddGender.SelectedIndex].Text + "','" + txtAddress.Text + "', '" + ddMariStatus.Items[ddMariStatus.SelectedIndex].Text + "','" + false + "', getDate() )";
                con.setData(query);
                lblMessage.Text = "Sign up Successsfully wait for Approval.";

                Page_Load(this,null);
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}