<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="scheme_traductor.Home" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="sitestyles.css"/>

<div class="eng-main-content">
    <div class="jumbotron">
        <h1>eschemático!</h1>
    </div>

           <pre style="font-size: 20px;"> 
     <i>eschemático</i> is an extension of the functional programming language <a style="text-decoration:none" href="https://www.scheme.org/">Scheme </a>which allows users to interact with built-in
     Scheme procedures in Spanish. users can call built-in procedures using Spanish keywords in place of the traditional English 
     keywords, and if there is an error in syntax or logic, recieve an appropriate error message in Spanish as well.        
           
     <i>eschemático</i> is a Racket collection intended for use with Dr. Racket IDE  which is you can download <a style="text-decoration:none" href="https://download.racket-lang.org/">here</a>. it is comprised of 
     a series of Racket <a style="text-decoration:none" href="https://docs.racket-lang.org/guide/macros.html">macros</a> that act as a hidden layer in the Dr. Racket IDE, interpreting Spanish user input and appropraitely
     calling the corresponding English procedure or throwing a relevant error message in Spanish. 

     this collection does not provide support for every procedure belonging to the Scheme/ Racket language. please see the 
     <a style="text-decoration:none" runat="server" href="~/Documentación">documentation</a> to view the procedures available for use in Spanish. this collection is intended for use by Spanish speakers,
     and documentation in English is limited. 

    in order to use the procedures available with <i>eschemático</i>, these two lines must appear at the top of every .rkt file: </pre>  
    <pre><code class="language-scheme">
    #lang scheme
    (require scheme-traductor/scheme-traductor) 
    </code></pre>

           <pre style="font-size: 20px;"> 

     here is an example of how this collection uses Racket macros to extend Scheme. the Spanish equivalent of the fundamental 
     procedure <i>define</i> is 'definir', used in the same manner as <i>define</i> would be, like so: </pre>
        <pre><code class="language-scheme">
  g-t (definir replacee ; replace every occurence of 'x' in the list 'lis' with 'z'
    (lambda (liss xx z)
      (condición
        ((¿nulo? liss) '())
        ((y (¿átomo? (pri liss)) (¿ig? (pri liss) xx)) (combinar zz (replacee(res liss) xx zz)))
        ((¿átomo? (pri liss)) (combinar (pri liss) (replacee (res liss) xx zz)))
        (sino (combinar (replacee (pri liss) xx zz) (replacee (res liss) xx zz))) )))
        </code></pre> 

         <pre style="font-size: 20px;"> 

     here is the macro which appropraitely interprets 'definir' </pre>
        <pre><code class="language-scheme">
(define-syntax definir
  (lambda (stx)
    (syntax-case stx ()
      ;CASE 1-  (define (id args) body ... +)
       [(_ (sym . params) expr)
       (if (not (identifier? #'sym)) ; ensure sym si a valid identifier
           (error (string-append "\n definir: el primer argumento debe ser un identificador\noccurido en: " (format "~a" (syntax->datum #'sym))))     
       #'(define sym
               (lambda args                 
                   ; add arity-check as the first line in any procedure defined using definir 
                   (arity-check (count-args args) (count-args (syntax->datum #'params)) (symbol->string 'sym)) 
                    ;'execute' procedure with given args 'args' as a lambda expression 
                   (apply (lambda params expr) args) )))]  
      ;CASE 2- (define id expr)
      [(_ sym expr)
       (if (not (identifier? #'sym)) ; ensure sym is a valid identifier
           (error (string-append "\n definir: el primer argumento debe ser un identificador\noccurido en: " (format "~a" (syntax->datum #'sym))))
       (if (identifier? #'expr) ; expr can't be an identifier- can't bind an identifier to an identifier
           (error (string-append "\n  definir: no se puede enlazar un identificador a un identificador\n el segundo argumento debe ser un valor\noccurido en: " (format "~a" (syntax->datum #'expr))))     
           ;CASE 2a- check if expr is a lambda expression
              (if (and (pair? (syntax->datum #'expr)) (eq? (car (syntax->datum #'expr)) 'lambda))
             #'(define sym
                 (lambda args                 
                   (let* ((lambda-body (syntax->datum #'expr))   ; get body of lambda expr by converting the syntax object expr to a datum
                          (params (car (cdr lambda-body))) )      ; get parameters (as datum now) from lambda expression (desired args)
                   ; add arity-check as the first line in any procedure defined using definir 
                   (arity-check (count-args args) (count-args params) (symbol->string 'sym)) 
                   ;actually bind the expr to sym
                     (define proc expr)
                     (apply proc args)  )))
             ;CASE 2b- expr is not lambda expression- bind normally
                   #'(define sym expr)))) ]
      ;CASE 3- given any number of parameters that is not what was expected
      [(_ sym) ;given 1 param only
       (error "\n definir: se esperaba dos argumentos: un símbolo y una expresión")]
      [(_ sym ...) ;given 1+ params (and 2 params was already 'caught' above)
       (error "\n definir: se esperaba dos argumentos: un símbolo y una expresión")]
      ;CASE 4- given any other (incorrect) form
      [_  
       (error "\n  definir: sintaxis no válida")])))

        </code></pre> 
                            
    </div>    
</asp:Content>
