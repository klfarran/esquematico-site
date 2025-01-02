<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Definiciones.aspx.cs" Inherits="scheme_traductor.Definiciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
   
    <div class="jumbotron">
        <h2>definiciones</h2>
        <h5 style="font-style:italic; font-weight:normal">estos procedimientos le permiten vincular valores a expresiones</h5>
    </div>
    
     <hr>

 <div id="definir" class="scrl">  

  <h3 style="margin-top:10px; margin-bottom:20px; text-indent:25px;">definir</h3>
<div>
   <p style=" text-indent: 55px; margin-bottom:-2px"><strong>(definir id expr) </strong></p>
      <p style="text-indent:75px; font-style:italic;">vincular el resultado de la evaluación de la expresión 'expr' al identificador 'id'</p> 
   <p style=" text-indent: 55px; margin-bottom:-2px"><strong>(definir (id args) cuerpo ...+) </strong> </p> 
        <p style="text-indent:75px; font-style:italic;">vincular el resultado de la evaluación del procedimiento que es la evaluación de 'cuerpo' dado los parámetros 'args' al identificador 'id'</p> 
</div>
    <pre>
        <span class="large">
                        La primera forma enlaza id al resultado de evaluar expr y la segunda forma enlaza id a un procedimiento, identificado por el identificador ‘id’ 

                        En un contexto de definición interna, una forma de definir introduce un enlace local. En el nivel superior, el enlace de nivel superior para id se 
                        crea después de evaluar expr, si no existe ya, y la asignación de nivel superior de id (en el espacio de nombres vinculado con la definición compilada) 
                        se establece al enlace al mismo tiempo 

                        En un contexto que permite la expansión liberal de definir, id está enlazado como sintaxis si expr es una forma lambda inmediata con argumentos de 
                        palabra clave argumentos o args </span>    
    <span class="bold">
             Ejemplos: </span>
  </pre>
   <pre><code class="language-scheme">
           
   (definir x 10)
    g-t x
    10

    (definir (f x) 
      (+ x 1)) 
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

    <h3 style="margin-top:10px; margin-bottom:20px; text-indent:25px;">rastrear</h3>

    <div>
       <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(rastrear id ...)</strong></p>
       <p style="text-indent:75px; font-style:italic;">rastrear el procedimiento vinculado al identificador 'id'</p> 
   </div>

	<pre>
                Cada id tiene que estar vinculado a un procedimiento en el entorno de la expresión de rastrear, y debe ser importado desde otro módulo. Cada id se establece
                usando ¡establezca! a un procedimiento que rastrea las llamadas al procedimiento y devuelve imprimiendo los argumentos y resultados de la llamada. Si se 
                devuelven varios valores, cada valor se muestra comenzando en una línea separada.

                La forma de rastrear se puede utilizar en un identificador que ya está rastreado. En este caso, suponiendo que el valor de la variable no ha sido cambiado,
                rastrear no tiene ningún efecto. Si la variable se ha cambiado a un procedimiento diferente, se instala un nuevo rastrear. 

                El resultado de una expresión de rastrear es #&lt;void&gt;

<span class="bold">
            Ejemplos:  </span>
</pre>
   <pre><code class="language-scheme">
    (definir ¿contiene-5?
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
         <h3 style="margin-top:10px; margin-bottom:20px; text-indent:25px;">rastrear-definir</h3>

        <div>
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(rastrear-definir id expr)</strong></p>
             <p style="text-indent:75px; font-style:italic;">create a binding which will always show the trace through the calls of the procedure bound to the identifier 'id'</p> 
           <p style=" text-indent: 50px; margin-bottom:2px;"><strong>(rastrear-definir (id args) cuerpo ...+)</strong></p>
             <p style="text-indent:75px; font-style:italic;">another option synactically for defining a procedure which will show show the trace through each of its calls every time it is invoked. the body of the 
                    procedure is defined by 'cuerpo', and the parameters by 'args'
             </p> 
       </div>

        <pre>
                El rastrear-definir es una abreviatura para definir primero un procedimiento y luego rastrearlo. Esta forma es compatible con todas las formas de definir. 

<span class="bold-italic">
            Ejemplos:  </span>
<span class="bold">
            (rastrear-definir ¿contiene-5?
               (lambda (lista)
                 (condición
                 ((¿nulo? lista) 'falso)
                 ((¿ig? (pri lista) 5)'cierto)
                 (sino (¿contiene-5? (res lista))) ))) </span>

                    (¿contiene-5? '(9 18 1 0 34 3 8 1 5))
                    g-t (¿contiene-5? (9 18 1 0 34 3 8 1 5))
                    g-t (¿contiene-5? (18 1 0 34 3 8 1 5))
                    g-t (¿contiene-5? (1 0 34 3 8 1 5))
                    g-t (¿contiene-5? (0 34 3 8 1 5))
                    g-t (¿contiene-5? (34 3 8 1 5))
                    g-t (¿contiene-5? (3 8 1 5))
                    g-t (¿contiene-5? (8 1 5))
                    g-t (¿contiene-5? (1 5))
                    g-t (¿contiene-5? (5))
                    < cierto
                    cierto

	</pre>

  </div>


    <hr>

    <div id="sea" class="scrl">

    </div>

     <hr>

    <div id="sea*" class="scrl">

    </div>

    <hr>

    <div id="¡establezca!" class="scrl">

    </div>

     <hr>

    <div id="cita" class="scrl">

    </div>

</div>

</asp:Content>
