<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCourse.aspx.cs" Inherits="School_project.DeleteCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Course Id:<br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Delete course" Width="187px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
