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
    public partial class Promotion : System.Web.UI.Page
    {
        string query;
        DataSet ds;
        DB_Conn con = new DB_Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                query = "SELECT *, DATEDIFF(day, From_Date1, To_Date1) AS date_difference, DATEDIFF(day, From_Date1, To_Date1) +1 AS days_inclusive FROM tbl_Transfer ORDER BY date_difference DESC ";
                ds = con.getData(query);
                dgv.DataSource = ds;
                dgv.DataBind();
            }
        }
    }
}