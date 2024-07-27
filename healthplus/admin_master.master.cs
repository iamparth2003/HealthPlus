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

public partial class admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Lank_login_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../user/index.aspx");
    } 
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedValue == "Users")
        {
            Response.Redirect("View_users.aspx");
        }
        else if (Menu1.SelectedValue == "Feedback")
        {
            Response.Redirect("View_feedback.aspx");
        }
        else if (Menu1.SelectedValue == "Add Doctors")
        {
            Response.Redirect("Doctor.aspx");
        }
        else if (Menu1.SelectedValue == "Add specialist")
        {
            Response.Redirect("Category.aspx");
        }
        else if (Menu1.SelectedValue == "View specialist")
        {
            Response.Redirect("view_category.aspx");
        }
        else if (Menu1.SelectedValue == "View Doctors")
        {
            Response.Redirect("View_doctor.aspx");
        }
        else if (Menu1.SelectedValue == "Home")
        {
            Response.Redirect("Admin_home.aspx");
        }
    }
}
