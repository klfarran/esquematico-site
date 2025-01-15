<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="scheme_traductor._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <div class="jumbotron">
        <h1>esquemático!</h1>
     </div>

        <pre style="font-size: 20px;">     
<i>esquemático</i> es una extensión del lenguaje de programación funcional <a style="text-decoration:none" href="https://www.scheme.org/">Scheme </a>que permite a usuarios interactuar con los
procedimientos integrados de Scheme en español. usuarios pueden llamar a procedimientos incorporados en Scheme 
utilizando palabras claves en español en lugar de las palabras claves tradicionales en inglés, así como recibir mensajes de 
error apropiados en español si hay un error de sintaxis o lógica

<i>esquemático</i> es una colección de Racket diseñada para usarse con el IDE DrRacket, que está disponible para descargar <a style="text-decoration:none" href="https://download.racket-lang.org/">aquí</a>. 
consiste en una serie de <a style="text-decoration:none" href="https://docs.racket-lang.org/guide/macros.html">macros</a> de Racket que actúan como una capa oculta en DrRacket, interpretando la entrada del
usuario en español y llamando al procedimiento integrado correspondiente en inglés o lanzando un mensaje de error
relevante en español

esta colección no ofrece soporte para todos los procedimientos del lenguaje Scheme/Racket. por favor, consulte la página de 
<a style="text-decoration:none" runat="server" href="~/Documentación">documentación</a> para ver todos los procedimientos disponibles para usar en español
                    
    tenga en cuenta que para poder utilizar las definiciones proporcionadas en esquemático!, es obligatorio que tenga estas
    dos líneas en la parte superior de cada programa: </pre>
     <pre><code class="language-scheme">
    #lang scheme
    (require scheme-traductor/scheme-traductor)
      </code></pre>

         <pre style="font-size: 22px;">
         
¡Feliz programación!</pre>

</div>
    

</asp:Content>
