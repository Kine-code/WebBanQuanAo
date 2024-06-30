<%-- 
    Document   : Login_Register
    Created on : Jun 28, 2024, 8:50:43 AM
    Author     : Hieu.Nguyxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login & Signup Form</title>
        <link rel="stylesheet" href="./css/Login_Register.css" />
    </head>
    <body>
        <section class="wrapper">
            <div class="form login">
                <header>Signup</header>
                <form action="#" method="post">
                    <input type="text" placeholder="Email address" required />
                    <input type="password" placeholder="Password" required />
                     <input type="password" placeholder="Confirm Password" required />
                     <div class="checkbox">
                        <input type="checkbox" id="signupCheck" />
                        <label for="signupCheck" style="color: black"> I accept all terms & conditions</label>
                    </div>
                    <input type="submit" value="Signup" />
                </form>
            </div>

            <div class="form signup" style="height: 420px">
                <header>Login</header>
                <form action="login" method="post">
                    <input name ="username" type="text"  placeholder="User Name" required />
                    <input name ="password" type="password" placeholder="Password" required />
                    <a href="#">Forgot password?</a>
                    <input type="submit" value="Login" />
                </form>
            </div>
            
            <script>
                const wrapper = document.querySelector(".wrapper"),
                        signupHeader = document.querySelector(".signup header"),
                        loginHeader = document.querySelector(".login header");

                loginHeader.addEventListener("click", () => {
                    wrapper.classList.add("active");
                });
                signupHeader.addEventListener("click", () => {
                    wrapper.classList.remove("active");
                });
            </script>
        </section>
    </body>
</html>
