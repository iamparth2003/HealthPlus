using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_Categoryaspx : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ans;
        cn.Open();
        cmd= new SqlCommand("insert into category (c_nm) values('"+ txt_cat.Text+"')",cn);
        ans = cmd.ExecuteNonQuery();
        cn.Close();
        if (ans > 0) 
        {
            Lbl_msg.Text = "category sussefully sumbited";
        }
            


    }
}