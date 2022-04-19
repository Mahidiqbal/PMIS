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
    public partial class Personal_Info : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadData();
                lblMsg.Text = "";
            }
        }
        protected void loadData()
        {
            query = "SELECT * FROM tbl_User WHERE User_ID = '" + Session["ID"].ToString() + "'";
            ds = con.getData(query);

            txtfName.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
            txtlName.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
            txtPno.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
            txtEmail.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
            txtPass.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
            txtPhone.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
            txtDOB.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
            txtCNIC.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);
            ddGender.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
            txtAddress.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
            ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
            txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtAddress.ReadOnly = true;
            txtDOB.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtfName.ReadOnly = true;
            txtlName.ReadOnly = true;
            txtPass.ReadOnly = true;
            txtPhone.ReadOnly = true;
            Page_Load(this, null);
            btnEdit.Text = "Edit";
            lblMsg.Text = "";
        }
        //private void clearAll()
        //{
        //    txtAddress.Text = txtDOB.Text = txtEmail.Text = txtfName.Text = txtlName.Text = txtPass.Text = txtPhone.Text = txtPno.Text = txtCNIC.Text="";
        //    ddGender.SelectedIndex = -1;
        //    ddMariStatus.SelectedIndex = -1;
        //}
        private void readdData()
        {
            txtAddress.ReadOnly = false;
            txtDOB.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtfName.ReadOnly = false;
            txtlName.ReadOnly = false;
            txtPass.ReadOnly = false;
            txtPhone.ReadOnly = false;
            txtCNIC.ReadOnly = false;
            txtPno.ReadOnly = false;
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                if(btnEdit.Text == "Edit")
                {
                    readdData();
                    loadData();
                    btnEdit.Text = "Update";
                }
                else if(btnEdit.Text == "Update")
                {
                    query = "UPDATE tbl_User SET User_firstName='" + txtfName.Text + "', User_lastName='" + txtlName.Text + "', User_Pno='"+txtPno.Text+"', User_Email='" + txtEmail.Text + "', User_Password='" + txtPass.Text + "', User_Phone='" + txtPhone.Text + "', User_DOB='" + txtDOB.Text + "', User_CNIC = '"+txtCNIC.Text+"', User_Gender='" + ddGender.Text + "', User_Address='" + txtAddress.Text + "', Marital_Status='" + ddMariStatus.Text + "' WHERE User_ID ='" + Session["ID"].ToString() + "'";
                    con.setData(query);
                    btnCancel_Click(this,null);
                    lblMsg.Text = "Successfully Updated";
                }
            }
            catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            
        }
    }
}