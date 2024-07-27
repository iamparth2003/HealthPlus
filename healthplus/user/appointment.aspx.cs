using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_appointment : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
       
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        int ans;

        cn.Open();
        cmd = new SqlCommand("insert into appointement(a_nm,a_gender,a_dob,a_email,a_con,a_city,a_add,a_d_id) values('" + Txt_unam.Text + "','" + rb_gender.SelectedValue + "','" + txt_dob.Text + "','" + txt_email.Text + "','" + txt_contect.Text + "','" + txt_city.Text + "','" + txt_address.Text + "','" + ddl_dname.SelectedValue + "')", cn);
        ans = cmd.ExecuteNonQuery();
        cn.Close();
        if (ans > 0)
        {
            lbl_msg.Text = "you are appointement reqest is successfully submited";
            GridView1.DataBind();
        }
        

    }
}