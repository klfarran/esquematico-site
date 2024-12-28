<%@ Page Title="" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Definiciones.aspx.cs" Inherits="scheme_traductor.Definiciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <div id="definir">
    <div class="jumbotron">
        <h2>definiciones</h2>
    </div>

     <hr>

  <h3 style="margin-top:10px; margin-bottom:20px; text-indent:25px;">definir</h3>

   <p style=" text-indent: 50px;"><strong>(definir id expr) </strong></p>
   <p style=" text-indent: 50px;"><strong>(definir (id args) cuerpo ...+) </strong> </p> 

    <pre>
                La primera forma enlaza id al resultado de evaluar expr y la segunda forma enlaza id a un procedimiento, identificado por el identificador ‘id’ 

                En un contexto de definición interna, una forma de definir introduce un enlace local. En el nivel superior, el enlace de nivel superior para id se 
                crea después de evaluar expr, si no existe ya, y la asignación de nivel superior de id (en el espacio de nombres vinculado con la definición compilada) 
                se establece al enlace al mismo tiempo 

                En un contexto que permite la expansión liberal de definir, id está enlazado como sintaxis si expr es una forma lambda inmediata con argumentos de 
                palabra clave argumentos o args

<span class="bold-italic">
                    Ejemplos: </span>
        <span class="bold">              
                      (definir x 10) </span>
                         > x
                           10
        <span class="bold">
                      (definir (f x) 
                         (+ x 1)) </span>
                           > (f 10)
                             11
         <span class="bold"> 
                      (definir ¿más-5?
                        (lambda (lista)
                          (condición
                           ((más-de (longitud lista) 5) 'cierto)
                           (sino 'falso) ))) </span>
                  <span class="bold">   
                                (¿más-5? '(1 2 3)) </span>
                                  > falso
                 <span class="bold"> 
                                (¿más-5? '(1 2 3 4 5 6)) </span>
                                  > cierto
  </pre>
</div>
    <hr>

 <div id="rastrear">

    <h3 style="margin-top:10px; margin-bottom:20px; text-indent:25px;">rastrear</h3>

   <p style=" text-indent: 50px;"><strong>(rastrear id ...)</strong></p>

	<pre>
                Cada id tiene que estar vinculado a un procedimiento en el entorno de la expresión de rastrear, y debe ser importado desde otro módulo. Cada id se establece
                usando ¡establezca! a un procedimiento que rastrea las llamadas al procedimiento y devuelve imprimiendo los argumentos y resultados de la llamada. Si se 
                devuelven varios valores, cada valor se muestra comenzando en una línea separada.

                La forma de rastrear se puede utilizar en un identificador que ya está rastreado. En este caso, suponiendo que el valor de la variable no ha sido cambiado,
                rastrear no tiene ningún efecto. Si la variable se ha cambiado a un procedimiento diferente, se instala un nuevo rastrear. 

                El resultado de una expresión de rastrear es #&lt;void&gt;

<span class="bold-italic">
            Ejemplos:  </span>
<span class="bold">
                (definir ¿contiene-5?
                    (lambda (lista)
                      (condición
                       ((¿nulo? lista) 'falso)
                       ((¿ig? (pri lista) 5)'cierto)
                       (sino (¿contiene-5? (res lista))) )))
                 (rastrear ¿contiene-5?) </span>

                    > (¿contiene-5? '( 9 18 1 0 34 3 8 1 5))
                    >(¿contiene-5? (9 18 1 0 34 3 8 1 5))
                    >(¿contiene-5? (18 1 0 34 3 8 1 5))
                    >(¿contiene-5? (1 0 34 3 8 1 5))
                    >(¿contiene-5? (0 34 3 8 1 5))
                    >(¿contiene-5? (34 3 8 1 5))
                    >(¿contiene-5? (3 8 1 5))
                    >(¿contiene-5? (8 1 5))
                    >(¿contiene-5? (1 5))
                    >(¿contiene-5? (5))
                    < cierto
                    cierto
	</pre>


  </div>

</div>

</asp:Content>
