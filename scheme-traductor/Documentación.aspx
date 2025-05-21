<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Documentación.aspx.cs" Inherits="scheme_traductor.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
     <link rel="stylesheet" href="sitestyles.css"/>

<div class="main-content">
    <!-- Jumbotron -->
    <div class="jtron">
      <h2>bienvenidos a la documentación de esquemático!</h2>
    </div> 

    <h5>aquí puede encontrar la sintaxis, ejemplos, y descripciones de todas las definiciones incluidas en esquemático!</h5>
      <hr>

    <div style="margin-left: 50px;">
      <p>para obtener más información sobre una definición, haga clic en ella usando la barra lateral de la izquierda</p>
      <p>tenga en cuenta que para poder utilizar las definiciones proporcionadas en esquemático, es obligatorio que tenga estas dos líneas en la parte superior de cada programa: </p>
      <p>siguiendo las instrucciones de instalación, estas dos líneas deberían aparecer automáticamente</p>
    </div>

      <pre><code class="language-scheme">
    #lang scheme
    (require esquematico/base)
      </code></pre>
    

  </div>
</asp:Content>
