using PMC;
using System;
using System.Collections.Generic;
using System.Data;
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
            if (!IsPostBack)
            {
                txtfName.Text = txtlName.Text = txtPno.Text = txtEmail.Text = txtPass.Text = txtPhone.Text = txtUserDOB.Text = txtCNIC.Text = txtAddress.Text = "";
                ddUserRole.SelectedIndex = ddMariStatus.SelectedIndex = ddGender.SelectedIndex = -1;
            }
        }
        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                query = "select User_Pno from tbl_User where User_Pno = '" + txtPno.Text + "'";
                DataSet ds = con.getData(query);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    //MedCategory, EnrollDate, PresentAddress,PermanentAddress,
                    query = "insert into tbl_User (User_firstName,User_lastName,User_Role,User_Pno,User_Email,User_Password,User_Phone,User_DOB,User_CNIC,User_Gender, PresentAddress,Marital_Status,Is_Deleted,Created_On )" +
                        "values('" + txtfName.Text + "', '" + txtlName.Text + "', '" + ddUserRole.Items[ddUserRole.SelectedIndex].Text + "', '" + txtPno.Text + "', '" + txtEmail.Text + "', '" + txtPass.Text + "', '" + txtPhone.Text + "', '" + txtUserDOB.Text + "','" + txtCNIC.Text + "', '" + ddGender.Items[ddGender.SelectedIndex].Value + "','" + txtAddress.Text + "', '" + ddMariStatus.Items[ddMariStatus.SelectedIndex].Text + "','" + false + "', getDate() )";
                    con.setData(query);
                    lblMessage.ForeColor = Color.Green;
                    lblMessage.Text = "Sign up Successsfully wait for Approval.";

                    Page_Load(this, null);
                }
                else
                {
                    lblMessage.ForeColor = Color.Red;
                    lblMessage.Text = "*This P.No is already exist.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = ex.Message;
            }
        }
    }
}