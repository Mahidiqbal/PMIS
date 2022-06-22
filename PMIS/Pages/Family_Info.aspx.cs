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
    public partial class Family_Info : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                query = "select * from tbl_FamilyInfo where User_ID='" + Session["ID"] +"' and Is_Deleted='"+false+"'";
                ds = con.getData(query);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btnCreate.Text = "Update";
                }
                btnApprove.Visible = false;
                btnReject.Visible = false;
                btnDelete.Visible = false;
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
                        txtSpName1.Text = Convert.ToString(ds.Tables[0].Rows[0][22]);
                        txtSpName2.Text = Convert.ToString(ds.Tables[0].Rows[0][23]);
                        txtSpName3.Text = Convert.ToString(ds.Tables[0].Rows[0][24]);
                        txtSpCnic.Text = Convert.ToString(ds.Tables[0].Rows[0][25]);
                        txtSpCNIC1.Text = Convert.ToString(ds.Tables[0].Rows[0][26]);
                        txtSpCNIC2.Text = Convert.ToString(ds.Tables[0].Rows[0][27]);
                        txtSpCNIC3.Text = Convert.ToString(ds.Tables[0].Rows[0][28]);
                        txtSpNation.Text = Convert.ToString(ds.Tables[0].Rows[0][29]);
                        txtSpNation1.Text = Convert.ToString(ds.Tables[0].Rows[0][30]);
                        txtSpNation2.Text = Convert.ToString(ds.Tables[0].Rows[0][31]);
                        txtSpNation3.Text = Convert.ToString(ds.Tables[0].Rows[0][32]);
                        txtSpOccu.Text = Convert.ToString(ds.Tables[0].Rows[0][33]);
                        txtSpOc1.Text = Convert.ToString(ds.Tables[0].Rows[0][34]);
                        txtSpOc2.Text = Convert.ToString(ds.Tables[0].Rows[0][35]);
                        txtSpOc3.Text = Convert.ToString(ds.Tables[0].Rows[0][36]);

                        txtF_inLaw.Text = Convert.ToString(ds.Tables[0].Rows[0][37]);
                        txtF_inLaw1.Text = Convert.ToString(ds.Tables[0].Rows[0][38]);
                        txtF_inLaw2.Text = Convert.ToString(ds.Tables[0].Rows[0][39]);
                        txtF_inLaw3.Text = Convert.ToString(ds.Tables[0].Rows[0][40]);
                        txtF_inLawOcc.Text = Convert.ToString(ds.Tables[0].Rows[0][41]);
                        txtF_inLawOcc1.Text = Convert.ToString(ds.Tables[0].Rows[0][42]);
                        txtF_inLawOcc2.Text = Convert.ToString(ds.Tables[0].Rows[0][43]);
                        txtF_inLawOcc3.Text = Convert.ToString(ds.Tables[0].Rows[0][44]);
                        txtF_inLawCont.Text = Convert.ToString(ds.Tables[0].Rows[0][45]);
                        txtF_inLawCont1.Text = Convert.ToString(ds.Tables[0].Rows[0][46]);
                        txtF_inLawCont2.Text = Convert.ToString(ds.Tables[0].Rows[0][47]);
                        txtF_inLawCont3.Text = Convert.ToString(ds.Tables[0].Rows[0][48]);
                        txtF_inLawAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][49]);
                        txtF_inLawAdd1.Text = Convert.ToString(ds.Tables[0].Rows[0][50]);
                        txtF_inLawAdd2.Text = Convert.ToString(ds.Tables[0].Rows[0][51]);
                        txtF_inLawAdd3.Text = Convert.ToString(ds.Tables[0].Rows[0][52]);
                        txtF_inLawAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][53]);
                        txtF_inLawAlive1.Text = Convert.ToString(ds.Tables[0].Rows[0][54]);
                        txtF_inLawAlive2.Text = Convert.ToString(ds.Tables[0].Rows[0][55]);
                        txtF_inLawAlive3.Text = Convert.ToString(ds.Tables[0].Rows[0][56]);

                        txtM_inLaw.Text = Convert.ToString(ds.Tables[0].Rows[0][57]);
                        txtM_inLaw1.Text = Convert.ToString(ds.Tables[0].Rows[0][58]);
                        txtM_inLaw2.Text = Convert.ToString(ds.Tables[0].Rows[0][59]);
                        txtM_inLaw3.Text = Convert.ToString(ds.Tables[0].Rows[0][60]);
                        txtM_inLawOcc.Text = Convert.ToString(ds.Tables[0].Rows[0][61]);
                        txtM_inLawOcc1.Text = Convert.ToString(ds.Tables[0].Rows[0][62]);
                        txtM_inLawOcc2.Text = Convert.ToString(ds.Tables[0].Rows[0][63]);
                        txtM_inLawOcc3.Text = Convert.ToString(ds.Tables[0].Rows[0][64]);
                        txtM_inlawadd.Text = Convert.ToString(ds.Tables[0].Rows[0][65]);
                        txtM_inlawadd1.Text = Convert.ToString(ds.Tables[0].Rows[0][66]);
                        txtM_inlawadd2.Text = Convert.ToString(ds.Tables[0].Rows[0][67]);
                        txtM_inlawadd3.Text = Convert.ToString(ds.Tables[0].Rows[0][68]);
                        txtM_inLawAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][69]);
                        txtM_inLawAlive1.Text = Convert.ToString(ds.Tables[0].Rows[0][70]);
                        txtM_inLawAlive2.Text = Convert.ToString(ds.Tables[0].Rows[0][71]);
                        txtM_inLawAlive3.Text = Convert.ToString(ds.Tables[0].Rows[0][72]);

                        query = "select * from tbl_Chlidren where Pno = '" + Session["Pno"].ToString() + "'";
                        DataSet ds1 = con.getData(query);
                        if (ds1.Tables[0].Rows.Count > 0)
                        {
                            txtChName.Text = Convert.ToString(ds1.Tables[0].Rows[0][1]);
                            txtChName1.Text = Convert.ToString(ds1.Tables[0].Rows[0][2]);
                            txtChName2.Text = Convert.ToString(ds1.Tables[0].Rows[0][3]);
                            txtChName3.Text = Convert.ToString(ds1.Tables[0].Rows[0][4]);
                            txtChName4.Text = Convert.ToString(ds1.Tables[0].Rows[0][5]);
                            txtChName5.Text = Convert.ToString(ds1.Tables[0].Rows[0][6]);
                            txtChName6.Text = Convert.ToString(ds1.Tables[0].Rows[0][7]);
                            txtChName7.Text = Convert.ToString(ds1.Tables[0].Rows[0][8]);

                            txtChDate.Text = Convert.ToString(ds1.Tables[0].Rows[0][9]);
                            txtChDate1.Text = Convert.ToString(ds1.Tables[0].Rows[0][10]);
                            txtChDate2.Text = Convert.ToString(ds1.Tables[0].Rows[0][11]);
                            txtChDate3.Text = Convert.ToString(ds1.Tables[0].Rows[0][12]);
                            txtChDate4.Text = Convert.ToString(ds1.Tables[0].Rows[0][13]);
                            txtChDate5.Text = Convert.ToString(ds1.Tables[0].Rows[0][14]);
                            txtChDate6.Text = Convert.ToString(ds1.Tables[0].Rows[0][15]);
                            txtChDate7.Text = Convert.ToString(ds1.Tables[0].Rows[0][16]);

                            ddChGender.Text = Convert.ToString(ds1.Tables[0].Rows[0][17]);
                            ddChGender1.Text = Convert.ToString(ds1.Tables[0].Rows[0][18]);
                            ddChGender2.Text = Convert.ToString(ds1.Tables[0].Rows[0][19]);
                            ddChGender3.Text = Convert.ToString(ds1.Tables[0].Rows[0][20]);
                            ddChGender4.Text = Convert.ToString(ds1.Tables[0].Rows[0][21]);
                            ddChGender5.Text = Convert.ToString(ds1.Tables[0].Rows[0][22]);
                            ddChGender6.Text = Convert.ToString(ds1.Tables[0].Rows[0][23]);
                            ddChGender7.Text = Convert.ToString(ds1.Tables[0].Rows[0][24]);

                            txtChQua.Text = Convert.ToString(ds1.Tables[0].Rows[0][25]);
                            txtChQua1.Text = Convert.ToString(ds1.Tables[0].Rows[0][26]);
                            txtChQua2.Text = Convert.ToString(ds1.Tables[0].Rows[0][27]);
                            txtChQua3.Text = Convert.ToString(ds1.Tables[0].Rows[0][28]);
                            txtChQua4.Text = Convert.ToString(ds1.Tables[0].Rows[0][29]);
                            txtChQua5.Text = Convert.ToString(ds1.Tables[0].Rows[0][30]);
                            txtChQua6.Text = Convert.ToString(ds1.Tables[0].Rows[0][31]);
                            txtChQua7.Text = Convert.ToString(ds1.Tables[0].Rows[0][32]);

                            txtChOcc.Text = Convert.ToString(ds1.Tables[0].Rows[0][33]);
                            txtChOcc1.Text = Convert.ToString(ds1.Tables[0].Rows[0][34]);
                            txtChOcc2.Text = Convert.ToString(ds1.Tables[0].Rows[0][35]);
                            txtChOcc3.Text = Convert.ToString(ds1.Tables[0].Rows[0][36]);
                            txtChOcc4.Text = Convert.ToString(ds1.Tables[0].Rows[0][37]);
                            txtChOcc5.Text = Convert.ToString(ds1.Tables[0].Rows[0][38]);
                            txtChOcc6.Text = Convert.ToString(ds1.Tables[0].Rows[0][39]);
                            txtChOcc7.Text = Convert.ToString(ds1.Tables[0].Rows[0][40]);

                            ddChMariStatus.Text = Convert.ToString(ds1.Tables[0].Rows[0][41]);
                            ddChMariStatus1.Text = Convert.ToString(ds1.Tables[0].Rows[0][42]);
                            ddChMariStatus2.Text = Convert.ToString(ds1.Tables[0].Rows[0][43]);
                            ddChMariStatus3.Text = Convert.ToString(ds1.Tables[0].Rows[0][44]);
                            ddChMariStatus4.Text = Convert.ToString(ds1.Tables[0].Rows[0][45]);
                            ddChMariStatus5.Text = Convert.ToString(ds1.Tables[0].Rows[0][46]);
                            ddChMariStatus6.Text = Convert.ToString(ds1.Tables[0].Rows[0][47]);
                            ddChMariStatus7.Text = Convert.ToString(ds1.Tables[0].Rows[0][48]);
                        }
                        if (Session["Request"].ToString() == "1")
                        {
                            btnBack.Visible = false;
                            btnApprove.Visible = true;
                            btnReject.Visible = true;
                            btnDelete.Visible = true;
                        }
                    }
                }
                else if (Session["Role"].ToString() == "User")
                {
                    query = "select * from tbl_FamilyInfo where User_ID = '" + Session["ID"].ToString() + "' and Status='Approved'";
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
                        txtSpName1.Text = Convert.ToString(ds.Tables[0].Rows[0][22]);
                        txtSpName2.Text = Convert.ToString(ds.Tables[0].Rows[0][23]);
                        txtSpName3.Text = Convert.ToString(ds.Tables[0].Rows[0][24]);
                        txtSpCnic.Text = Convert.ToString(ds.Tables[0].Rows[0][25]);
                        txtSpCNIC1.Text = Convert.ToString(ds.Tables[0].Rows[0][26]);
                        txtSpCNIC2.Text = Convert.ToString(ds.Tables[0].Rows[0][27]);
                        txtSpCNIC3.Text = Convert.ToString(ds.Tables[0].Rows[0][28]);
                        txtSpNation.Text = Convert.ToString(ds.Tables[0].Rows[0][29]);
                        txtSpNation1.Text = Convert.ToString(ds.Tables[0].Rows[0][30]);
                        txtSpNation2.Text = Convert.ToString(ds.Tables[0].Rows[0][31]);
                        txtSpNation3.Text = Convert.ToString(ds.Tables[0].Rows[0][32]);
                        txtSpOccu.Text = Convert.ToString(ds.Tables[0].Rows[0][33]);
                        txtSpOc1.Text = Convert.ToString(ds.Tables[0].Rows[0][34]);
                        txtSpOc2.Text = Convert.ToString(ds.Tables[0].Rows[0][35]);
                        txtSpOc3.Text = Convert.ToString(ds.Tables[0].Rows[0][36]);

                        txtF_inLaw.Text = Convert.ToString(ds.Tables[0].Rows[0][37]);
                        txtF_inLaw1.Text = Convert.ToString(ds.Tables[0].Rows[0][38]);
                        txtF_inLaw2.Text = Convert.ToString(ds.Tables[0].Rows[0][39]);
                        txtF_inLaw3.Text = Convert.ToString(ds.Tables[0].Rows[0][40]);
                        txtF_inLawOcc.Text = Convert.ToString(ds.Tables[0].Rows[0][41]);
                        txtF_inLawOcc1.Text = Convert.ToString(ds.Tables[0].Rows[0][42]);
                        txtF_inLawOcc2.Text = Convert.ToString(ds.Tables[0].Rows[0][43]);
                        txtF_inLawOcc3.Text = Convert.ToString(ds.Tables[0].Rows[0][44]);
                        txtF_inLawCont.Text = Convert.ToString(ds.Tables[0].Rows[0][45]);
                        txtF_inLawCont1.Text = Convert.ToString(ds.Tables[0].Rows[0][46]);
                        txtF_inLawCont2.Text = Convert.ToString(ds.Tables[0].Rows[0][47]);
                        txtF_inLawCont3.Text = Convert.ToString(ds.Tables[0].Rows[0][48]);
                        txtF_inLawAdd.Text = Convert.ToString(ds.Tables[0].Rows[0][49]);
                        txtF_inLawAdd1.Text = Convert.ToString(ds.Tables[0].Rows[0][50]);
                        txtF_inLawAdd2.Text = Convert.ToString(ds.Tables[0].Rows[0][51]);
                        txtF_inLawAdd3.Text = Convert.ToString(ds.Tables[0].Rows[0][52]);
                        txtF_inLawAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][53]);
                        txtF_inLawAlive1.Text = Convert.ToString(ds.Tables[0].Rows[0][54]);
                        txtF_inLawAlive2.Text = Convert.ToString(ds.Tables[0].Rows[0][55]);
                        txtF_inLawAlive3.Text = Convert.ToString(ds.Tables[0].Rows[0][56]);

                        txtM_inLaw.Text = Convert.ToString(ds.Tables[0].Rows[0][57]);
                        txtM_inLaw1.Text = Convert.ToString(ds.Tables[0].Rows[0][58]);
                        txtM_inLaw2.Text = Convert.ToString(ds.Tables[0].Rows[0][59]);
                        txtM_inLaw3.Text = Convert.ToString(ds.Tables[0].Rows[0][60]);
                        txtM_inLawOcc.Text = Convert.ToString(ds.Tables[0].Rows[0][61]);
                        txtM_inLawOcc1.Text = Convert.ToString(ds.Tables[0].Rows[0][62]);
                        txtM_inLawOcc2.Text = Convert.ToString(ds.Tables[0].Rows[0][63]);
                        txtM_inLawOcc3.Text = Convert.ToString(ds.Tables[0].Rows[0][64]);
                        txtM_inlawadd.Text = Convert.ToString(ds.Tables[0].Rows[0][65]);
                        txtM_inlawadd1.Text = Convert.ToString(ds.Tables[0].Rows[0][66]);
                        txtM_inlawadd2.Text = Convert.ToString(ds.Tables[0].Rows[0][67]);
                        txtM_inlawadd3.Text = Convert.ToString(ds.Tables[0].Rows[0][68]);
                        txtM_inLawAlive.Text = Convert.ToString(ds.Tables[0].Rows[0][69]);
                        txtM_inLawAlive1.Text = Convert.ToString(ds.Tables[0].Rows[0][70]);
                        txtM_inLawAlive2.Text = Convert.ToString(ds.Tables[0].Rows[0][71]);
                        txtM_inLawAlive3.Text = Convert.ToString(ds.Tables[0].Rows[0][72]);

                        query = "select * from tbl_Chlidren where User_ID = '" + Session["ID"].ToString() + "'";
                        DataSet ds1 = con.getData(query);
                        if (ds1.Tables[0].Rows.Count > 0)
                        {
                            txtChName.Text = Convert.ToString(ds1.Tables[0].Rows[0][1]);
                            txtChName1.Text = Convert.ToString(ds1.Tables[0].Rows[0][2]);
                            txtChName2.Text = Convert.ToString(ds1.Tables[0].Rows[0][3]);
                            txtChName3.Text = Convert.ToString(ds1.Tables[0].Rows[0][4]);
                            txtChName4.Text = Convert.ToString(ds1.Tables[0].Rows[0][5]);
                            txtChName5.Text = Convert.ToString(ds1.Tables[0].Rows[0][6]);
                            txtChName6.Text = Convert.ToString(ds1.Tables[0].Rows[0][7]);
                            txtChName7.Text = Convert.ToString(ds1.Tables[0].Rows[0][8]);

                            txtChDate.Text = Convert.ToString(ds1.Tables[0].Rows[0][9]);
                            txtChDate1.Text = Convert.ToString(ds1.Tables[0].Rows[0][10]);
                            txtChDate2.Text = Convert.ToString(ds1.Tables[0].Rows[0][11]);
                            txtChDate3.Text = Convert.ToString(ds1.Tables[0].Rows[0][12]);
                            txtChDate4.Text = Convert.ToString(ds1.Tables[0].Rows[0][13]);
                            txtChDate5.Text = Convert.ToString(ds1.Tables[0].Rows[0][14]);
                            txtChDate6.Text = Convert.ToString(ds1.Tables[0].Rows[0][15]);
                            txtChDate7.Text = Convert.ToString(ds1.Tables[0].Rows[0][16]);

                            ddChGender.Text = Convert.ToString(ds1.Tables[0].Rows[0][17]);
                            ddChGender1.Text = Convert.ToString(ds1.Tables[0].Rows[0][18]);
                            ddChGender2.Text = Convert.ToString(ds1.Tables[0].Rows[0][19]);
                            ddChGender3.Text = Convert.ToString(ds1.Tables[0].Rows[0][20]);
                            ddChGender4.Text = Convert.ToString(ds1.Tables[0].Rows[0][21]);
                            ddChGender5.Text = Convert.ToString(ds1.Tables[0].Rows[0][22]);
                            ddChGender6.Text = Convert.ToString(ds1.Tables[0].Rows[0][23]);
                            ddChGender7.Text = Convert.ToString(ds1.Tables[0].Rows[0][24]);

                            txtChQua.Text = Convert.ToString(ds1.Tables[0].Rows[0][25]);
                            txtChQua1.Text = Convert.ToString(ds1.Tables[0].Rows[0][26]);
                            txtChQua2.Text = Convert.ToString(ds1.Tables[0].Rows[0][27]);
                            txtChQua3.Text = Convert.ToString(ds1.Tables[0].Rows[0][28]);
                            txtChQua4.Text = Convert.ToString(ds1.Tables[0].Rows[0][29]);
                            txtChQua5.Text = Convert.ToString(ds1.Tables[0].Rows[0][30]);
                            txtChQua6.Text = Convert.ToString(ds1.Tables[0].Rows[0][31]);
                            txtChQua7.Text = Convert.ToString(ds1.Tables[0].Rows[0][32]);

                            txtChOcc.Text = Convert.ToString(ds1.Tables[0].Rows[0][33]);
                            txtChOcc1.Text = Convert.ToString(ds1.Tables[0].Rows[0][34]);
                            txtChOcc2.Text = Convert.ToString(ds1.Tables[0].Rows[0][35]);
                            txtChOcc3.Text = Convert.ToString(ds1.Tables[0].Rows[0][36]);
                            txtChOcc4.Text = Convert.ToString(ds1.Tables[0].Rows[0][37]);
                            txtChOcc5.Text = Convert.ToString(ds1.Tables[0].Rows[0][38]);
                            txtChOcc6.Text = Convert.ToString(ds1.Tables[0].Rows[0][39]);
                            txtChOcc7.Text = Convert.ToString(ds1.Tables[0].Rows[0][40]);

                            ddChMariStatus.Text = Convert.ToString(ds1.Tables[0].Rows[0][41]);
                            ddChMariStatus1.Text = Convert.ToString(ds1.Tables[0].Rows[0][42]);
                            ddChMariStatus2.Text = Convert.ToString(ds1.Tables[0].Rows[0][43]);
                            ddChMariStatus3.Text = Convert.ToString(ds1.Tables[0].Rows[0][44]);
                            ddChMariStatus4.Text = Convert.ToString(ds1.Tables[0].Rows[0][45]);
                            ddChMariStatus5.Text = Convert.ToString(ds1.Tables[0].Rows[0][46]);
                            ddChMariStatus6.Text = Convert.ToString(ds1.Tables[0].Rows[0][47]);
                            ddChMariStatus7.Text = Convert.ToString(ds1.Tables[0].Rows[0][48]);
                        }
                    }

                }   
            }
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            try
            {
                query = "UPDATE tbl_FamilyInfo SET Status = 'Approved' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Green;
                lblMsg.Text = "Data Approved Successfully";
            }
            catch { }
        }
        protected void btnReject_Click(object sender, EventArgs e)
        {
            try
            { 
                query = "UPDATE tbl_FamilyInfo SET Status = 'Rejected' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Data Rejected Successfully";
            }
            catch { }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                query = "UPDATE tbl_FamilyInfo SET Is_Deleted = '"+true+"' where Pno = '" + Session["Pno"].ToString() + "'";
                con.setData(query);
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Data Deleted Successfully";
                Response.Redirect("Request.aspx");
            }
            catch { }
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
                    if (btnCreate.Text == "Submit")
                    {
                        query = "Insert into tbl_FamilyInfo (User_ID,Fa_Name,Fa_CNIC,Fa_Nationality,Fa_Occupation,Fa_Religion,Fa_Alive,Fa_Phone,Fa_Address, " +
                            "Mo_Name,Mo_CNIC,Mo_Nationality,Mo_Occupation,Mo_Religion,Mo_Alive,Mo_Address,Nok_Name,Nok_Relationship,Nok_Address,Nok_Contact, " +
                            "Sp_Name,Sp_Name1,Sp_Name2,Sp_Name3,Sp_CNIC,Sp_CNIC1,Sp_CNIC2,Sp_CNIC3,Sp_Nationality,Sp_Nationality1,Sp_Nationality2,Sp_Nationality3,Sp_Occupation,Sp_Occupation1,Sp_Occupation2,Sp_Occupation3, " +
                            "Fl_Name,Fl_Name1,Fl_Name2,Fl_Name3,Fl_Occupation,Fl_Occupation1,Fl_Occupation2,Fl_Occupation3,Fl_Contact,Fl_Contact1,Fl_Contact2,Fl_Contact3,Fl_Address,Fl_Address1,Fl_Address2,Fl_Address3,Fl_Alive,Fl_Alive1,Fl_Alive2,Fl_Alive3, " +
                            "Ml_Name,Ml_Name1,Ml_Name2,Ml_Name3,Ml_Occupation,Ml_Occupation1,Ml_Occupation2,Ml_Occupation3,Ml_Address,Ml_Address1,Ml_Address2,Ml_Address3, " +
                            "Ml_Alive,Ml_Alive1,Ml_Alive2,Ml_Alive3,Is_Deleted,Created_On,Created_By,Pno,Status) " +
                            "values ('" + Session["ID"].ToString() + "', '" + txtfName.Text + "',  '" + txtfCnic.Text + "', '" + txtfNation.Text + "',  '" + txtfOccupation.Text + "', '" + txtfReligion.Text + "', '" + txtfAlive.Text + "',  '" + txtfPhone.Text + "',  '" + txtfAddress.Text + "'," +
                            "  '" + txtMname.Text + "', '" + txtMcnic.Text + "', '" + txtMnation.Text + "', '" + txtMoccu.Text + "', '" + txtMReligion.Text + "', '" + txtMalive.Text + "','" + txtMadd.Text + "'," +
                            " '" + txtNextKin.Text + "', '" + txtRelationNOK.Text + "', '" + txtNOKAdd.Text + "', '" + txtNOKCont.Text + "'," +
                            " '" + txtSpName.Text + "', '" + txtSpName1.Text + "','" + txtSpName2.Text + "','" + txtSpName3.Text + "','" + txtSpCnic.Text + "','" + txtSpCNIC1.Text + "','" + txtSpCNIC2.Text + "','" + txtSpCNIC3.Text + "', '" + txtSpNation.Text + "', '" + txtSpNation1.Text + "','" + txtSpNation2.Text + "','" + txtSpNation3.Text + "','" + txtSpOccu.Text + "','" + txtSpOc1.Text + "','" + txtSpOc2.Text + "','" + txtSpOc3.Text + "', " +
                            " '" + txtF_inLaw.Text + "','" + txtF_inLaw1.Text + "','" + txtF_inLaw2.Text + "','" + txtF_inLaw3.Text + "', '" + txtF_inLawOcc.Text + "','" + txtF_inLawOcc1.Text + "','" + txtF_inLawOcc2.Text + "','" + txtF_inLawOcc3.Text + "', '" + txtF_inLawCont.Text + "','" + txtF_inLawCont1.Text + "','" + txtF_inLawCont2.Text + "','" + txtF_inLawCont3.Text + "', '" + txtF_inLawAdd.Text + "','" + txtF_inLawAdd1.Text + "','" + txtF_inLawAdd2.Text + "','" + txtF_inLawAdd3.Text + "', '" + txtF_inLawAlive.Text + "','" + txtF_inLawAlive1.Text + "','" + txtF_inLawAlive2.Text + "','" + txtF_inLawAlive3.Text + "'," +
                            " '" + txtM_inLaw.Text + "','" + txtM_inLaw1.Text + "','" + txtM_inLaw2.Text + "','" + txtM_inLaw3.Text + "', '" + txtM_inLawOcc.Text + "','" + txtM_inLawOcc1.Text + "','" + txtM_inLawOcc2.Text + "','" + txtM_inLawOcc3.Text + "', '" + txtM_inlawadd.Text + "', '" + txtM_inlawadd1.Text + "','" + txtM_inlawadd2.Text + "','" + txtM_inlawadd3.Text + "', '" + txtM_inLawAlive.Text + "', '" + txtM_inLawAlive1.Text + "','" + txtM_inLawAlive2.Text + "','" + txtM_inLawAlive3.Text + "', " +
                            " '" + false + "', getDate() ,'" + Session["Name"].ToString() + "','" + Session["User_Pno"].ToString() + "','Pending')";

                        con.setData(query);
                        query = "Insert into tbl_Chlidren(Ch_Name1,Ch_Name2,Ch_Name3,Ch_Name4,Ch_Name5,Ch_Name6,Ch_Name7,Ch_Name8,Ch_DOB1,Ch_DOB2,Ch_DOB3,Ch_DOB4,Ch_DOB5,Ch_DOB6,Ch_DOB7,Ch_DOB8,Ch_Gender1,Ch_Gender2,Ch_Gender3,Ch_Gender4,Ch_Gender5,Ch_Gender6,Ch_Gender7,Ch_Gender8,Ch_Qua1,Ch_Qua2,Ch_Qua3,Ch_Qua4,Ch_Qua5,Ch_Qua6,Ch_Qua7,Ch_Qua8,Ch_Occ1,Ch_Occ2,Ch_Occ3,Ch_Occ4,Ch_Occ5,Ch_Occ6,Ch_Occ7,Ch_Occ8,Ch_Marital1,Ch_Marital2,Ch_Marital3,Ch_Marital4,Ch_Marital5,Ch_Marital6,Ch_Marital7,Ch_Marital8,User_ID,Pno,Is_Deleted) " +
                            "Values('" + txtChName.Text + "','" + txtChName1.Text + "','" + txtChName2.Text + "','" + txtChName3.Text + "','" + txtChName4.Text + "','" + txtChName5.Text + "','" + txtChName6.Text + "','" + txtChName7.Text + "', " +
                            " '" + txtChDate.Text + "','" + txtChDate1.Text + "','" + txtChDate2.Text + "','" + txtChDate3.Text + "','" + txtChDate4.Text + "','" + txtChDate5.Text + "','" + txtChDate6.Text + "','" + txtChDate7.Text + "', " +
                            " '" + ddChGender.SelectedValue + "','" + ddChGender1.SelectedValue + "','" + ddChGender2.SelectedValue + "','" + ddChGender3.SelectedValue + "','" + ddChGender4.SelectedValue + "','" + ddChGender5.SelectedValue + "','" + ddChGender6.SelectedValue + "','" + ddChGender7.SelectedValue + "', " +
                            " '" + txtChQua.Text + "', '" + txtChQua1.Text + "','" + txtChQua2.Text + "','" + txtChQua3.Text + "','" + txtChQua4.Text + "','" + txtChQua5.Text + "','" + txtChQua6.Text + "','" + txtChQua7.Text + "', " +
                            " '" + txtChOcc.Text + "','" + txtChOcc1.Text + "','" + txtChOcc2.Text + "','" + txtChOcc3.Text + "','" + txtChOcc4.Text + "','" + txtChOcc5.Text + "','" + txtChOcc6.Text + "','" + txtChOcc7.Text + "', " +
                            " '" + ddChMariStatus.SelectedValue + "','" + ddChMariStatus1.SelectedValue + "','" + ddChMariStatus2.SelectedValue + "','" + ddChMariStatus3.SelectedValue + "','" + ddChMariStatus4.SelectedValue + "','" + ddChMariStatus5.SelectedValue + "','" + ddChMariStatus6.SelectedValue + "','" + ddChMariStatus7.SelectedValue + "', '" + Session["ID"].ToString() + "','" + Session["User_Pno"].ToString() + "','" + false + "')";
                        con.setData(query);
                        lblMsg.Text = "Family Detailed Added.";
                        Page_Load(this, null);
                    }
                    else if (btnCreate.Text=="Update")
                    {
                        
                        query = "UPDATE tbl_FamilyInfo SET Fa_Name='" + txtfName.Text + "',Fa_CNIC='" + txtfCnic.Text + "',Fa_Nationality='" + txtfNation.Text + "',Fa_Occupation='" + txtfOccupation.Text + "',Fa_Religion='" + txtfReligion.Text + "',Fa_Alive='" + txtfAlive.Text + "',Fa_Phone='" + txtfPhone.Text + "',Fa_Address='" + txtfAddress.Text + "', " +
                            "Mo_Name='" + txtMname.Text + "',Mo_CNIC='" + txtMcnic.Text + "',Mo_Nationality='" + txtMnation.Text + "',Mo_Occupation='" + txtMoccu.Text + "',Mo_Religion='" + txtMReligion.Text + "',Mo_Alive='" + txtMalive.Text + "',Mo_Address='" + txtMadd.Text + "',Nok_Name='" + txtNextKin.Text + "',Nok_Relationship='" + txtRelationNOK.Text + "',Nok_Address='" + txtNOKAdd.Text + "', Nok_Contact='" + txtNOKCont.Text + "', " +
                            "Sp_Name='" + txtSpName.Text + "',Sp_Name1='" + txtSpName1.Text + "',Sp_Name2='" + txtSpName2.Text + "',Sp_Name3='" + txtSpName3.Text + "',Sp_CNIC='" + txtSpCnic.Text + "',Sp_CNIC1='" + txtSpCNIC1.Text + "',Sp_CNIC2='" + txtSpCNIC2.Text + "',Sp_CNIC3='" + txtSpCNIC3.Text + "',Sp_Nationality='" + txtSpNation.Text + "',Sp_Nationality1='" + txtSpNation1.Text + "',Sp_Nationality2='" + txtSpNation2.Text + "',Sp_Nationality3='" + txtSpNation3.Text + "',Sp_Occupation='" + txtSpOccu.Text + "',Sp_Occupation1='" + txtSpOc1.Text + "',Sp_Occupation2='" + txtSpOc2.Text + "',Sp_Occupation3='" + txtSpOc3.Text + "', " +
                            "Fl_Name='" + txtF_inLaw.Text + "',Fl_Name1='" + txtF_inLaw1.Text + "',Fl_Name2='" + txtF_inLaw2.Text + "',Fl_Name3='" + txtF_inLaw3.Text + "',Fl_Occupation='" + txtF_inLawOcc.Text + "',Fl_Occupation1='" + txtF_inLawOcc1.Text + "',Fl_Occupation2='" + txtF_inLawOcc2.Text + "',Fl_Occupation3='" + txtF_inLawOcc3.Text + "',Fl_Contact='" + txtF_inLawCont.Text + "', Fl_Contact1='" + txtF_inLawCont1.Text + "',Fl_Contact2='" + txtF_inLawCont2.Text + "',Fl_Contact3='" + txtF_inLawCont3.Text + "',Fl_Address='" + txtF_inLawAdd.Text + "',Fl_Address1='" + txtF_inLawAdd1.Text + "',Fl_Address2='" + txtF_inLawAdd2.Text + "',Fl_Address3='" + txtF_inLawAdd3.Text + "',Fl_Alive='" + txtF_inLawAlive.Text + "',Fl_Alive1='" + txtF_inLawAlive1.Text + "',Fl_Alive2='" + txtF_inLawAlive2.Text + "',Fl_Alive3='" + txtF_inLawAlive3.Text + "', " +
                            "Ml_Name='" + txtM_inLaw.Text + "',Ml_Name1='" + txtM_inLaw1.Text + "',Ml_Name2='" + txtM_inLaw2.Text + "',Ml_Name3='" + txtM_inLaw3.Text + "',Ml_Occupation='" + txtM_inLawOcc.Text + "',Ml_Occupation1='" + txtM_inLawOcc1.Text + "',Ml_Occupation2='" + txtM_inLawOcc2.Text + "',Ml_Occupation3='" + txtM_inLawOcc3.Text + "',Ml_Address='" + txtM_inlawadd.Text + "',Ml_Address1='" + txtM_inlawadd1.Text + "',Ml_Address2='" + txtM_inlawadd2.Text + "',Ml_Address3='" + txtM_inlawadd3.Text + "', " +
                            "Ml_Alive='" + txtM_inLawAlive.Text + "',Ml_Alive1='" + txtM_inLawAlive1.Text + "',Ml_Alive2='" + txtM_inLawAlive2.Text + "',Ml_Alive3='" + txtM_inLawAlive3.Text + "',Is_Deleted='"+false+"',Modified_On=getDate(),Modified_By='" + Session["Name"].ToString() + "',Status='Pending' where User_ID = '" + Session["ID"].ToString() + "'";
                        con.setData(query);

                        string query1 = "UPDATE tbl_Chlidren SET Ch_Name1='" + txtChName.Text + "',Ch_Name2='" + txtChName1.Text + "',Ch_Name3='" + txtChName2.Text + "',Ch_Name4='" + txtChName3.Text + "',Ch_Name5='" + txtChName4.Text + "',Ch_Name6='" + txtChName5.Text + "',Ch_Name7='" + txtChName6.Text + "',Ch_Name8='" + txtChName7.Text + "', " +
                            "Ch_DOB1='" + txtChDate.Text + "',Ch_DOB2='" + txtChDate1.Text + "',Ch_DOB3='" + txtChDate2.Text + "',Ch_DOB4='" + txtChDate3.Text + "',Ch_DOB5='" + txtChDate4.Text + "',Ch_DOB6='" + txtChDate5.Text + "',Ch_DOB7='" + txtChDate6.Text + "',Ch_DOB8='" + txtChDate7.Text + "', " +
                            "Ch_Gender1='" + ddChGender.SelectedValue + "',Ch_Gender2='" + ddChGender1.SelectedValue + "',Ch_Gender3='" + ddChGender2.SelectedValue + "',Ch_Gender4='" + ddChGender3.SelectedValue + "',Ch_Gender5='" + ddChGender4.SelectedValue + "',Ch_Gender6='" + ddChGender5.SelectedValue + "',Ch_Gender7='" + ddChGender6.SelectedValue + "',Ch_Gender8='" + ddChGender7.SelectedValue + "', " +
                            "Ch_Qua1= '" + txtChQua.Text + "',Ch_Qua2= '" + txtChQua1.Text + "',Ch_Qua3= '" + txtChQua2.Text + "',Ch_Qua4= '" + txtChQua3.Text + "',Ch_Qua5= '" + txtChQua4.Text + "',Ch_Qua6= '" + txtChQua5.Text + "',Ch_Qua7= '" + txtChQua6.Text + "',Ch_Qua8= '" + txtChQua7.Text + "', " +
                            "Ch_Occ1='" + txtChOcc.Text + "',Ch_Occ2='" + txtChOcc1.Text + "',Ch_Occ3='" + txtChOcc2.Text + "',Ch_Occ4='" + txtChOcc3.Text + "',Ch_Occ5='" + txtChOcc4.Text + "',Ch_Occ6='" + txtChOcc5.Text + "',Ch_Occ7='" + txtChOcc6.Text + "', Ch_Occ8='" + txtChOcc7.Text + "', " +
                            "Ch_Marital1='" + ddChMariStatus.SelectedValue + "',Ch_Marital2='" + ddChMariStatus1.SelectedValue + "',Ch_Marital3='" + ddChMariStatus2.SelectedValue + "',Ch_Marital4='" + ddChMariStatus3.SelectedValue + "',Ch_Marital5='" + ddChMariStatus4.SelectedValue + "',Ch_Marital6='" + ddChMariStatus5.SelectedValue + "',Ch_Marital7='" + ddChMariStatus6.SelectedValue + "',Ch_Marital8='" + ddChMariStatus7.SelectedValue + "' where User_ID= '" + Session["ID"].ToString() + "'";
                        con.setData(query1);
                        lblMsg.Text = "Family Detailed Updated.";
                    }
                }
                
            }
            catch(Exception ex)
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = ex.Message;
            }
        }
    }
}