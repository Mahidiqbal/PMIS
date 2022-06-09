using PMC;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class SignUp : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtfName.Value = txtlName.Value = txtPno.Value = txtEmail.Value = txtPass.Value = txtPhone.Value = txtUserDOB.Text = txtCNIC.Value = txtAddress.Value = "";
            ddUserRole.SelectedIndex = ddMariStatus.SelectedIndex = ddGender.SelectedIndex = -1;
        }
        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                query = "insert into tbl_User (User_firstName,User_lastName,User_Role,User_Pno,User_Email,User_Password,User_Phone,User_DOB,User_CNIC,User_Gender,User_Address,Marital_Status,Is_Deleted,Created_On )" +
                    "values('" + txtfName.Value + "', '" + txtlName.Value + "', '" + ddUserRole.Items[ddUserRole.SelectedIndex].Text + "', '" + txtPno.Value + "', '" + txtEmail.Value + "', '" + txtPass.Value + "', '" + txtPhone.Value + "', '" + txtUserDOB.Text + "','" + txtCNIC.Value + "', '" + ddGender.Items[ddGender.SelectedIndex].Value + "','" + txtAddress.Value + "', '" + ddMariStatus.Items[ddMariStatus.SelectedIndex].Text + "','" + false + "', getDate() )";
                con.setData(query);
                lblMessage.ForeColor= Color.Green;
                lblMessage.Text = "Sign up Successsfully wait for Approval.";

                Page_Load(this, null);
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = ex.Message;
            }
        }
    }
}