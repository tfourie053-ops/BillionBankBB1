// Author: Thys Fourie (4874828)
// Date: 1 November 2025
// Purpose: Centralised data access helper for BillionBankBB

using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public static class DataAccess
{
    static string conn =
        ConfigurationManager.ConnectionStrings["BillionBankConn"].ConnectionString;

    public static DataTable Query(string sql)
    {
        using (var c = new OleDbConnection(conn))
        using (var d = new OleDbDataAdapter(sql, c))
        {
            var dt = new DataTable();
            d.Fill(dt);
            return dt;
        }
    }

    public static int Exec(string sql)
    {
        using (var c = new OleDbConnection(conn))
        using (var cmd = new OleDbCommand(sql, c))
        {
            c.Open();
            return cmd.ExecuteNonQuery();
        }
    }
}
