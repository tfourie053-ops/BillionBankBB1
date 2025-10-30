// Author: Thys Fourie (4874828)
// Date: 1 November 2025
// Purpose: Handles transferring money and logs transactions to a text file.

using System;
using System.IO;

public partial class Pages_Transfer : System.Web.UI.Page
{
    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        try
        {
            int from = int.Parse(txtFrom.Text);
            int to = int.Parse(txtTo.Text);
            decimal amount = decimal.Parse(txtAmount.Text);

            string updateFrom = $"UPDATE Accounts SET Balance = Balance - {amount} WHERE AccountNumber = {from}";
            string updateTo = $"UPDATE Accounts SET Balance = Balance + {amount} WHERE AccountNumber = {to}";
            DataAccess.Exec(updateFrom);
            DataAccess.Exec(updateTo);

            string logPath = Server.MapPath("~/App_Data/TransactionLog.txt");
            string user = Session["UserEmail"]?.ToString() ?? "Unknown";
            File.AppendAllText(logPath, $"[{DateTime.Now}] From:{from} To:{to} Amount:R{amount} By:{user}\n");

            lblMsg.Text = "✅ Transfer successful and logged.";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "❌ Error: " + ex.Message;
        }
    }
}
