<%@ Page Title="" Language="C#" MasterPageFile="~/LibOfAlex.Master" AutoEventWireup="true" CodeBehind="PAdminPage.aspx.cs" Inherits="lib_of_alex.PAdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .error {
            color: red;
        }

        table, td, tr, th {
            border: solid;
        }

        table {
            margin: auto auto /* centers the table */
        }

        .delete-button {
            width: 15px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% =content %>
</asp:Content>

