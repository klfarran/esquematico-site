<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Tipos.aspx.cs" Inherits="scheme_traductor.Tipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
           <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>tipos</h2>
        <h5 style="font-weight:normal">determinar los tipos de datos de literales</h5>
    </div>
    
     <hr>

    <div id="¿átomo?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿átomo?</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/teachpack/docs.html#%28def._%28%28lib._htdp%2Fdocs..rkt%29._atom~3f%29%29">'atom?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿átomo? x ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">x: cualquier tipo</p> 
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si x es un número, un símbolo o una cadena, <i>falso</i> en caso contrario
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿átomo? 2)
    g-t cierto

    g-t (¿átomo? "manzana")
    g-t cierto

    g-t (¿átomo? 'hola)
    g-t cierto

    g-t (¿átomo? '(1 2 3))
    g-t falso
         </code></pre>

    </div>

     <hr>

    <div id="¿símbolo?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿símbolo?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/symbols.html#%28def._%28%28quote._~23~25kernel%29._symbol~3f%29%29">'symbol?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿símbolo? x ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">x: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si x es un símbolo, <i>falso</i> en caso contrario 
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿símbolo? 1)
    g-t falso

    g-t (¿símbolo? "manzana")
    g-t falso

    g-t (¿símbolo? 'hola)
    g-t cierto

    g-t (¿símbolo? '(1 2 3))
    g-t falso
         </code></pre>

    </div>

     <hr>

    <div id="¿carácter?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿carácter?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/characters.html#%28def._%28%28quote._~23~25kernel%29._char~3f%29%29">'char?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿carácter? x ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">x: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si x es un carácter, <i>falso</i> en caso contrario

                tenga en cuenta que los caracteres están precedidos por #\ en Scheme
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿carácter? 1)
    g-t falso

    g-t (¿carácter? "manzana")
    g-t falso

    g-t (¿carácter? 'hola)
    g-t falso

    g-t (¿carácter? '(1 2 3))
    g-t falso

    g-t (¿carácter? 'a)
    g-t falso

    g-t (¿carácter? #\a)
    g-t cierto
         </code></pre>

    </div>

     <hr>

    <div id="¿booleano?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿booleano?</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/booleans.html#%28def._%28%28quote._~23~25kernel%29._boolean~3f%29%29">'boolean?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿booleano? v ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si v es cierto o falso (un valor booleano), <i>falso</i> en caso contrario
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿booleano? cierto)
    g-t cierto

    g-t (¿booleano? falso)
    g-t cierto

    g-t (¿booleano? 'cierto)
    g-t falso

    g-t (¿booleano? 1)
    g-t falso

    g-t (¿booleano? "manzana")
    g-t falso

    g-t (¿booleano? '(1 2 3))
    g-t falso
         </code></pre>

    </div>

    <hr>

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

    <hr>

       <div id="¿lista?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿lista?</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._list~3f%29%29">'list?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿lista? v ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si v es una lista: ya sea la lista vacía, o un par cuyo segundo elemento es una lista
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿lista? 1)
    g-t falso

    g-t (¿lista? '(1 2 3))
    g-t cierto

    g-t (¿lista? "lista")
    g-t falso

    g-t (¿lista? '(1 . (2)))
    g-t cierto

    g-t (¿lista? '())
    g-t cierto
         </code></pre>

    </div>

     <hr>

    <div id="¿par?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿par?</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._pair~3f%29%29">'pair?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¿par? v ...) → booleano</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                devuelve <i>cierto</i> si v es un par, <i>falso</i> en caso contrario
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (¿par? 1)
    g-t falso

    g-t (¿par? (combinar 1 2))
    g-t cierto

    g-t (¿par? (lista 1 2))
    g-t cierto

    g-t (¿par? '(1 2))
    g-t cierto

    g-t (¿par? '(1 . 2))
    g-t cierto

    g-t (¿par? '())
    g-t falso
         </code></pre>

    </div>

</div>
</asp:Content>
