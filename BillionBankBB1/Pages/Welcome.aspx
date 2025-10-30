<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Pages_Welcome" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Welcome to BillionBankBB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to bottom right, #cbe8ff, #f5f9ff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #003366;
            font-family: 'Segoe UI', sans-serif;
        }
        h1 {
            font-size: 3em;
            opacity: 0;
            animation: fadeIn 2s forwards;
        }
        p {
            opacity: 0;
            animation: fadeIn 2s forwards;
            animation-delay: 1s;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        footer {
            position: absolute;
            bottom: 10px;
            text-align: center;
            width: 100%;
            color: gray;
            font-size: 0.9em;
        }
    </style>
    <script>
        setTimeout(function () {
            window.location.href = 'Login.aspx';
        }, 3500);
    </script>
</head>
<body>
    <h1>Welcome to BillionBank</h1>
    <p>Secure • Smart • Simple Banking</p>
    <footer>
        © 2025 BillionBankBB | Developed by Thys Fourie (4874828) | Date: 1 November 2025
    </footer>
</body>
</html>
