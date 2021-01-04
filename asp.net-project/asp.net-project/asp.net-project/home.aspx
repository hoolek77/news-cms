﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="asp.net_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .home-container {
            margin: 0;
            width: 100%;
            height: 80vh;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            padding: 5rem 5rem 0 5rem;
        }

        .home-left {
            width: 50%;
            height: 100%;
        }

        .home-left svg {
            padding-top: 10rem;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .home-right {
            padding-top: 5rem;
            width: 50%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .home-btn {
            background: none;
            color: #fff;
            width: 40rem;
            height: 12rem;
            border: 4px solid #7362CB;
            font-size: 2.4rem;
            border-radius: 4px;
            transition: .6s;
            overflow: hidden;
        }

        .home-btn:focus {
            outline: none;
        }

        .home-btn::before {
            content: '';
            display: block;
            position: absolute;
            background: rgba(255,255,255,.5);
            width: 60px;
            height: 100%;
            left: 0;
            top: 0;
            opacity: .5;
            filter: blur(30px);
            transform: translateX(-130px) skewX(-15deg);
        }

        .home-btn:after {
            content: '';
            display: block;
            position: absolute;
            background: rgba(255,255,255,.2);
            width: 30px;
            height: 100%;
            left: 30px;
            top: 0;
            opacity: -0;
            filter: blur(30px);
            transform: translate(-100px) scaleX(-15deg);
        }

        .home-btn:hover {
            background: #7362CB;
            cursor: pointer;
        }

        .home-btn:hover::before {
            transform: translateX(300px) skewX(-15deg);
            opacity: .6;
            transition: .7s;
        }

        .home-btn:hover::after {
            transform: translateX(300px) skewX(-15deg);
            opacity: 1;
            transition: .7s;
        }
    </style>
    <div class="home-container">  
        <div class="home-left">
            <svg id="f871edae-d68c-46d4-8324-c4853318dddd" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="888.00636" height="552.78086" viewBox="0 0 888.00636 552.78086"><title>online_articles</title><rect x="615.00687" y="108" width="182" height="332" fill="#e6e6e6"/><path d="M788.00369,596.60957h148v-298h-148Z" transform="translate(-155.99682 -173.60957)" fill="#fff"/><rect x="688.874" y="188.91458" width="43.22325" height="4.01391" fill="#e6e6e6"/><rect x="688.874" y="202.79994" width="75.3345" height="4.01391" fill="#e6e6e6"/><rect x="688.874" y="216.68531" width="75.26073" height="4.01391" fill="#e6e6e6"/><rect x="647.80523" y="188.97418" width="32.11125" height="32.11125" fill="#e6e6e6"/><rect x="688.874" y="257.91458" width="43.22325" height="4.01391" fill="#e6e6e6"/><rect x="688.874" y="271.79994" width="75.3345" height="4.01391" fill="#e6e6e6"/><rect x="688.874" y="285.68531" width="75.26073" height="4.01391" fill="#e6e6e6"/><rect x="647.80523" y="257.97418" width="32.11125" height="32.11125" fill="#e6e6e6"/><rect x="688.874" y="326.91458" width="43.22325" height="4.01391" fill="#e6e6e6"/><rect x="688.874" y="340.79994" width="75.3345" height="4.01391" fill="#e6e6e6"/><rect x="688.874" y="354.68531" width="75.26073" height="4.01391" fill="#e6e6e6"/><rect x="647.80523" y="326.97418" width="32.11125" height="32.11125" fill="#e6e6e6"/><rect x="107.00687" y="108" width="182" height="332" fill="#e6e6e6"/><path d="M280.00369,596.60957h148v-298h-148Z" transform="translate(-155.99682 -173.60957)" fill="#fff"/><rect x="180.874" y="188.91458" width="43.22325" height="4.01391" fill="#e6e6e6"/><rect x="180.874" y="202.79994" width="75.3345" height="4.01391" fill="#e6e6e6"/><rect x="180.874" y="216.68531" width="75.26073" height="4.01391" fill="#e6e6e6"/><rect x="139.80523" y="188.97418" width="32.11125" height="32.11125" fill="#e6e6e6"/><rect x="180.874" y="257.91458" width="43.22325" height="4.01391" fill="#e6e6e6"/><rect x="180.874" y="271.79994" width="75.3345" height="4.01391" fill="#e6e6e6"/><rect x="180.874" y="285.68531" width="75.26073" height="4.01391" fill="#e6e6e6"/><rect x="139.80523" y="257.97418" width="32.11125" height="32.11125" fill="#e6e6e6"/><rect x="180.874" y="326.91458" width="43.22325" height="4.01391" fill="#e6e6e6"/><rect x="180.874" y="340.79994" width="75.3345" height="4.01391" fill="#e6e6e6"/><rect x="180.874" y="354.68531" width="75.26073" height="4.01391" fill="#e6e6e6"/><rect x="139.80523" y="326.97418" width="32.11125" height="32.11125" fill="#e6e6e6"/><ellipse cx="444.00318" cy="449" rx="444.00318" ry="18" fill="#e6e6e6"/><rect x="328.1153" width="247.78313" height="452" fill="#3f3d56"/><path d="M494.81971,614.10957h226.368v-429h-226.368Z" transform="translate(-155.99682 -173.60957)" fill="#fff"/><rect x="428.6814" y="110.16081" width="58.84611" height="5.46471" fill="#ffe7e7"/><rect x="428.6814" y="129.06498" width="102.56383" height="5.46471" fill="#e6e6e6"/><rect x="428.6814" y="147.96916" width="102.4634" height="5.46471" fill="#e6e6e6"/><rect x="372.7685" y="110.24195" width="43.71772" height="43.71772" fill="#ffe7e7"/><rect x="428.6814" y="204.10057" width="58.84611" height="5.46471" fill="#ffe7e7"/><rect x="428.6814" y="223.00474" width="102.56383" height="5.46471" fill="#e6e6e6"/><rect x="428.6814" y="241.90892" width="102.4634" height="5.46471" fill="#e6e6e6"/><rect x="372.7685" y="204.18171" width="43.71772" height="43.71772" fill="#ffe7e7"/><rect x="428.6814" y="298.04033" width="58.84611" height="5.46471" fill="#ffe7e7"/><rect x="428.6814" y="316.9445" width="102.56383" height="5.46471" fill="#e6e6e6"/><rect x="428.6814" y="335.84868" width="102.4634" height="5.46471" fill="#e6e6e6"/><rect x="372.7685" y="298.12147" width="43.71772" height="43.71772" fill="#ffe7e7"/><path d="M517.50369,494.10957l-3,13s1,30-7,27-6-29-6-29l7-13Z" transform="translate(-155.99682 -173.60957)" fill="#ffb8b8"/><circle cx="317.00687" cy="158" r="20" fill="#ffb8b8"/><path d="M457.50369,337.10957l-2,29,25,3s0-24,2-27S457.50369,337.10957,457.50369,337.10957Z" transform="translate(-155.99682 -173.60957)" fill="#ffb8b8"/><path d="M513.00369,374.60957,480.621,360.89614s-15.469-11.93614-24.54315-3.11135l-4.07412,5.82478s-36,14-36,25l14,55s-8,31,4,33l65,6s9-11,1-25l3-33Z" transform="translate(-155.99682 -173.60957)" fill="#575a89"/><path d="M491.00369,375.60957l22-1s7,2,12,21,6,50,6,50l-12,56-15-2,6-54-10-36Z" transform="translate(-155.99682 -173.60957)" fill="#575a89"/><path d="M428.00369,381.60957l-10.84646,3.378s-9.15354,13.622-9.15354,20.622-4,60-4,60l26,43,8-21-16-27,13-33Z" transform="translate(-155.99682 -173.60957)" fill="#575a89"/><path d="M502.00369,480.60957l-71.8968-6.32585s-7.1032,45.32585-6.1032,63.32585,2,46,2,46l-8,122,31-4,4-101,13-55,15,70,10,90,27-3-9-109S517.00369,495.60957,502.00369,480.60957Z" transform="translate(-155.99682 -173.60957)" fill="#2f2e41"/><path d="M512.00369,697.60957l9,3s19-5,14,8-19,11-19,11-17,13-24,3l4-21Z" transform="translate(-155.99682 -173.60957)" fill="#2f2e41"/><path d="M439.00369,697.60957l9,3s19-5,14,8-19,11-19,11-17,13-24,3l4-21Z" transform="translate(-155.99682 -173.60957)" fill="#2f2e41"/><path d="M457.50369,349.10957s-21-15-10-33c7.63117-12.48738,23.44411-11.49893,32.414-9.72226a15.154,15.154,0,0,1,11.086,8.72226c1.5,3.5,1.5,7-4.5,7-12,0-6,9-6,9s-8,2-6,9S457.50369,349.10957,457.50369,349.10957Z" transform="translate(-155.99682 -173.60957)" fill="#2f2e41"/></svg>
        </div>
        <div class="home-right">
            <asp:Button ID="Button1" runat="server" Text="Check out the latest news!" class="home-btn" OnClick="News_Click" />
        </div>
    </div> 
</asp:Content>
