// Author: Thys Fourie (4874828)
// Purpose: Displays all users for admin review.

using System;
using System.Data;

public partial class Pages_AdminDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserRole"]?.ToString() != "Admin")
            { Response.Redirect("Login.aspx"); return; }
            gvUsers.DataSource = DataAccess.Query("SELECT Email, FullName, Role FROM Customers");
            gvUsers.DataBind();
        }
    }
}
