// Author: Thys Fourie (4874828)
// Purpose: Clears session and redirects to Login.

using System;

public partial class Pages_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
