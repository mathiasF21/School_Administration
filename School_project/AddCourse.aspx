<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="School_project.AddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:<br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            Description:<br />
            <asp:TextBox ID="TextBox2" runat="server" Height="142px" OnTextChanged="TextBox2_TextChanged" Width="632px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add course" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
