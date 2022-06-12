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
    public partial class Family_Info : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Role"].ToString() == "Admin")
                {
                    btnCreate.Visible = false;
                    btnCancel.Visible = false;
                    query = "select * from tbl_FamilyInfo where Pno = '" + Session["Pno"].ToString() + "'";
                        DataSet ds = con.getData(query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtfName.Text = Convert.ToString(ds.Tables[0].Rows[0][2]);
                        txtfCnic.Text = Convert.ToString(ds.Tables[0].Rows[0][3]);
                        txtfNation.Text = Convert.ToString(ds.Tables[0].Rows[0][4]);
                        txtfOccupation.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                        txtfReligion.Text = Convert.ToString(ds.Tables[0].Rows[0][6]);
                        txtfAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][7]);
                        txtfPhone.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                        txtfAddress.Text = Convert.ToString(ds.Tables[0].Rows[0][9]);

                        txtMname.Text = Convert.ToString(ds.Tables[0].Rows[0][10]);
                        txtMcnic.Text = Convert.ToString(ds.Tables[0].Rows[0][11]);
                        txtMnation.Text = Convert.ToString(ds.Tables[0].Rows[0][12]);
                        txtMoccu.Text = Convert.ToString(ds.Tables[0].Rows[0][13]);
                        txtMReligion.Text = Convert.ToString(ds.Tables[0].Rows[0][14]);
                        txtMalive.Text = Convert.ToString(ds.Tables[0].Rows[0][15]);
                        txtMadd.Text = Convert.ToString(ds.Tables[0].Rows[0][16]);

                        txtNextKin.Text = Convert.ToString(ds.Tables[0].Rows[0][17]);
                        txtRelationNOK.Text = Convert.ToString(ds.Tables[0].Rows[0][18]);
                        txtNOKAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][19]);
                        txtNOKCont.Text = Convert.ToString(ds.Tables[0].Rows[0][20]);

                        txtSpName.Text = Convert.ToString(ds.Tables[0].Rows[0][21]);
                        txtSpCnic.Text = Convert.ToString(ds.Tables[0].Rows[0][22]);
                        txtSpNation.Text = Convert.ToString(ds.Tables[0].Rows[0][23]);
                        txtSpOccu.Text = Convert.ToString(ds.Tables[0].Rows[0][24]);

                        txtF_inLaw.Text = Convert.ToString(ds.Tables[0].Rows[0][25]);
                        txtF_inLawOcc.Text = Convert.ToString(ds.Tables[0].Rows[0][26]);
                        txtF_inLawCont.Text = Convert.ToString(ds.Tables[0].Rows[0][27]);
                        txtF_inLawAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][28]);
                        txtF_inLawAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][29]);

                        txtM_inLaw.Text = Convert.ToString(ds.Tables[0].Rows[0][30]);
                        txtM_inLawOcc.Text = Convert.ToString(ds.Tables[0].Rows[0][31]);
                        txtM_inlawadd.Text = Convert.ToString(ds.Tables[0].Rows[0][32]);
                        txtM_inLawAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][33]);

                    }
                    
                }
            }
        }
        
        protected void btnBack_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Edozzier.aspx");
            }
            catch { }
        }
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["Role"].ToString() == "User")
                {
                    query = "Insert into tbl_FamilyInfo (User_ID,Fa_Name,Fa_CNIC,Fa_Nationality,Fa_Occupation,Fa_Religion,Fa_Alive,Fa_Phone,Fa_Address, " +
                        "Mo_Name,Mo_CNIC,Mo_Nationality,Mo_Occupation,Mo_Religion,Mo_Alive,Mo_Address,Nok_Name,Nok_Relationship,Nok_Address,Nok_Contact, " +
                        "Sp_Name,Sp_CNIC,Sp_Nationality,Sp_Occupation,Fl_Name,Fl_Occupation,Fl_Contact,Fl_Address,Fl_Alive,Ml_Name,Ml_Occupation,Ml_Address," +
                        "Ml_Alive,Is_Deleted,Created_On,Created_By,Pno) " +
                        "values ('" + Session["ID"].ToString() + "', '" + txtfName.Text + "',  '" + txtfCnic.Text + "', '" + txtfNation.Text + "',  '" + txtfOccupation.Text + "', '" + txtfReligion.Text + "', '" + txtfAlive.Text + "',  '" + txtfPhone.Text + "',  '" + txtfAddress.Text + "'," +
                        "  '" + txtMname.Text + "', '" + txtMcnic.Text + "', '" + txtMnation.Text + "', '" + txtMoccu.Text + "', '" + txtMReligion.Text + "', '" + txtMalive.Text + "','" + txtMadd.Text + "'," +
                        " '" + txtNextKin.Text + "', '" + txtRelationNOK.Text + "', '" + txtNOKAdd.Text + "', '" + txtNOKCont.Text + "'," +
                        " '" + txtSpName.Text + "', '" + txtSpCnic.Text + "', '" + txtSpNation.Text + "', '" + txtSpOccu.Text + "', " +
                        " '" + txtF_inLaw.Text + "', '" + txtF_inLawOcc.Text + "', '" + txtF_inLawCont.Text + "', '" + txtF_inLawAdd.Text + "', '" + txtF_inLawAlive.Text + "'," +
                        " '" + txtM_inLaw.Text + "', '" + txtM_inLawOcc.Text + "', '" + txtM_inlawadd.Text + "', '" + txtM_inLawAlive.Text + "', '" + false + "', getDate() ,'" + Session["Name"].ToString() + "','" + Session["User_Pno"].ToString() + "')";

                    con.setData(query);

                    lblMsg.Text = "Family Detailed Added.";
                    Page_Load(this, null);
                }
                
            }
            catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}