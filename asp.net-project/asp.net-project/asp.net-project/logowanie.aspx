<%@ Page Title="" Language="C#" MasterPageFile="~/logowanieNested.master" AutoEventWireup="true" CodeBehind="logowanie.aspx.cs" Inherits="asp.net_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="js/login.js"></script>
    <style>
        .login-heading {
            font-size: 4.5rem;
            font-weight: 400;
        }

        .input-container {
            height: 5rem;
        }

        .input-heading {
            font-size: 2.4rem;
        }

        .inputs-container {
            display: flex;
            flex-direction: column;
        }

        .input-text-box {
            height: 45px;
            width: 340px;
            font-size: 2rem;
            padding-left: 1rem;
            border: none;
            outline: none;
            border: 1px solid #b8a9d9;
        }

        .input-text-box:focus {
            background-color: rgba(255,255,255,0.8)
        }

        .login-checkbox {
            font-size: 1.8rem;
        }

        .login-btn {
            margin-top: 2rem;
            font-size: 2.1rem;
            height: 4rem;
            width: 340px;
            border: 1px solid #b8a9d9;
            outline: none;
            background-color: rgba(255,255,255,0.6);
            transition: all .3s;
            cursor: pointer;
        }


        .login-btn:hover {
            background-color: rgba(255,255,255,0.8);
            transform: scale(1.05)
        }
    </style>
    <h2 class="login-heading">Login</h2>
    <input type="text" id="login" class="input-text-box" placeholder="Username"  runat="server"/>
    <input type="password" id="password" class="input-text-box" style="margin-top: 20px" placeholder="Password" runat="server" />
    <asp:Button ID="adminLog" class="login-btn" Text="Submit" runat="server" OnClick="AdminLogin" />
</asp:Content>