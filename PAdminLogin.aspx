﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LibOfAlex.Master" AutoEventWireup="true" CodeBehind="PAdminLogin.aspx.cs" Inherits="lib_of_alex.PAdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" method="post">
        <table class="base-table">
            <!-- username -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="uName">שם משתמש</label>
                </td>
                <td class="base-td">
                    <input type="text" id="uName" name="uName" />
                </td>
            </tr>
            <!-- password -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="password">סיסמה</label>
                </td>
                <td class="base-td">
                    <input type="password" id="password" name="password" />
                </td>
            </tr>
            <!-- submit -->
            <tr class="base-tr">
                <td colspan="2" class="base-td">
                    <input type="submit" value="התחבר.י" name="submit" />
                </td>
            </tr>
        </table>
    </form>

    <% =msg %>
</asp:Content>
