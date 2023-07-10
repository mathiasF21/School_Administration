<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="School_project.Connect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head runat="server">
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <form id="form1" runat="server">
            <p>
                Please enter your information.</p>
            <div>
                ID:<br />
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="309px"></asp:TextBox>
            </div>
                Password:<p>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="317px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Connect" />
            </p>
        </form>
    </body>
</html>
