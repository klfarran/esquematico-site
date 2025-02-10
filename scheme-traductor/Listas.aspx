<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Listas.aspx.cs" Inherits="scheme_traductor.Listas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>listas</h2>
        <h5 style="font-weight:normal">crear y manipular listas</h5>
    </div>
    
     <hr>

    <div id="combinar" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">combinar</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cons%29%29">'cons'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(combinar a b) → lista</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">a: cualquier tipo</p>
           <p style=" text-indent: 70px; margin-bottom:2px;">b: lista</p>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(combinar a b) → par</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">a: cualquier tipo</p>
           <p style=" text-indent: 70px; margin-bottom:2px;">b: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                
                devuelve un par recién asignado cuyo primer elemento es <i>a</i> y el segundo elemento es <i>b</i>. cuando <i>b</i> es una lista, el par 
                asignado también es una lista

                combinar es realmente la única forma de añadir elementos a las listas en Scheme
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (combinar 1 2)
    g-t (1 . 2)

    g-t (combinar 1 '(2))
    g-t (1 2)

    g-t (combinar '(1 2) '(3 4))
    g-t ((1 2) 3 4)

    g-t (combinar 1 '())
    g-t (1)
         </code></pre>

    </div>

     <hr>

    <div id="pri" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">pri</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._car%29%29">'car'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(pri v) → cualquier tipo</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: par</p>
       </div>

        <pre>
             <span class="large">     
                devuelve el primer elemento del par <i>v</i> 

                es obligatorio que <i>v</i> sea un par/ una lista 
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (pri '(1 2))
    g-t 1

    g-t (pri '(1 . 2))
    g-t 1

    g-t (pri '((2) 2))
    g-t (2)

    g-t (pri '(2 (2)))
    g-t 2
         </code></pre>

    </div>

     <hr>

       <div id="res" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">res</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cdr%29%29">'cdr'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(res v) → cualquier tipo</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: par</p>
       </div>

        <pre>
             <span class="large">     
                devuelve el segundo elemento del par <i>v</i> 
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (res '(1 2))
    g-t (2)

    g-t (res '(1 (2)))
    g-t ((2))

    g-t (res '(1))
    g-t ()

    g-t (res '())
    resVDCError
         </code></pre>

    </div>

     <hr>

       <div id="longitud" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">longitud</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._length%29%29">'length'</a></i></p>
        </div>

        <div>
          <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(longitud v) → número entero no negativo</strong></p>
          <p style=" text-indent: 70px; margin-bottom:2px;">v: lista</p>
       </div>

        <pre>
             <span class="large">     
                devuelve el número de elementos en v. esta función toma un tiempo proporcional a esa longitud
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (longitud '())
    g-t 0

    g-t (longitud '(1 2 3 4 5))
    g-t 5

    g-t (longitud (lista 1 2 3))
    g-t 3
         </code></pre>

    </div>

     <hr>

    <div id="juntar" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">juntar</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._append%29%29">'append'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(juntar v ...) → lista</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: lista</p>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(juntar v ... w) → lista</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: lista</p>
           <p style=" text-indent: 70px; margin-bottom:2px;">w: cualquier tipo</p>
       </div>

        <pre>
             <span class="large">     
                cuando se proporcionan solo listas como argumentos, el resultado es una lista que contiene todos los elementos de las listas dadas en orden

                el último argumento no necesita ser una lista. en este caso, el resultado es una "lista impropia"

                esta función toma un tiempo proporcional a la suma de las longitudes de todos los arguementos, excepto el último
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (juntar (lista 1 2) (lista 3 4))
    g-t (1 2 3 4)

    g-t (juntar (lista 1 2) (lista 3 4) (lista 5 6) (lista 7 8))
    g-t (1 2 3 4 5 6 7 8)

    g-t (juntar '(1 2) 3)
    g-t (1 2 . 3)

    g-t (juntar '(2) '(3) '(4) 5)
    g-t (2 3 4 . 5)

    g-t (juntar '(3))
    g-t (3)

    g-t (juntar 4)
    g-t 4

    g-t (juntar)
    g-t ()
         </code></pre>

    </div>

       <hr>

      <div id="lista" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">lista</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._list%29%29">'list'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(lista v ... ) → list</strong></p>
           <p style=" text-indent: 70px; margin-bottom:2px;">v: cualquier valor</p>
       </div>

        <pre>
             <span class="large">     
                devuelve una lista recién asignada que contiene los v como sus elementos 
             </span>
<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    g-t (lista)
    g-t ()

    g-t (lista 1 2 3)
    g-t (1 2 3)

    g-t (lista (lista 1 2) (lista 1 2))
    g-t ((1 2) (1 2))
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

     <hr>

    <div id="¿nulo?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿nulo?</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._null~3f%29%29">'null?'</a></i></p>
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

    <div id="prri" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">prri</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._caar%29%29">'caar'</a></i></p>
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

    <div id="prrri" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">prrri</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._caaar%29%29">'caaar'</a></i></p>
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

    <div id="prrrri" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">prrrri</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._caaaar%29%29">'caaaar'</a></i></p>
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

    <div id="ress" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">ress</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cddr%29%29">'cddr'</a></i></p>
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

    <div id="resss" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">resss</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cdddr%29%29">'cdddr'</a></i></p>
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

    <div id="ressss" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">ressss</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cddddr%29%29">'cddddr'</a></i></p>
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

    <div id="pres" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">pres</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cadr%29%29">'cadr'</a></i></p>
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

    <div id="resp" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">resp</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cdar%29%29">'cdar'</a></i></p>
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
