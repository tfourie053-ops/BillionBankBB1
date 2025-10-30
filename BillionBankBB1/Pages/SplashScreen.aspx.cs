// Author: Thys Fourie (4874828)
// Date: 1 November 2025
// Purpose: Displays personalized greeting then redirects to dashboard

using System;

public partial class Pages_SplashScreen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
            lblName.Text = Session["UserName"].ToString();
        else
            Response.Redirect("Login.aspx");
    }
}
