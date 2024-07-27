<%@ Page Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="user_index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel="stylesheet" type="text/css" href="../css/coin-slider.css" />
<script type="text/javascript" src="../js/cufon-yui.js"></script>
<script type="text/javascript" src="../js/cufon-georgia.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript" src="../js/coin-slider.min.js"></script>

     <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="../image/slide1.jpg" width="960" height="360" alt="" /><span> </span></a> 
        <a href="#"><img src="../image/slide2.jpg" width="960" height="360" alt="" /><span> </span></a> 
        <a href="#"><img src="../image/slide3.jpg" width="960" height="360" alt="" /><span> </span></a> </div>
        <div class="clr"></div>
      </div>
</asp:Content>

