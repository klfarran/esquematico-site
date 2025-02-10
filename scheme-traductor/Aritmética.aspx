<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Aritmética.aspx.cs" Inherits="scheme_traductor.Aritmética" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>procedimientos aritméticos</h2>
        <h5 style="font-weight:normal">calcular y comparar valores numéricos</h5>
    </div>
    
     <hr>

    <div id="más" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">más</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._%2B%29%29">'+'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(más x ...) → número</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">x: número</p>
       </div>

        <pre>
             <span class="large">     
                devuelve la suma de los x, agregando de manera pareada de izquierda a derecha. si no se proporcionan argumentos, el resultado es 0
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
   g-t (más 1 2)
   g-t 3

   g-t (más 5 4 3 2 1)
   g-t 15

   g-t (más 1.5 2.5)
   g-t 4.0

   g-t (más)
   g-t 0    </code></pre>

    </div>

     <hr>

    <div id="menos" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">menos</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._-%29%29">'-'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(menos z) → número</strong></p>
             <p style=" text-indent: 70px; margin-bottom:2px;"> z : número</p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(menos z w ...) → número</strong></p>
             <p style=" text-indent: 70px; margin-bottom:2px;">  z : número</p> 
             <p style=" text-indent: 70px; margin-bottom:2px;">w : número</p> 
       </div>

        <pre>
             <span class="large">     
                cuando no se proporcionan w, devuelve (menos 0 z). de lo contrario, devuelve la resta de los w de z, operando de manera pareada de izquierda 
                 a derecha. se requiere al menos 1 argumento
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
   g-t (menos 2)
   g-t -2

   g-t (menos 2 3)
   g-t -1

   g-t (menos 5 2 1)
   g-t 4

   g-t (menos 1.5 0.5)
   g-t 1.0

   g-t (menos)
    menosDDAError
         </code></pre>

    </div>

     <hr>

    <div id="mult" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">mult</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._%2A%29%29">'*'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(mult z ...) → número</strong></p>
               <p style=" text-indent: 70px; margin-bottom:2px;">  z : número</p> 
       </div>

        <pre>
             <span class="large">     
                devuelve el producto de los z, multiplicando de manera pareada de izquierda a derecha. si no se proporcionan argumentos, el resultado es 1 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
   g-t (mult 2)
   g-t 2

   g-t (mult 2 3)
   g-t 6

   g-t (mult 1 2 3 4 5)
   g-t 120

   g-t (mult 1.5 2)
   g-t 3.0

   g-t (mult)
   g-t 1

         </code></pre>

    </div>

     <hr>

    <div id="div" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">div</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._%2F%29%29">'/'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(div z) → número</strong></p>
             <p style=" text-indent: 70px; margin-bottom:2px;"> z : número</p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(div z w ...) → número</strong></p>
             <p style=" text-indent: 70px; margin-bottom:2px;">  z : número</p> 
             <p style=" text-indent: 70px; margin-bottom:2px;">w : número</p> 
       </div>

        <pre>
             <span class="large">     
                cuando no se proporcionan w, devuelve (div 1 z). de lo contrario, devuelve la división de z entre los w, operando de manera pareada de izquierda 
                 a derecha. se requiere al menos un argumento

                 si z es 0 exacto y ningún w es 0 exacto, el resultado es 0 exacto. si cualquier w es 0 exacto, se lanza la excepción <i>división por cero</i>
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
   g-t (div 4)
   g-t 1/4

   g-t (div 4 2)
   g-t 2

   g-t (div 30 3 5)
   g-t 2

   g-t (div 4.0 1.3)
   g-t 3.0769230769230766

   g-t (div 4 0)
   divDPCError

   g-t (div) 
   divDDAError
         </code></pre>

    </div>

     <hr>

    <div id="cociente" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">cociente</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._quotient%29%29">'quotient'</a></i></p>
        </div>

        <div>
            <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(cociente n m ...) → número entero</strong></p>
             <p style=" text-indent: 70px; margin-bottom:2px;">  n : número entero</p> 
             <p style=" text-indent: 70px; margin-bottom:2px;">m : número entero</p> 
       </div>

        <pre>
             <span class="large">     
                devuelve (<a class="link" href="#truncar">truncar</a> (<a class="link" href="#div">div</a> n m))
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (cociente 10 3)
    g-t 3

    g-t (cociente -10.0 3)
    g-t -3
        </code></pre>

    </div>

     <hr>

    <div id="residuo" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">residuo</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._remainder%29%29">'remainder'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(residuo n m ...) → número entero</strong></p>
             <p style=" text-indent: 70px; margin-bottom:2px;">  n : número entero</p> 
             <p style=" text-indent: 70px; margin-bottom:2px;">m : número entero</p> 
       </div>

        <pre>
             <span class="large">     
                devuelve q con el mismo signo que n, de tal manera que (val-abso q) esté entre 0 <i>(inclusivo)</i> y (val-abso q) <i>(exlusivo)</i> y  
                 (<a class="link" href="#más">más</a> q (<a class="link" href="#mult">mult</a> m (<a class="link" href="#cociente">cociente</a> n m))) sea igual a n

                 si m es exacto 0, se lanza la excepción <i>división por cero</i>
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (residuo 10 3)
    g-t 1

   g-t (residuo -10.0 3)
   g-t -1.0

   g-t (residuo 10.0 -3)
   g-t 1.0

   g-t (residuo -10 -3)
   g-t -1

         </code></pre>

    </div>

     <hr>

     <div id="cociente/residuo" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">cociente/residuo</h3>
            <p style="text-indent:450px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._quotient%2Fremainder%29%29">'quotient/remainder'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

     <div id="módulo" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">módulo</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._modulo%29%29">'modulo'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>


     <div id="redondear" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">redondear</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._round%29%29">'round'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>


     <div id="truncar" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">truncar</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._truncate%29%29">'truncar'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

    <hr>


     <div id="signo" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">signo</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28lib._racket%2Fmath..rkt%29._sgn%29%29">'sgn'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

     <div id="menos-de" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">menos-de</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._~3c%29%29">'<'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

    <hr>

    <div id="más-de" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">más-de</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._~3e%29%29">'>'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="raíz-cuadrada" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">raíz-cuadrada</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._sqrt%29%29">'sqrt'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="expo" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">expo</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._expt%29%29">'expt'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="máx" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">máx</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._max%29%29">'max'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="mín" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">mín</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._min%29%29">'min'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="val-abso" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">val-abso</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._abs%29%29">'abs'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

      <hr>

       <div id="¿número?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿número?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._number~3f%29%29">'number?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="¿número-entero?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿número-entero?</h3>
            <p style="text-indent:500px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._integer~3f%29%29">'integer?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="¿cero?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿cero?</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._zero~3f%29%29">'zero?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

    <div id="¿positivo?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿positivo?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._positive~3f%29%29">'positive?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

     <div id="¿negativo?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿negativo?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._negative~3f%29%29">'negative?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>

     <div id="¿número-par?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿número-par?</h3>
            <p style="text-indent:550px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._even~3f%29%29">'even?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

     <hr>


     <div id="¿número-impar?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿número-impar?</h3>
            <p style="text-indent:550px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._odd~3f%29%29">'odd?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic;"></p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong></strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                desc 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

</div>

</asp:Content>
