<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Documentation.aspx.cs" Inherits="scheme_traductor.Documentation" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <!-- Jumbotron -->
    <div class="jtron">
      <h2>welcome to the documentation for eschemántico!</h2>
    </div> 
    
    <h5>here you can find the syntax, examples, and descriptions of all of the definitions included in eschemántico!</h5>
      <hr>

   <div style="margin-left: 50px;">
      <p>to learn more about a definition or view the tranaltion for a definition, click on it using the sidebar to the left</p>
      <p>keep in mind that in order to use the spanish definitions provided in eschemántico!, you must have these two lines at the top of every program: </p>
        <p style="margin-bottom: -5px;"><strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp#lang scheme</strong></p>
        <p><strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp(require scheme-traductor/scheme-traductor)</strong></p>
    </div>

  </div>

</asp:Content>
