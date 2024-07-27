using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doctor : System.Web.UI.MasterPage
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
        if (Menu1.SelectedValue == "Appotiment")
        {
            Response.Redirect("View_appotiment.aspx");
        }
        else if (Menu1.SelectedValue == "Details")
        {
            Response.Redirect("Details.aspx");
        }
    }
}
