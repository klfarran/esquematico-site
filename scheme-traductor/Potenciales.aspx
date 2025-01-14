<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Potenciales.aspx.cs" Inherits="scheme_traductor.Potenciales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>potenciales</h2>
        <h5 style="font-weight:normal">evaluar condiciones para determinar si son ciertos o falsos y realizar operaciones en función del resultado</h5>
    </div>
    
     <hr>

     <div id="cierto" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">cierto</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/guide/booleans.html">'#t'</a></i></p>
        </div>

        <pre>
             <span class="large">     
                cierto es el valor booleano de verdad devuelto si un procedimiento o valor se evalúa como cierto  
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (¿ig? 2 (más 1 1))
 cierto

 g-t (¿booleano? cierto)
cierto

 g-t (¿booleano? falso)
cierto

 g-t (¿booleano? "no")
falso

g-t (o cierto falso)
cierto

 g-t (y cierto falso)
falso

 g-t (si "no" 1 0)
0
         </code></pre>

    </div>

     <hr>

    <div id="falso" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">falso</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/guide/booleans.html">'#f'</a></i></p>
        </div>

        <pre>                 
<span class="large">          falso es el valor booleano de verdad devuelto si un procedimiento o valor se evalúa como falso
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (¿ig? 2 (más 1 1))
 cierto

 g-t (¿booleano? cierto)
cierto

 g-t (¿booleano? falso)
cierto

 g-t (¿booleano? "no")
falso

g-t (o cierto falso)
cierto

 g-t (y cierto falso)
falso

 g-t (si "no" 1 0)
