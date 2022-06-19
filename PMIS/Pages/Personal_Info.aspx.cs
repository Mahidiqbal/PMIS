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
    public partial class Personal_Info : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadData1();
                lblMsg.Text = "";
            }
        }
        public string status;

        protected void loadData1()
        {
            try
            {
                if (Session["Role"].ToString() == "Admin")
                {
                    btnEdit.Visible = false;
                    btnCancel.Visible = false;

                    query = "select * from tbl_User where User_Pno = '" + Session["Pno"].ToString() + "'";
                    ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtfName.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtlName.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtPno.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtEmail.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtPass.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        txtPhone.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtDOB.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtCNIC.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);
                        ddGender.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtMedCategory.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtEnrollDate.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtPresentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtPermanentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                    }
                    else
                    {
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "Data Not Found";
                    }
                }
                else if (Session["Role"].ToString() == "User")
                {
                    query = "select * from tbl_User where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved'";
                    DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtfName.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
                        txtlName.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtPno.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtEmail.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtPass.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        txtPhone.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtDOB.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtCNIC.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);
                        ddGender.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtMedCategory.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtEnrollDate.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtPresentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtPermanentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                    }
                }
            }
            catch { }
        }
        protected void loadData()
        {
            if (Session["Role"].ToString() == "Admin")
            {
                btnEdit.Visible = false;
                btnCancel.Visible = false;
                if (Session["Pno"].ToString() != null)
                {

                    query = "select User_Status from tbl_User_Update where  User_Pno = '" + Session["Pno"].ToString() + "'";
                    ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        status = ds.Tables[0].Rows[0][0].ToString();
                    }
                    if (status == "Pending" || status == null)
                    {
                        query = "SELECT * FROM tbl_User WHERE User_Pno = '" + Session["Pno"].ToString() + "'";
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
                        txtPresentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                    }
                    else if (status == "Approved")
                    {
                        query = "SELECT * FROM tbl_User_Update WHERE User_ID = '" + Session["ID"].ToString() + "'";
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
                        txtMedCategory.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtEnrollDate.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtPresentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtPermanentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                    }
                }
                else
                {
                    query = "select User_Status from tbl_User_Update where  User_ID = '" + Session["ID"].ToString() + "'";
                    ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        status = ds.Tables[0].Rows[0][0].ToString();
                    }

                    if (status == "Pending" || status == null)
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
                        txtPresentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                    }
                    else if (status == "Approved")
                    {
                        query = "SELECT * FROM tbl_User_Update WHERE User_ID = '" + Session["ID"].ToString() + "'";
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
                        txtMedCategory.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtEnrollDate.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtPresentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtPermanentAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        ddMariStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtStatus.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);
                    }
                }
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtPresentAdd.ReadOnly = true;
            txtPermanentAdd.ReadOnly = true;
            txtEnrollDate.ReadOnly = true;
            txtMedCategory.ReadOnly = true;
            txtDOB.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtCNIC.ReadOnly = true;
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
            txtPresentAdd.ReadOnly = false;
            txtPermanentAdd.ReadOnly = false;
            txtEnrollDate.ReadOnly = false;
            txtMedCategory.ReadOnly = false;
            txtDOB.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtfName.ReadOnly = false;
            txtlName.ReadOnly = false;
            txtPass.ReadOnly = false;
            txtPhone.ReadOnly = false;
            txtCNIC.ReadOnly = false;
            txtPno.ReadOnly = false;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Edozzier.aspx");
            }
            catch { }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                if(btnEdit.Text == "Edit")
                {
                    readdData();
                    loadData1();
                    btnEdit.Text = "Update";
                }
                //else if(btnEdit.Text == "Update")
                //{
                //    query = "select User_ID from tbl_User_Update where User_Pno = '" + txtPno + "'";
                //    ds = con.getData(query);
                //    if (ds.Tables[0].Rows.Count > 0)
                //    {
                //        query = "UPDATE tbl_User SET User_firstName='" + txtfName.Text + "', User_lastName='" + txtlName.Text + "', User_Pno='" + txtPno.Text + "', User_Email='" + txtEmail.Text + "', User_Password='" + txtPass.Text + "', User_Phone='" + txtPhone.Text + "', User_DOB='" + txtDOB.Text + "', User_CNIC = '" + txtCNIC.Text + "', User_Gender='" + ddGender.Text + "',MedCategory='" + txtMedCategory.Text + "', EnrollDate='" + txtEnrollDate.Text + "', PresentAddress='" + txtPresentAdd.Text + "',PermanentAddress ='" + txtPermanentAdd.Text + "', Marital_Status='" + ddMariStatus.Text + "',Status='Pending' WHERE User_ID ='" + Session["ID"].ToString() + "'";
                //        con.setData(query);
                //        loadData1();
                //    }
                    else
                    {
                    query = "UPDATE tbl_User SET User_firstName='" + txtfName.Text + "', User_lastName='" + txtlName.Text + "', User_Role= '" + Session["Role"].ToString() + "', User_Pno='" + txtPno.Text + "', User_Email='" + txtEmail.Text + "', User_Password='" + txtPass.Text + "', User_Phone='" + txtPhone.Text + "', User_DOB='" + txtDOB.Text + "', User_CNIC = '" + txtCNIC.Text + "', User_Gender='" + ddGender.Text + "', MedCategory='" + txtMedCategory.Text + "',EnrollDate='" + txtEnrollDate.Text + "',PresentAddress= '" + txtPresentAdd.Text + "', PermanentAddress='" + txtPermanentAdd.Text + "', Marital_Status='" + ddMariStatus.Text + "',Status='Pending',Modified_ON=getdate(),Modified_By='" + Session["ID"] + "' WHERE User_ID ='" + Session["ID"].ToString() + "'";
                       // query = "insert into tbl_User (User_firstName,User_lastName,User_Role,User_Pno,User_Email,User_Password,User_Phone,User_DOB,User_CNIC,User_Gender, MedCategory, EnrollDate, PresentAddress,PermanentAddress,Marital_Status,Is_Deleted,Created_On,Status )" +
                         //   "values('" + txtfName.Text + "', '" + txtlName.Text + "', '" + Session["Role"].ToString() + "', '" + txtPno.Text + "', '" + txtEmail.Text + "', '" + txtPass.Text + "', '" + txtPhone.Text + "', '" + txtDOB.Text + "','" + txtCNIC.Text + "', '" + ddGender.Text + "','" + txtMedCategory.Text + "','" + txtEnrollDate.Text + "','" + txtPermanentAdd.Text + "','" + txtPresentAdd.Text + "', '" + ddMariStatus.Text + "','" + false + "', getDate(), 'Pending')";
                        con.setData(query);
                        btnCancel_Click(this, null);
                    }
                    lblMsg.Text = "Request for Update Information Submit.";
                //}
            }
            catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            
        }
    }
}