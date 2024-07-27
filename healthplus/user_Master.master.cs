using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class user_Master : System.Web.UI.MasterPage
{
    SqlConnection cn;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (Session["user"] != null)
        {
            Label2.Text = "welcome " + Session["user"];
            Lank_login.Text = "Logout";
        }
        if (!IsPostBack)
        {
            da = new SqlDataAdapter("select * from category", cn);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0) ;
            {
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    MenuItem m1;
                    m1 = new MenuItem();
                    m1.Text = dt.Rows[i][1].ToString();
                    m1.Value = dt.Rows[i][0].ToString();
                    Menu1.FindItem("Doctors").ChildItems.Add(m1);

                }
            }
        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedValue == "Home")
        {
            Response.Redirect("index.aspx");
        }
        else if (Menu1.SelectedValue == "About us")
        {
            Response.Redirect("aboutus.aspx");
        }
        else if (Menu1.SelectedValue == "Contact us")
        {
            Response.Redirect("contactus.aspx");
        }
        else if (Menu1.SelectedValue == "Feedback")
        {
            Response.Redirect("feedback.aspx");
        }
        da = new SqlDataAdapter("select * from category", cn);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0) 
        {
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                if (Menu1.SelectedValue == dt.Rows[i][0].ToString())
                {
                    Response.Redirect("Doctors.aspx?d_id=" + dt.Rows[i][0].ToString() + "&d_nm=" + dt.Rows[i][1].ToString());
                }
            }

        }
    }
    protected void Lank_login_Click(object sender, EventArgs e)
    {
        if (Lank_login.Text == "Logout")
        {
            Label2.Text = "";
            Session.Abandon();
            Lank_login.Text ="Login";
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        
    }
}
