using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_Doctor : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        int ans;
        string img;
        img = Fp.PostedFile.FileName;
        Fp.SaveAs(Server.MapPath("~/upload/") + img);
        cn.Open();
        cmd = new SqlCommand("insert into doctor (d_name,d_hospital_name,d_address,d_contactno,d_timing,d_c_id,d_image,d_avail,d_qua,d_exp,d_unm,d_pass,d_city) values('" + txt_name.Text + "','" + txt_hospital_name.Text + "','" + Txt_add.Text + "','" + Txt_contectno.Text + "','" + Txt_vicitindtiming.Text + "','" + Ddl_spe.SelectedValue + "','" + img + "','" + ListBox1.SelectedValue + "','" + Txt_qulifacation.Text + "','" + Txt_experiece.Text + "','"+Txt_unm.Text+"','"+Txt_pass.Text+"','"+Txt_city.Text+"')", cn);
        ans = cmd.ExecuteNonQuery();
        cn.Close();
        if (ans > 0) ;
        {
            Lbl_msg.Text = "Doctor detail is  sucessfull sumbited";

        }



    }
}