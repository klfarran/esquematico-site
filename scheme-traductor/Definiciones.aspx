<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Definiciones.aspx.cs" Inherits="scheme_traductor.Definiciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>definiciones</h2>
        <h5 style="font-weight:normal">estos procedimientos le permiten vincular valores a expresiones</h5>
    </div>
    
     <hr>

 <div id="definir" class="scrl">  

    <div class="proctitle-div">
      <h3 class="procname">definir</h3>
        <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/define.html">'define'</a></i></p>
    </div>
<div>
   <p style="text-indent: 55px; margin-top:10px; margin-bottom:-2px;"><strong>(definir id expr) </strong></p>
      <p style="text-indent:75px; font-style:italic;">vincular el resultado de la evaluación de la expresión 'expr' al identificador 'id'</p> 
   <p style=" text-indent: 55px; margin-bottom:-2px"><strong>(definir (id args) cuerpo ...+) </strong> </p> 
        <p style="text-indent:75px; font-style:italic;">vincular el resultado de la evaluación del procedimiento que es la evaluación de 'cuerpo' dado los parámetros 'args' al identificador 'id'</p> 
</div>
    <pre>
        <span class="large">
                        la primera forma enlaza id al resultado de evaluar expr y la segunda forma enlaza id a un procedimiento, identificado por el identificador ‘id’ 

                        en un contexto de definición interna, una forma de definir introduce un enlace local. en el nivel superior, el enlace de nivel superior para id 
                        se crea después de evaluar expr, si no existe ya, y la asignación de nivel superior de id (en el espacio de nombres vinculado con la definición 
                        compilada) se establece al enlace al mismo tiempo 

                        en un contexto que permite la expansión liberal de definir, id está enlazado como sintaxis si expr es una forma lambda inmediata con 
                        argumentos de la palabra clave 'argumentos' o 'args' </span>    

    <span class="bold" style="font-size:18px">
       ejemplos: </span>
