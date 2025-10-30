// Author: Thys Fourie (4874828)
// Date: 1 November 2025
// Purpose: Handles user login and admin redirection

using System;
using System.Data;

public partial class Pages_Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        string pass = txtPassword.Text.Trim();

        string sql = $"SELECT * FROM Customers WHERE Email='{email}' AND Password='{pass}'";
        DataTable dt = DataAccess.Query(sql);

        if (dt.Rows.Count > 0)
        {
            string role = dt.Rows[0]["Role"].ToString();
            Session["UserEmail"] = email;
            Session["UserName"] = dt.Rows[0]["FullName"].ToString();
            Session["UserRole"] = role;
            Response.Redirect("SplashScreen.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid credentials. Please try again.";
        }
    }

    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        txtEmail.Text = "admin@example.com";
        txtPassword.Text = "AdminPass1";
    }
}
