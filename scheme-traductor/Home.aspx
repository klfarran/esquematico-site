<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="scheme_traductor.Home" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="sitestyles.css"/>

<div class="eng-main-content">
    <div class="jumbotron">
        <h1>esquemático!</h1>
    </div>

           <pre style="font-size: 20px;"> 
     <i>esquemático</i> is an extension of the functional programming language <a style="text-decoration:none" href="https://www.scheme.org/">Scheme </a>which allows users to interact with built-in
     Scheme procedures in Spanish. users can call built-in procedures using Spanish keywords in place of the traditional English 
     keywords as well as recieve appropriate error messages in Spanish if there is an error in syntax or logic.        
           
     <i>esquemático</i> is a Racket collection intended for use with Dr. Racket IDE  which is you can download <a style="text-decoration:none" href="https://download.racket-lang.org/">here</a>. it is comprised of 
     a series of Racket <a style="text-decoration:none" href="https://docs.racket-lang.org/guide/macros.html">macros</a> that act as a hidden layer in the Dr. Racket IDE, interpreting Spanish user input and appropraitely
     calling the corresponding English built-in procedure or throwing a relevant error message in Spanish. 

     this collection does not provide support for every procedure belonging to the Scheme/ Racket language. please see the 
     <a style="text-decoration:none" runat="server" href="~/Documentation">documentation</a> to view the procedures available for use in Spanish. this collection is intended for use by Spanish speakers,
     and documentation in English is limited. 

    in order to use the procedures available with <i>esquemático</i>, these two lines must appear at the top of every .rkt file: </pre>  
    <pre><code class="language-scheme">
    #lang scheme
    (require scheme-traductor/scheme-traductor) 
    </code></pre>

           <pre style="font-size: 20px;"> 

     here is an example of how this collection uses Racket macros to extend Scheme. the Spanish equivalent of the fundamental 
     procedure <i>define</i> is 'definir', used in the same manner as <i>define</i> would be, like so: </pre>
        <pre><code class="language-scheme">
  g-t (definir replacee ; replace every occurence of 'x' in the list 'lis' with 'z'
    (lambda (liss xx z)
      (condición
        ((¿nulo? liss) '())
        ((y (¿átomo? (pri liss)) (¿ig? (pri liss) xx)) (combinar zz (replacee(res liss) xx zz)))
        ((¿átomo? (pri liss)) (combinar (pri liss) (replacee (res liss) xx zz)))
        (sino (combinar (replacee (pri liss) xx zz) (replacee (res liss) xx zz))) )))
        </code></pre> 

         <pre style="font-size: 20px;"> 

         </pre> 
                            
    </div>    
</asp:Content>
