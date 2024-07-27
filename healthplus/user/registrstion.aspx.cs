using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class user_registrstion : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into registration(u_fnm,u_unm,u_pwd,u_email,u_sql,u_ans) values('" + Txt_fnam.Text + "','" + txt_unm.Text + "','" + Txt_pdw.Text + "','" + Txt_emal.Text + "','" + Ddl_que.SelectedValue + "','" + txt_ans.Text + "')", cn);
        ans = cmd.ExecuteNonQuery();
        cn.Close();
        if (ans > 0)
        {
            lbl_msg.Text = "You are successfully registered";
        }
    }
}