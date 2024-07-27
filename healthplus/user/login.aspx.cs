using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class user_login : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }

    protected void Lank_rag_Click(object sender, EventArgs e)
    {
        Response.Redirect("registrstion.aspx");
    }
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            da = new SqlDataAdapter("select * from doctor where d_unm='" + Txt_unam.Text + "' and d_pass='" + Txt_pwd.Text + "'", cn);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["d_id"] = dt.Rows[0][0].ToString();
                Response.Redirect("../doctor/home.aspx");
            }
        }
        else
        {
           
                da = new SqlDataAdapter("select * from Registration where u_unm='" + Txt_unam.Text + "' and u_pwd='" + Txt_pwd.Text + "'", cn);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    if (dt.Rows[0][7].ToString() == "0")
                    {
                        Session["user"] = Txt_unam.Text;
                        Session["uid"] = dt.Rows[0][0];
                        Response.Redirect("index.aspx");
                    }
                    else if (dt.Rows[0][7].ToString() == "1")
                    {
                        Session["admin"] = Txt_unam.Text;
                        Response.Redirect("../admin/Admin_home.aspx");
                    }
                }
                else
                {
                    lbl_msg.Text = "invalid username or password";
                }
            
        }
    }
}