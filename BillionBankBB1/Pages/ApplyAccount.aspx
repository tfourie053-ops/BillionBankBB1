<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyAccount.aspx.cs" Inherits="Pages_ApplyAccount" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>Apply for Account</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-white">
<form id="form1" runat="server" class="container mt-5">
    <h3 class="text-primary mb-3">Apply for Additional Account</h3>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <asp:Button ID="btnApply" runat="server" Text="Create Account" CssClass="btn btn-success" OnClick="btnApply_Click" />
    <footer class="text-center text-muted mt-4">
        © 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
    </footer>
</form>
</body>
</html>
