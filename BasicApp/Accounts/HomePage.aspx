<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BasicApp.Accounts.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="../Resources/CSS/homepage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <header class="header-area">
            <!-- site-navbar start -->
            <div class="navbar-area">
                <div class="container">
                    <nav class="site-navbar">
                        <!-- site logo -->
                        <a href="#home" class="site-logo">logo</a>
                        <!-- site menu/nav -->
                        <ul>
                            <li><a href="#">home</a></li>

                            <li><a href="#">
                                <asp:Label ID="lbltitle" runat="server" Text="welcome"></asp:Label></a></li>
                            <li><a href="#">
                                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" /></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- navbar-area end -->

            <div class="intro-area">
                <div class="container">
                    <h2>Welcome Here</h2>
                    <p>Please resize your browser and see the result</p>
                </div>
            </div>
        </header>
    </form>
    <script src="../Resources/JS/homePage.js"></script>
</body>
</html>
