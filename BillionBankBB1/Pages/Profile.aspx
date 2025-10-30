<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Pages_Profile" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server" class="container mt-5">
<h3 class="text-primary mb-3">Your Profile</h3>
<asp:Label ID="lblMsg" runat="server"></asp:Label>
<div class="mb-3">
    <label>Full Name</label>
    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<div class="mb-3">
    <label>Contact</label>
    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="btnSave_Click" />
<footer class="text-center text-muted mt-4">
© 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
</footer>
</form>
</body>
</html>
