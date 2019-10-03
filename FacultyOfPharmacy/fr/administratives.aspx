﻿<%@ Page Title="" Language="C#" MasterPageFile="~/fr/fr.master" AutoEventWireup="true" CodeBehind="administratives.aspx.cs" Inherits="FacultyOfPharmacy.fr.administratives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    
    <div class="container">
					<h2 class="marTop4">Corps administratifs</h2>
					<div class="row" style="margin-left:0px">

						
                            <%foreach(var row in result){ %>
                        <div class="grid_3">
							<div class="wrapper marTop9">
								<h3><a href="administratives-details.aspx?administrativesId=<%=row.id %>" class="link2" style="color:black"><%=row.frname %></a></h3>
								<%if(!string.IsNullOrEmpty(row.icon)){ %>
    <img src="../Media/<%=row.icon %>" style="height:150px;margin-top:5px"/>
    <%} %>
								<p class="txt7"><a href="administratives-details.aspx?administrativesId=<%=row.id %>">Plus d'info</a></p>
							</div></div>
                            <%} %>


					</div>

				</div>
</asp:Content>
