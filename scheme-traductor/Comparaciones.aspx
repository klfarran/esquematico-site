<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Comparaciones.aspx.cs" Inherits="scheme_traductor.Comparaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>comparación e igualdad</h2>
        <h5 style="font-weight:normal">comparar los valores de diferentes identificadores enlazados</h5>
    </div>

        <hr>

    <div id="¿igual?" class="scrl">

        <div class="proctitle-div">
            <h3 class ="procname">¿igual?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/Equality.html">equal?</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿igual? v1 v2) → booleano</strong></p>
            <p style="text-indent:75px; font-style:italic; margin-bottom:2px;">dos valores son iguales si y solo si son ¿igv?, a menos que se especifique lo contrario para un tipo de dato en particular</p> 
        </div>

        <pre>

<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (¿igual? 'si 'si)
 cierto

 g-t (¿igual? 'si 'no)
 falso

 g-t (¿igual? (* 6 7) 42)
 cierto

 g-t (¿igual? (expo 2 100) (expo 2 100))
cierto

 g-t (¿igual? 2 2.0)
falso

 g-t (¿igual? cierto cierto)
cierto
 </code></pre>

    </div>

      <hr>

    <div id="¿igv?" class="scrl">

        <div class="proctitle-div">
            <h3 class ="procname">¿igv?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/Equality.html#%28def._%28%28quote._~23~25kernel%29._eqv~3f%29%29">eqv?</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿igv? v1 v2) → booleano</strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;">retorna cierto si el valor de (¿ig? v1 v2) es cierto, false en caso contrario a menos que se especifique lo contrario para un tipo de</p> 
             <p style="text-indent:75px; font-style:italic;">dato determinado</p>
       </div>

        <pre>
             <span class="large">     
                        los tipos de datos <i>número</i> y <i>carácter</i> son los únicos para los que el valor resultante de ¿eqv? difiere de la de ¿eq?

                        dos números son ¿igv? cuando tienen la misma exactitud, precisión, y son iguales y distinto de cero

                        en general, ¿igv? es idéntico a ¿igual? excepto que ¿igv? no puede comparar recursivamente el contenido de tipos de datos compuestas 
                        (como listas) y no puede ser personalizado por tipos de datos definidos por el usuario. El uso de ¿igv? se desaconseja ligeramente en favor 
                        de ¿igual?
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (¿igv? 'si 'si)
 cierto

 g-t (¿igv? 'si 'no)
 falso

 g-t (¿igv? (mult 6 7) 42)
 cierto

 g-t (¿igv? (expo 2 100) (expo 2 100))
 cierto

 g-t (¿igv? 2 2.0)
 falso

 g-t (¿igv? cierto cierto)
 cierto
 </code></pre>

    </div>
    
     <hr>

     <div id="¿ig?" class="scrl">

        <div class="proctitle-div">
            <h3 class ="procname">¿ig?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/Equality.html#%28def._%28%28quote._~23~25kernel%29._eq~3f%29%29">eq?</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿ig? v1 v2) → booleano</strong></p>
             <p style="text-indent:75px; font-style:italic;">devuelve cierto si v1 y v2 se refieren al mismo objeto, false en caso contrario.</p> 
       </div>

        <pre>
            
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
  g-t (¿ig? 'si 'si)
  cierto 

 g-t (¿ig? 'si 'no)
 falso

 g-t (¿ig? (mult 6 7) 42)
 cierto

 g-t (¿ig? (expo 2 100) (expo 2 100))
 falso

 g-t (¿ig? 2 2.0)
 falso

 g-t (¿ig? cierto cierto)
 cierto
 </code></pre>

    </div> 

  </div>

</asp:Content>