</pre>
   <pre><code class="language-scheme">
           
   (definir xx 10)
    g-t xx
    10

    (definir (f xx) 
      (+ xx 1)) 
    g-t (f 10)
    11
 
    (definir <span class="token function">¿más-5?</span>
      (lambda (lista)
         (condición
         ((más-de (longitud lista) 5) 'cierto)
          (sino 'falso) ))) 
 
    (¿más-5? '(1 2 3)) 
    g-t falso

    (¿más-5? '(1 2 3 4 5 6)) 
    g-t cierto
      </code></pre>

   </div>

    <hr>

 <div id="rastrear" class="scrl">

   
    <div class="proctitle-div">
       <h3 class ="procname">rastrear</h3>
        <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/debugging.html">'trace'</a></i></p>
    </div>

    <div>
       <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(rastrear id ...)</strong></p>
       <p style="text-indent:75px; font-style:italic;">rastrear el procedimiento vinculado al identificador 'id'</p> 
   </div>

	<pre>
         <span class="large">
                        rastrear proporciona una interfaz de depuración al mostrar el seguimiento a través de cada llamada recursiva al procedimiento
                
                        cada id tiene que estar vinculado a un procedimiento en el ámbito de la expresión de rastrear, y debe ser importado desde otro módulo.
                        cada id se establece usando ¡establezca! a un procedimiento que rastrea las llamadas al procedimiento y devuelve imprimiendo los 
                        argumentos y resultados de la llamada. Si se devuelven varios valores, cada valor se muestra comenzando en una línea separada

                        la forma de rastrear se puede utilizar en un identificador que ya está rastreado. en este caso, suponiendo que el valor de la variable no
                        ha sido cambiado, rastrear no tiene ningún efecto. si la variable se ha cambiado a un procedimiento diferente, se instala un nuevo rastrear 

                        el resultado de una expresión de rastrear es #&lt;void&gt; </span>

<span class="bold" style="font-size:18px">
      ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
  g-t (definir ¿contiene-5?
        (lambda (lista)
            (condición
            ((¿nulo? lista) 'falso)
            ((¿ig? (pri lista) 5)'cierto)
            (sino (¿contiene-5? (res lista))) )))
    (rastrear ¿contiene-5?) 

    g-t (¿contiene-5? '( 9 18 1 0 34 3 8 1 5))
    g-t (¿contiene-5? (9 18 1 0 34 3 8 1 5))
    g-t (¿contiene-5? (18 1 0 34 3 8 1 5))
    g-t (¿contiene-5? (1 0 34 3 8 1 5))
    g-t (¿contiene-5? (0 34 3 8 1 5))
    g-t (¿contiene-5? (34 3 8 1 5))
    g-t (¿contiene-5? (3 8 1 5))
    g-t (¿contiene-5? (8 1 5))
    g-t (¿contiene-5? (1 5))
    g-t (¿contiene-5? (5))
    l-tcierto
    cierto
	 </code></pre>


  </div>

    <hr>

    <div id="rastrear-definir" class="scrl">

        <div class="proctitle-div">
            <h3 class ="procname">rastrear-definir</h3>
            <p style="text-indent:450px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/debugging.html#%28form._%28%28lib._racket%2Ftrace..rkt%29._trace-define%29%29">'trace-define'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(rastrear-definir id expr)</strong></p>
             <p style="text-indent:75px; font-style:italic;">crea un enlace que siempre mostrará el seguimiento a través de las llamadas del procedimiento enlazado al identificador 'id'</p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(rastrear-definir (id args) cuerpo ...+)</strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;">otra opción sintáctica para definir un procedimiento que mostrará el seguimiento a través de cada una de sus llamadas cada vez que se invoque.</p>
             <p style="text-indent:75px; font-style:italic;"> el cuerpo del procedimiento está definido por 'cuerpo', y los parámetros por 'args'</p> 
       </div>

        <pre>
             <span class="large">
                        el rastrear-definir es una abreviatura para definir primero un procedimiento y luego rastrearlo. cada vez que se invoca el procedimiento, se
                        muestra el seguimiento. esta forma es compatible con todas las formas de definir  </span>

<span class="bold" style="font-size:18px">
      ejemplos:  </span>  </pre>
   <pre><code class="language-scheme">
   g-t (rastrear-definir ¿contiene-5?
        (lambda (lista)
            (condición
            ((¿nulo? lista) 'falso)
            ((¿ig? (pri lista) 5)'cierto)
            (sino (¿contiene-5? (res lista))) ))) 

   g-t (¿contiene-5? '(9 18 1 0 34 3 8 1 5))
    g-t (¿contiene-5? (9 18 1 0 34 3 8 1 5))
    g-t (¿contiene-5? (18 1 0 34 3 8 1 5))
    g-t (¿contiene-5? (1 0 34 3 8 1 5))
    g-t (¿contiene-5? (0 34 3 8 1 5))
    g-t (¿contiene-5? (34 3 8 1 5))
    g-t (¿contiene-5? (3 8 1 5))
    g-t (¿contiene-5? (8 1 5))
    g-t (¿contiene-5? (1 5))
    g-t (¿contiene-5? (5))
    l-tcierto
    cierto
         </code></pre>

  </div>

    <hr>

    <div id="sea" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">sea</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/let.html">'let'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(sea ([id val] ...) cuerpo ...+)</strong></p>
             <p style="text-indent:75px; font-style:italic;">crea un enlace local del valor 'val' al identificador 'id' que está limitado al alcance del procedimiento actual, como se describe en 'cuerpo'</p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(sea id-de-proc ([id val] ...) cuerpo ...+)</strong></p>
             <p style="text-indent:75px; font-style:italic; margin-bottom:2px;"></p>
       </div>

        <pre>
             <span class="large">     
                        la primera forma evalúa los val de izquierda a derecha, crea una nueva ubicación para cada id, y coloca los valores en las ubicaciones
                        a continuación, evalúa los cuerpos, en los que los id están vinculados. los id tienen que ser distintos 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (sea ([xx 5]) xx)
 5

 g-t (sea ([xx 5])
       (sea ([xx 2]
             [y xx])
         (lista yy xx)))
 (5 2)
         </code></pre>

    </div>

     <hr>

    <div id="sea*" class="scrl">

        <div class="proctitle-div">
            <h3 class ="procname">sea*</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/let.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._let%2A%29%29">'let*'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(sea* ([id val-expr] ...) cuerpo ...+)</strong></p>
             <p style="text-indent:75px; font-style:italic;">de esta forma, las enlaces se crean secuencialmente, por lo que los enlaces anteriores se pueden utilizar en los enlaces de definiciones que siguen</p> 
       </div>

        <pre>
             <span class="large">     
                        similar a <a class="link" href="#sea">sea</a>, pero evalúa los val-expr uno por uno, creando una ubicación para cada id tan pronto como el valor esté disponible

                        los id están enlazados en los valexpr restantes, así como en los cuerpos, y los id no necesitan ser distintos; los enlaces posteriores 
                        sombrean los enlaces anteriores
             </span>
<span class="bold" style="font-size:18px">
       ejemplo:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (sea* ([xx 1]
         [y (+ xx 1)])
         (lista yy xx))

 (2 1)
         </code></pre>

    </div>

    <hr>

    <div id="¡establezca!" class="scrl">

        <div class="proctitle-div">
            <h3 class ="procname">¡establezca!</h3>
            <p style="text-indent:550px;"><i>consulte la documentación original de Racket para <a class="link" href="https://docs.racket-lang.org/reference/set_.html">'set!'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(¡establezca! id expr)</strong></p>
             <p style="text-indent:75px; font-style:italic;">establecer que 'id' está enlazado al valor de 'expr'</p> 
       </div>

        <pre>
             <span class="large">     
                        evalúa expr e instala el resultado en la ubicación de id, que tiene que estar enlazado como una variable local o definido como una variable de 
                        nivel superior. si id se refiere a un enlace importado, se informa de un error de sintaxis. Si id se refiere a una variable de nivel superior
                        que no se ha definido, se genera una excepción 
             </span>
<span class="bold" style="font-size:18px">
       ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
g-t (definir xx 3)
g-t xx 
 3 
g-t (¡establezca! xx 4)
g-t xx
 4

 g-t (definir yy 12)
 g-t (¡establezca! yy (más 1 yy))
 g-t yy
 13

 g-t (sea ([zz 5])
     (¡establezca! zz (más 1 zz)) zz)
 6

 </code></pre>

    </div>

</div>

</asp:Content>
