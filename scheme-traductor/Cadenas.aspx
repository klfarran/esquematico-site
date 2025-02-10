<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Cadenas.aspx.cs" Inherits="scheme_traductor.Cadenas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>cadenas</h2>
        <h5 style="font-weight:normal">manipular cadenas</h5>
    </div>
    
     <hr>

    <div id="longitud-de-cadena" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">longitud-de-cadena</h3>
            <p style="text-indent:450px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/strings.html#%28def._%28%28quote._~23~25kernel%29._string-length%29%29">'string-length'</a></i></p>
        </div>

        <div>
          <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(longitud-de-cadena v ...) → número no negativo</strong></p>
          <p style=" text-indent: 70px; margin-bottom:2px;">v: cadena</p>
       </div>

        <pre>
             <span class="large">     
                devuelve la longitud de la cadena v. si v no es una cadena, se lanza la excepción <i>violación de contrato</i> 
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (longitud-de-cadena "Manzana")
    g-t 7

    g-t (longitud-de-cadena "")
    g-t 0

    g-t (longitud-de-cadena 4)
    ldcVDCError
         </code></pre>

    </div>

     <hr>

    <div id="subcadena" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">subcadena</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/strings.html#%28def._%28%28quote._~23~25kernel%29._substring%29%29">'substring'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(subcadena v inicio [fin]) → cadena</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cadena</p>
           <p style=" text-indent: 70px; margin-bottom:2px;">inicio: número no negativo</p>
           <p style=" text-indent: 70px; margin-bottom:2px;">fin: número no negativo que no sea mayor que (<a class="link" href="#longitud-de-cadena">longitud-de-cadena</a> v)</p>
       </div>

        <pre>
             <span class="large">     
                 devuelve una nueva cadena mutable cuya longitud es igual a (<a class="link" runat="server" href="~/Aritmética#menos">menos</a> fin inicio) y que contiene los mismo caracteres de la cadena v desde el inicio
                 <i>(inclusivo)</i> hasta el fin <i>(exclusivo)</i>. la primera posición de una cadena corresponde a 0, por lo que los argumentos de inicio y fin 
                 deben ser menores o iguales a la longitud de v, y fin debe ser mayor o igual a inicio
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (subcadena "manzana" 1 3)
    g-t "an"

    g-t (subcadena "manzana" 3 6)
    g-t "zan"

    g-t (subcadena "manzana" 1)
    g-t "anzana"

         </code></pre>

    </div>

     <hr>

    <div id="concatenar-cadena" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">concatenar-cadena</h3>
            <p style="text-indent:450px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/strings.html#%28def._%28%28quote._~23~25kernel%29._string-append%29%29">'string-append'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(concatenar-cadena v ...) → cadena</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cadena</p>
       </div>

        <pre>
             <span class="large">     
                devuelve una nueva cadena mutable cuya longitud es igual a la suma de las longitudes de las cadenas dadas y que contiene los caracteres 
                 concatenados de las v dados. si no se proporcionan v, el resultado es una cadena de longitud cero
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (concatenar-cadena "hola" " mundo")
    g-t "hola mundo"

    g-t (concatenar-cadena "uno" "dos" "tres")
    g-t "unodostres"

    g-t (concatenar-cadena "uno " "2" " tres")
    g-t "uno 2 tres"

    g-t (concatenar-cadena)
    g-t ""

         </code></pre>

         <hr>

    </div>

    <div id="¿cadena?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿cadena?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/strings.html#%28def._%28%28quote._~23~25kernel%29._string~3f%29%29">'string?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿cadena? v ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si v es una cadena de texto, <i>falso</i> en caso contrario
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
   g-t (¿cadena? "Manzana")
   g-t cierto

   g-t (¿cadena? 'Manzana)
   g-t falso

   g-t (¿cadena? 5)
   g-t falso

   g-t (¿cadena? '(3))
   g-t falso
         </code></pre>

    </div>
    
     <hr>

     <div id="¿inmutable?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿inmutable?</h3>
            <p style="text-indent:550px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/booleans.html#%28def._%28%28quote._~23~25kernel%29._immutable~3f%29%29">'immutable?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿inmutable? v ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                 devuelve <i>cierto</i> si es una <u>cadena</u> inmutable, <i>falso</i> en caso contrario
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿inmutable? '(3))
    g-t falso

    g-t (¿inmutable? "hola")
    g-t cierto

    g-t (¿inmutable? 'hola)
    g-t falso

    g-t (¿inmutable? '(1))
    g-t falso

    g-t (¿inmutable? cierto)
    g-t falso

         </code></pre>

    </div>

</div>

</asp:Content>
