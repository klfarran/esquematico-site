<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Port.aspx.cs" Inherits="scheme_traductor.Port" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <div class="jumbotron">
        <h1>port esquemático to other natural languages</h1>
     </div>

    <pre style="font-size: 20px;"> 
with a few text replacements, esquemático can become an interface for interacting with Scheme using keywords and 
recieving error messages in other natural lagnuages     

below is a list of Spanish keywords or phrases included in esquemático, alongside their English counterparts
in parenthesis. for each of these keywords or phrases, a translation must be determined for the target natural 
language to port esquemático to, and then a search and replace must ooccur across the each of the following files: 

        arithmetic-definitions.rkt
        conditional-definitions.rkt
        err-chcks.rkt
        helper-definitions.rkt
        keyword-definitions.rkt
        list-definitions.rkt
        string-definitions.rkt
        type-check-definitions.rkt
        
<i>(the files should be located in the folder C:\Program Files\Racket\collects, or you can download them <a class="link" href="https://github.com/klfarran/scheme-traductor/tree/main/esquematico">here</a>) </i>
    </pre>
        <hr />

     <pre style="font-size: 20px"> 
definir (define) -> _______
     </pre>

</div>

</asp:Content>
