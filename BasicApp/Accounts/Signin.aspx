<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="BasicApp.Accounts.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0" />
        <title>website with login and reg</title>
        <script src="https://code.jquery.com/jquery-2.1.0.min.js" ></script>
    <link href="../Resources/CSS/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div id="formWrapper">

<div id="form">
<div class="logo">

</div>
		<div class="form-item">
			<p class="formLabel">Email</p>
			<input type="email" name="email" id="txtEmail" runat="server" class="form-style" autocomplete="off"/>
		</div>
		<div class="form-item">
			<p class="formLabel">Password</p>
			<input type="password" name="password" id="txtPass" runat="server" class="form-style" />
			<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
			<p><a href="#" ><small>Forgot Password ?</small></a></p>	
		</div>
		<div class="form-item">
		<p class="pull-left"><a href="#"><small>Register</small></a></p>
		
            <asp:Button runat="server" Text="Login" CssClass="login" ID="btnLogin" OnClick="btnLogin_Click"></asp:Button>
		<div class="clear-fix"></div>
		</div>
</div>
</div>
    </form>
    <script src="../Resources/JS/login.js"></script>
</body>
</html>
