<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Pages_Transfer" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Transfer Funds – BillionBankBB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">
<form id="form1" runat="server" class="container mt-5">
    <h3 class="text-primary mb-3">Transfer Funds</h3>

    <asp:Label ID="lblMsg" runat="server" CssClass="text-success"></asp:Label>

    <div class="row mb-3">
        <div class="col-md-6">
            <label>From Account</label>
            <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <label>To Account</label>
            <asp:TextBox ID="txtTo" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label>Amount (R)</label>
            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <asp:Button ID="btnTransfer" runat="server" Text="Transfer" CssClass="btn btn-primary" OnClick="btnTransfer_Click" />

    <footer class="text-center text-muted mt-4">
        © 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
    </footer>
</form>
</body>
</html>

