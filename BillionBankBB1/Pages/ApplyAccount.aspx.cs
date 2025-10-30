// Author: Thys Fourie (4874828)
// Date: 1 November 2025
// Purpose: Allows user to create additional bank accounts.

using System;
using System.Activities.Expressions;

public partial class Pages_ApplyAccount : System.Web.UI.Page
{
    protected void btnApply_Click(object sender, EventArgs e)
    {
        if (Session["UserEmail"] == null) { Response.Redirect("Login.aspx"); return; }
        string email = Session["UserEmail"].ToString();
        string sql = $"INSERT INTO Accounts (CustomerEmail, CreationDate, Balance) VALUES('{email}', '{DateTime.Now}', 100)";
        DataAccess.Exec(sql);
        lblMsg.Text = "✅ New account created with R100 starting balance.";
    }
}< asp:Label ID = "lblMsg" runat="server" />