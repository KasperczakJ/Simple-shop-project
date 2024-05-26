<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logowanie.aspx.cs" Inherits="projekt.logowanie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="description" content="Logowanie">
<meta name="author" content="Jakub Kasperczak">
<link rel="stylesheet" href="style.css">
    <title>Logowanie</title>
</head>
<body>
    <h1>
        Logowanie
    </h1>

    <div class = "button_bar">
        <div class="button">
            <a href="default.aspx">Home</a>
        </div>
   </div>
    <div class ="content">
        <form id="form1" runat="server">
            Login:
            <asp:TextBox ID="txtUsername" runat="server" />
            <br />
            Hasło:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>         
        </form>
    </div>
</body>
</html>
