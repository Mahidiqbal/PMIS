using PMC;
using System;
using System.Collections.Generic;
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

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                query = "Insert into tbl_FamilyInfo (User_ID,Fa_Name,Fa_CNIC,Fa_Nationality,Fa_Occupation,Fa_Religion,Fa_Alive,Fa_Phone,Fa_Address, " +
                    "Mo_Name,Mo_CNIC,Mo_Nationality,Mo_Occupation,Mo_Religion,Mo_Alive,Mo_Address,Nok_Name,Nok_Relationship,Nok_Address,Nok_Contact, " +
                    "Sp_Name,Sp_CNIC,Sp_Nationality,Sp_Occupation,Fl_Name,Fl_Occupation,Fl_Contact,Fl_Address,Fl_Alive,Ml_Name,Ml_Occupation,Ml_Address," +
                    "Ml_Alive,Is_Deleted,Created_On,Created_By) " +
                    "values ('" + Session["ID"].ToString() + "', '" + txtfName.Text + "',  '" + txtfCnic.Text + "', '" + txtfNation.Text + "',  '" + txtfOccupation.Text + "', '" + txtfReligion.Text + "', '" + txtfAlive.Text + "',  '" + txtfPhone.Text + "',  '" + txtfAddress.Text + "'," +
                    "  '" + txtMname.Text + "', '" + txtMcnic.Text + "', '" + txtMnation.Text + "', '" + txtMoccu.Text + "', '" + txtMReligion.Text + "', '" + txtMalive.Text + "','" + txtMadd.Text + "'," +
                    " '" + txtNextKin.Text + "', '" + txtRelationNOK.Text + "', '" + txtNOKAdd.Text + "', '" + txtNOKCont.Text + "'," +
                    " '" + txtSpName.Text + "', '" + txtSpCnic.Text + "', '" + txtSpNation.Text + "', '" + txtSpOccu.Text + "', " +
                    " '" + txtF_inLaw.Text + "', '" + txtF_inLawOcc.Text + "', '" + txtF_inLawCont.Text + "', '" + txtF_inLawAdd.Text + "', '" + txtF_inLawAlive.Text + "'," +
                    " '" + txtM_inLaw.Text + "', '" + txtM_inLawOcc.Text + "', '" + txtM_inlawadd.Text + "', '" + txtM_inLawAlive.Text + "', '" + false + "', getDate() ,'" + Session["Name"].ToString() + "')";

                con.setData(query);
                
                lblMsg.Text = "Family Detailed Added.";
                Page_Load(this, null);
            }
            catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}