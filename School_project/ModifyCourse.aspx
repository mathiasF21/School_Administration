<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyCourse.aspx.cs" Inherits="School_project.ModifyCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Course Id:<br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            New description:<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="104px" OnTextChanged="TextBox1_TextChanged" Width="524px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirm change" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
