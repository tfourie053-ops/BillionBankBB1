<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SplashScreen.aspx.cs" Inherits="Pages_SplashScreen" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body { background-color:#e8f3ff; height:100vh; display:flex; justify-content:center; align-items:center; }
        .fade-in { animation: fade 2s forwards; opacity:0; }
        @keyframes fade { from{opacity:0;} to{opacity:1;} }
    </style>
    <script>
        setTimeout(function(){ window.location.href='Default.aspx'; }, 3000);
    </script>
</head>
<body>
    <div class="text-center fade-in">
        <h2 class="text-primary">Welcome, <asp:Label ID="lblName" runat="server" />!</h2>
        <p class="text-muted">Redirecting to your dashboard...</p>
    </div>
</body>
</html>
