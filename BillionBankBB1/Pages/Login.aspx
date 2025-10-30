<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login – BillionBankBB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <form id="form1" runat="server" class="d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width:400px;">
            <h3 class="text-center text-primary mb-4">BillionBankBB Login</h3>

            <asp:Label ID="lblMsg" runat="server" CssClass="text-danger"></asp:Label>

            <div class="form-group mb-3">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group mb-3">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-check mb-3">
                <asp:CheckBox ID="chkRemember" runat="server" CssClass="form-check-input" />
                <label class="form-check-label">Remember me</label>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
            <asp:Button ID="btnAdmin" runat="server" Text="Admin Login" CssClass="btn btn-outline-secondary w-100 mt-2" OnClick="btnAdmin_Click" />

            <div class="text-center mt-3">
                <a href="Register.aspx">Register</a> |
                <a href="ForgotPassword.aspx">Forgot Password?</a>
            </div>

            <footer class="text-center text-muted mt-4 small">
                © 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
            </footer>
        </div>
    </form>
</body>
</html>
