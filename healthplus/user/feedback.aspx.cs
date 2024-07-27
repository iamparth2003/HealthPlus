using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class user_feedback : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn=new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ans;
        cn.Open();
        cmd = new SqlCommand("insert into feedback(f_fnm,f_comment) values('" + txt_fnm.Text + "','" + txt_comment.Text + "')", cn);
        ans = cmd.ExecuteNonQuery();
        cn.Close();
        if (ans > 0)
        {
            lbl_msg.Text = "your feedback is successfully sumbited";
        }

        

    }
    protected void txt_fnm_TextChanged(object sender, EventArgs e)
    {

    }
}