0
         </code></pre>

    </div>

     <hr>

    <div id="si" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">si</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/reference/if.html">'if'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;">(<strong>si</strong> expr-de-prueba entonces-expr sino-expr)</p>
           <p style="text-indent:75px; font-style:italic;">si la expresión de prueba se evalúa como verdadera, evalúa la 'entonces-expr'; de lo contrario, evalúa la 'sino-expr'</p> 
       </div>

        <pre>
             <span class="large">     
                        evalúa la expr-de-prueba. si produce cualquier valor otro distinto de 'falso', se evalúa entonces-expr, y sus resultados son el resultado de  
                        la condición 'si'. de lo contrario, se evalúa sino-expr, y sus resultados son el resultado de la condición 'si'. la entcones-expr y la sino-expr 
                        están en posición de cola con respecto a la condición 'si'

             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (si (¿positivo? -5) 1 2)
 2

 g-t (si (¿positivo? 5) 1 2)
 1

 g-t (si 'no-hay-plátanos "sí" "no")
"no"
         </code></pre>

    </div>

     <hr>

    <div id="condición" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">condición</h3>
            <p style="text-indent:600px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/reference/if.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._cond%29%29">'cond'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:15px;">(<strong>condición</strong> <i>cláusula-condicional</i> ...)</p>
             <p style="text-indent:80px; margin-bottom:2px;"><i>cláusula-condicional</i> = [<i>expr-de-prueba cuerpo-de-entonces-expr</i> ...+] </p> 
             <p style="text-indent:243px;">[sino <i>cuerpo-de-entonces-expr</i>]</p>
       </div>

        <pre>
             <span class="large">     
                            una <i>cláusula-condicional</i> que comienza con <i>sino</i> debe ser la última <i>cláusula-condicional</i>
                        
                            si no hay cláusulas condicionales, el resultado es #&lt;void&gt;

                            se evalúa la primera <i>expr-de-prueba</i>. si produce <i>falso</i>, el resultado es el mismo que una forma de <i>condición</i>
                            con solo las cláusulas condicionales restantes, en posición de cola con respecto a la forma cond original 

                            si solo hay una [sino <i>cuerpo-de-entonces-expr</i>], se evalúa la <i>cuerpo-de-entonces-expr</i>. los resultados de la 
                            <i>cuerpo-de-entonces-expr</i>, que está en posición de cola con respecto a la forma condición, son los resultados de toda 
                            la forma condición
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
 g-t (condición)

 g-t (condición
    [sino 5])
 5

g-t (condición
    [(¿positivo? 5) 'aquí]
    [(¿cero? -5) (error "no llega aquí")]
    [(¿positivo? 5) (error "tampoco no llega aquí")])
aaquí

 g-t (condición
    [(¿positivo? -5) (error "no llega aquí")]
    [(¿cero? -5) (error "tampoco llega aquí")]
    [(¿positivo? 5) 'aquí])
 aaquí

g-t (definir número-máximo
  (lambda (xx yy)
    (condición
      ((más-de xx yy) xx)
      ((¿ig? xx yy) (error "no hay un número máximo"))
      (sino yy))))

g-t (número-máximo 1 2)
 2

g-t (número-máximo 2 1)
 2

g-t (número-máximo 1 1)
nno hay un número máximo
         </code></pre>

    </div>

     <hr>

    <div id="sino" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">sino</h3>
            <p style="text-indent:700px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/reference/if.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._else%29%29">'else'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><i>(condición</i></p>
           <p style=" text-indent: 60px; margin-bottom:2px;"> . . .</p>
           <p style=" text-indent: 60px; margin-bottom:2px; font-size:16px;">(<strong>sino</strong> <i>expr</i>)</p>
       </div>

        <pre>
             <span class="large">     
                     reconocido solo dentro de la forma <i>condición</i>. sino como una expresión fuera de una forma de <i>condición</i> no existe
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
g-t (definir número-máximo
  (lambda (xx yy)
    (condición
      ((más-de xx yy) xx)
      ((¿ig? xx yy) (error "no hay un número máximo"))
      (sino yy))))

g-t (número-máximo 1 2)
 2 
         </code></pre>

    </div>

     <hr>

    <div id="y" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">y</h3>
            <p style="text-indent:750px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/reference/if.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._and%29%29">'and'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;">(<strong>y</strong> <i>expr</i>, ...)</p>
       </div>

        <pre>
             <span class="large">     
                        si solo hay una <i>expr</i>, entonces está en posición de cola, por lo que los resultados de la expresión <i>y</i> son los resultados de la <i>expr</i>

                        de lo contrario, se evalúa la primera <i>expr</i>. si produce <i>falso</i>, el resultado de la expresión <i>y</i> es <i>falso</i>. si no, el resultado es el mismo 
                        que una expresión <i>y</i> con las expr restantes en posición de cola con respecto al original expresión <i>y</i>
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
g-t (y 1)
 1

g-t (y cierto falso)
 falso
 
g-t (y cierto 5)
 5

g-t (y falso 5)
falso
         </code></pre>

    </div>

     <hr>

    <div id="o" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">o</h3>
            <p style="text-indent:750px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/reference/if.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._or%29%29">'or'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;">(<strong>o</strong> <i>expr</i>, ...)</p>
       </div>

        <pre>
             <span class="large">     
                        si solo hay una <i>expr</i>, entonces está en posición de cola, por lo que los resultados de la expresión <i>o</i> son los resultados de la <i>expr</i>
        
                        de lo contrario, se evalúa la primera <i>expr</i>. si produce un valor distinto de <i>falso</i>, el resultado es el resultado de la expresión <i>or</i>. si no, 
                        el resultado es el mismo que una expresión <i>or</i> con las expr restantes en posición de cola con respecto al original expresión <i>o</i>
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
g-t (o 1)
 1

g-t (o cierto falso)
 cierto

g-t (o falso falso)
 falso

g-t (o cierto 5)
 cierto

g-t (o falso 5)
 falso
         </code></pre>

    </div>

     <hr>

     <div id="¿falso?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿falso?</h3>
            <p style="text-indent:650px;"><i>consulte la documentación original de Racket para <a style="text-decoration:none" href="https://docs.racket-lang.org/reference/booleans.html#%28def._%28%28lib._racket%2Fbool..rkt%29._false~3f%29%29">'false?'</a></i></p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;">(<strong>¿falso?</strong> v) → boolean?</p>
       </div>

        <pre>
             <span class="large">     
                        devuelve lo opuesto a v (valor booleano) 
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
g-t (¿falso? 5)
 falso

g-t (¿falso? falso)
 cierto

g-t (¿falso? cierto)
 falso

g-t (¿falso? (y cierto falso))
 cierto

g-t (¿falso? (o cierto falso))
 falso
         </code></pre>

    </div>

     <hr>

     <div id="¿cierto?" class="scrl">
            
           <div class="proctitle-div">
            <h3 class ="procname">¿cierto?</h3>
            <p style="text-indent:575px;"><i>este procedimiento no existe en la versión original de Racket</p>
        </div>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;">(<strong>¿cierto?</strong> v) → boolean?</p>
       </div>

        <pre>
             <span class="large">     
                        devuelve <i>cierto</i> si v se evalúa como cierto, falso en caso contrario
             </span>
<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">


         </code></pre>

    </div>

</div>

</asp:Content>
