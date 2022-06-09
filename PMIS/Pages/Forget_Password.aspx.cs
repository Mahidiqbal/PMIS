using PMC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMIS.Pages
{
    public partial class Forget_Password : System.Web.UI.Page
    {
        string query;
        DB_Conn con = new DB_Conn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            query = "SELECT User_Email, User_Password FROM tbl_User WHERE User_Email = '" + txtForgetEmail.Value +"'";
            ds = con.getData(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                username = Convert.ToString(ds.Tables[0].Rows[0][0]);
                password = Convert.ToString(ds.Tables[0].Rows[0][1]);
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage("mahidiqbal666@gmail.com", txtForgetEmail.Value.Trim());
                mm.Subject = "Password Recovery";
                mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
                mm.IsBodyHtml = true;
                
                NetworkCredential NetworkCred = new NetworkCredential("mahidiqbal666@gmail.com","Mahid@2004");
                //NetworkCred.UserName = "testingsmtp122@gmail.com";
                //NetworkCred.Password = "mukaram4747";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
                //smtp.Host = "smtp.gmail.com";
                //smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = NetworkCred;
               
                smtp.Send(mm);
                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Password has been sent to your email address.";
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "This email address does not match our records.";
            }
        }
    }
}