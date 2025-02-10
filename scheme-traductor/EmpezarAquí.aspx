<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="EmpezarAquí.aspx.cs" Inherits="scheme_traductor.EmpezarAquí" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <div class="jumbotron">
        <h1>comenzar aquí</h1>
     </div>

    <pre style="font-size: 20px;"> 
        <i>este tutorial ofrece una introducción rápida sobre cómo escribir programas con DrRacket + esquemático</i>
    </pre>
        <hr />
    <pre style="font-size: 20px;"> 
<span class="num-large"> 1 </span>
        descargar e instalar <a class="link" href="https://download.racket-lang.org/">DrRacket</a> y siga las instrucciones de instalación de esquemático en el archivo Readme 
        en el <a class="link" href="https://github.com/klfarran/scheme-traductor.git">repositorio de GitHub</a>
    </pre>
       <hr>

    <pre style="font-size: 20px;"> 
<span class="num-large"> 2 </span>
        abre DrRacket, y asegúrese de que estas dos líneas aparezcan en la parte superior de su programa: </pre>
     <pre><code class="language-scheme">
    #lang scheme
    (require scheme-traductor/scheme-traductor)
      </code></pre>
    <pre style="font-size: 20px;"> 
        ¡debajo de esas dos líneas es donde escribirá su primer programa!
     </pre>
       <hr>

    <pre style="font-size: 20px;"> 
<span class="num-large"> 3 </span>
        cuando escribe una espresión después del símbolo > en la ventana de interacciones en la mitad inferior de la pantalla 
        y presiona Intro, DrRacket evalúa la expresión e imprime su resultado. 
        
        una expresión puede ser solo un valor, como el número 5 o la cadena "galería de arte" </pre>
    <pre><code class="language-scheme">
    g-t 5
    5

    g-t "galería de arte"
    "galería de arte"
      </code></pre>
    <pre style="font-size: 20px;"> 
        una expresión también puede ser una llamada a una función. 
        
        para llamar a una función, coloque un paréntesis de apertura antes del nombre de la función, luego las expresiones para 
        los argumentos de la función, y luego un paréntesis de cierre, como este:
     </pre>

    <pre><code class="language-scheme">
     g-t (pri '(1 2 3))
     1
    </code></pre>

     <pre style="font-size: 20px;"> 
        esta función devuelve el primer elemento en una lista. solo acepta una lista. intenta darle un número incorrecto de
        argumentos para ver qué pasa:
     </pre>

    <pre><code class="language-scheme">
     g-t (pri )
    priDDAError
    </code></pre>

       <hr>

    </div>

</asp:Content>
