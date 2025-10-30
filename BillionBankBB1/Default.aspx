<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Pages_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Dashboard - BillionBankBB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-white">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand text-white fw-bold" href="#">BillionBankBB</a>
                <div class="d-flex">
                    <a href="Transfer.aspx" class="btn btn-light btn-sm me-2">Transfer</a>
                    <a href="ApplyAccount.aspx" class="btn btn-light btn-sm me-2">Apply Account</a>
                    <a href="Profile.aspx" class="btn btn-light btn-sm me-2">Profile</a>
                    <a href="Logout.aspx" class="btn btn-danger btn-sm">Logout</a>
                </div>
            </div>
        </nav>

        <div class="container mt-4">
            <h3 class="text-primary">Welcome back, <asp:Label ID="lblUser" runat="server" /></h3>
            <p class="text-muted">Here’s a summary of your account activity.</p>
            <asp:GridView ID="gvAccounts" runat="server" CssClass="table table-striped"></asp:GridView>
        </div>

        <footer class="text-center text-muted mt-4">
            © 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
        </footer>
    </form>
</body>
</html>
