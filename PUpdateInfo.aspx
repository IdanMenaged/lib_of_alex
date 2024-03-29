﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LibOfAlex.Master" AutoEventWireup="true" CodeBehind="PUpdateInfo.aspx.cs" Inherits="lib_of_alex.PUpdateInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        /**
         * formData should be a FormData Object
         */
        function isValidForm(formData) {
            let isValid = true;
            if (!isValidPassword(formData.get('password'))) {
                isValid = false;
            }
            if (!isValidFirstName(formData.get('fName'))) {
                isValid = false;
            }
            if (!isValidLastName(formData.get('lName'))) {
                isValid = false;
            }
            return isValid;
        }

        function handleSubmit(event) {
            const form = event.target;
            const formData = new FormData(form);

            if (isValidForm(formData)) {
                console.log('submitted');
            }
            else {
                event.preventDefault(); // so that page is not refreshed and feedback could be shown
                console.log('could not submit');
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" onsubmit="return handleSubmit(event)">
        <table class="base-table">
            <!-- username, cannot be changed -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="uName">שם משתמש</label>
                </td>
                <td class="base-td">
                    <input type="text" disabled="disabled" id="uName" value="<% =uName %>" />
                </td>
                <!-- feedback -->
                <td class="base-td feedback" id="usernameFeedback"></td>
            </tr>
            <!-- first name -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="fName">שם פרטי</label>
                </td>
                <td class="base-td">
                    <input type="text" id="fName" name="fName" value="<% =fName %>"/>
                </td>
                <!-- feedback -->
                <td class="base-td feedback" id="firstNameFeedback"></td>
            </tr>
            <!-- last name -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="lName">שם משפחה</label>
                </td>
                <td class="base-td">
                    <input type="text" id="lName" name="lName" value="<% =lName %>"/>
                </td>
                <!-- feedback -->
                <td class="base-td feedback" id="lastNameFeedback"></td>
            </tr>
            <!-- email -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="email">אימייל</label>
                </td>
                <td class="base-td">
                    <input id="email" name="email" type="email" value="<% =email %>"/>
                </td>
                <!-- feedback -->
                <td class="base-td feedback" id="emailFeedback"></td>
            </tr>
            <!-- password -->
            <tr class="base-tr">
                <td class="base-td">
                    <label for="password">סיסמה</label>
                </td>
                <td class="base-td">
                    <input id="password" name="password" type="password" value="<% =password %>"/>
                </td>
                <!-- feedback -->
                <td class="base-td feedback" id="passwordFeedback"></td>
            </tr>
            <!-- submit -->
            <tr class="base-tr">
                <td class="base-td" colspan="2">
                    <input name="submit" type="submit" value="שלח.י" />
                </td>
            </tr>
        </table>
    </form>

    <% =msg %>
</asp:Content>
