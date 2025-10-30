<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="Pages_AdminDashboard" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>Admin Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">
<form id="form1" runat="server" class="container mt-4">
<h3 class="text-primary mb-3">Admin Dashboard</h3>
<asp:GridView ID="gvUsers" runat="server" CssClass="table table-bordered table-striped"></asp:GridView>
<footer class="text-center text-muted mt-4">
© 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
</footer>
</form>
</body>
</html>
