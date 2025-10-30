// Author: Thys Fourie (4874828)
// Date: 1 November 2025
// Purpose: Displays dashboard information and account details

using System;
using System.Data;

public partial class Pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            lblUser.Text = Session["UserName"].ToString();

            string email = Session["UserEmail"].ToString();
            string sql = $"SELECT AccountNumber, Balance, CreationDate FROM Accounts WHERE CustomerEmail='{email}'";
            gvAccounts.DataSource = DataAccess.Query(sql);
            gvAccounts.DataBind();
        }
    }
}
