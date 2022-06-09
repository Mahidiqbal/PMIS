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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            try
            {
                query = "Select User_Role from tbl_User";
                ds = con.getData(query);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    if (txtEmail.Value == "root" && txtPsw.Value == "root")
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    query = "SELECT User_ID,User_Role,User_firstName FROM tbl_User WHERE User_Email='" + txtEmail.Value + "' AND User_Password='" + txtPsw.Value + "'";
                    ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        string role = ds.Tables[0].Rows[0][1].ToString();
                        Session["Role"] = ds.Tables[0].Rows[0][1].ToString();
                        Session["Name"] = ds.Tables[0].Rows[0][2].ToString();
                        Session["ID"] = ds.Tables[0].Rows[0][0].ToString();
                        if (role == "Admin")
                        {
                            Response.Redirect("Home.aspx");
                            return;
                        }
                        else if (role == "User")
                        {
                            Response.Redirect("Personal_Info.aspx");
                            return;
                        }
                    }
                    else
                    {
                        lblMessage.ForeColor = Color.Red;
                        lblMessage.Text = "Wrong! Username Or Password";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = ex.Message;
            }
        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("SignUp.aspx");
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}