<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_form.aspx.cs" Inherits="Kanku.login_form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login form</title>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/login-style.css">
</head>
<body>
    <div class="form-container">
        <form action="" method="post" id="form1" runat="server">
            <br>
            <div class="logo">
                <img src="img/kankuLogo.svg" alt="" height="100px">
            </div>
            <br>
            <h3 style="color: red;">login now</h3>
            <%--<input type="email" name="email" required placeholder="enter your email">--%>
            <asp:TextBox ID="email" runat="server" placeholder="enter your email"></asp:TextBox>

            <%--<input type="password" name="password" required placeholder="enter your password">--%>
            <asp:TextBox ID="password" type="password" runat="server" placeholder="enter your password"></asp:TextBox>

            <%--<input type="submit" name="submit" value="login now" class="form-btn">--%>
            <asp:Button ID="btnlogin" runat="server" Text="Login" class="form-btn" OnClick="btnlogin_Click" />
            
            <p>don't have an account? <a href="register_form.aspx">register now</a></p>
        </form>
    </div>
</body>
</html>
