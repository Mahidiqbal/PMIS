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
    public partial class Transfer : System.Web.UI.Page
    {
        string query;
        DataSet ds;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                query = "select *, DATEDIFF(day, EnrollDate, '2022-06-12') AS date_difference from tbl_User ORDER BY date_difference DESC ";
                ds = con.getData(query);
                dgv.DataSource = ds;
                dgv.DataBind();
            }
        }
        
    }
}