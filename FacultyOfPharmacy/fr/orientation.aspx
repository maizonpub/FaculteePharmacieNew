﻿<%@ Page Title="" Language="C#" MasterPageFile="~/fr/fr.master" AutoEventWireup="true" CodeBehind="orientation.aspx.cs" Inherits="FacultyOfPharmacy.fr.orientation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="container">
					<h2 class="marTop4">Orientation</h2>
        <div class="row" style="margin-left:0px">
    <p><asp:Literal ID="enOrientation" runat="server" /></p>
    <%if(result.Count>0){ %>
    <h2 class="marTop4">Fiches</h2>
            <ul class="list1-1">
    <%for (int i = 0; i < result.Count;i++ )
      { %>
    <li><a href="../Media/<%=result[i].filename%>"><%=result[i].frtitle %></a></li>
    <%}%></ul><% }%>
            </div></div>
</asp:Content>
