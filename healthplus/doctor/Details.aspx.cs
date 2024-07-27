using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("appointment.aspx");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        FileUpload fileUpload =DetailsView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
        HiddenField h1 = DetailsView1.Rows[e.RowIndex].FindControl("HiddenField1") as HiddenField;
        if (fileUpload.HasFile)
        {
            fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("~/upload"), fileUpload.FileName));
            SqlDataSource1.UpdateParameters["d_image"].DefaultValue = "~/upload/" + fileUpload.FileName;

        }
        else
        {
            SqlDataSource1.UpdateParameters["d_image"].DefaultValue = h1.Value;

        }
    }
}