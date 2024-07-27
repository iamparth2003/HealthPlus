using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class doctor_view_appotiment : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string id = e.CommandArgument.ToString();
        int ans;
        cn.Open();
        cmd = new SqlCommand("update appointement set a_app='1' where a_id='"+ id + "'",cn);
        ans = cmd.ExecuteNonQuery();
        cn.Close();
    }
}