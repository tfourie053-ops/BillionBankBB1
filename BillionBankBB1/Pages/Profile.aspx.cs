// Author: Thys Fourie (4874828)
// Purpose: Update user profile details.

using System;
using System.Data;
using System.Xml.Linq;

public partial class Pages_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && Session["UserEmail"] != null)
        {
            string email = Session["UserEmail"].ToString();
            DataTable dt = DataAccess.Query($"SELECT * FROM Customers WHERE Email='{email}'");
            if (dt.Rows.Count > 0)
            {
                txtName.Text = dt.Rows[0]["FullName"].ToString();
                txtContact.Text = dt.Rows[0]["Contact"].ToString();
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string email = Session["UserEmail"].ToString();
        DataAccess.Exec($"UPDATE Customers SET FullName='{txtName.Text}', Contact='{txtContact.Text}' WHERE Email='{email}'");
        lblMsg.Text = "✅ Profile updated successfully.";
    }
}
