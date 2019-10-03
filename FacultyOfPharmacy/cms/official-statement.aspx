﻿<%@ Page Title="" Language="C#" MasterPageFile="~/cms/cms.Master" AutoEventWireup="true" CodeBehind="official-statement.aspx.cs" Inherits="FacultyOfPharmacy.cms.official_statement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">

<script type="text/javascript">
    $(function () {
        $(".box .h_title").not(this).next("ul").hide("normal");
        $(".box .h_title").not(this).next("#about_us").show("normal");
        $(".box").children(".h_title").click(function () { $(this).next("ul").slideToggle(); });
    });
</script>
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
  <script src="colorbox/colorbox.js" type="text/javascript"></script>
  <link rel="stylesheet" href="colorbox/colorbox.css" />
<script>
    $(document).ready(function () {
        //Examples of how to assign the ColorBox event to elements
        $(".group1").colorbox({ rel: 'group1' });
        $(".group2").colorbox({ rel: 'group2', transition: "fade" });
        $(".group3").colorbox({ rel: 'group3', transition: "none", width: "75%", height: "75%" });
        $(".group4").colorbox({ rel: 'group4', slideshow: true });
        $(".ajax").colorbox();
        $(".youtube").colorbox({ iframe: true, innerWidth: 425, innerHeight: 344 });
        $(".iframe").colorbox({ iframe: true, width: "90%", height: "90%" });
        $(".inline").colorbox({ inline: true, width: "50%" });
        $(".callbacks").colorbox({
            onOpen: function () { alert('onOpen: colorbox is about to open'); },
            onLoad: function () { alert('onLoad: colorbox has started to load the targeted content'); },
            onComplete: function () { alert('onComplete: colorbox has displayed the loaded content'); },
            onCleanup: function () { alert('onCleanup: colorbox has begun the close process'); },
            onClosed: function () { alert('onClosed: colorbox has completely closed'); }
        });

        //Example of preserving a JavaScript event for inline calls.
        $("#click").click(function () {
            $('#click').css({ "background-color": "#f00", "color": "#fff", "cursor": "inherit" }).text("Open this window again and this message will still be here.");
            return false;
        });
    });

		</script>
  
  
  <script type="text/javascript" src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
  <script type='text/javascript'>//<![CDATA[
      $(window).load(function () {
          var fixHelperModified = function (e, tr) {
              var $originals = tr.children();
              var $helper = tr.clone();
              $helper.children().each(function (index) {
                  $(this).width($originals.eq(index).width())
              });
              return $helper;
          },
    updateIndex = function (e, ui) {
        $('td.index', ui.item.parent()).each(function (i) {
            $(this).html(i + 1);
            $.ajax({
                url: "update-sorting.aspx?table=official_statements&id=" + $(this).html(i + 1)[0].parentNode.cells[0].id + "&sort=" + $(this).html(i + 1)[0].parentNode.cells[0].innerHTML,
                type: "GET"
            });
        });
    };

          $("#sort tbody").sortable({
              helper: fixHelperModified,
              stop: updateIndex
          }).disableSelection();
      });//]]>  

</script>
<form id="Form1" runat="server">
<h1>Official statement</h1>
<div style="width:65%;text-align:right;margin-left:357px"><a href="add-official-statement.aspx?action=add" class="iframe"><img src="img/i_add.png" /></a></div>
<table id="sort" class="grid" style="width:75%">

    <thead >
        <tr><th class="index">Order</th><th>ID</th><th>Title</th><th>Description</th><th>&nbsp;</th></tr>
    </thead>
    <tbody>
    <%foreach (Utils.CMSGetOfficialStatementResult row in result)
      { %>
        <tr><td class="index" id="<%=row.id %>"><%=row.sort%></td><td><%=row.id %></td><td><%=row.title%></td><td><%=row.description.Length>200?row.description.Substring(0,200)+"...":row.description%></td><td><%if (Session["User"] != null)
                                                                                                                                                                                  { %><a href="add-official-statement.aspx?action=edit&id=<%=row.id %>" class="iframe"><img src="img/i_edit.png" title="Edit" /></a>&nbsp;&nbsp;<a href="javascript:void()" onclick="if(confirm('Are you sure you want to delete this row?')==true){window.location.href='delete-table.aspx?id=<%=row.id %>&table=official_statements&redirect_url=official-statement.aspx'}"><img src="img/i_delete.png" title="Delete" /></a><%} %></td></tr>
        <%} %>
    </tbody>
</table>
</form>
</asp:Content>
