<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyFinalGrade.aspx.cs" Inherits="School_project.ModifyFinalGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Student Id:<br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="209px"></asp:TextBox>
            <br />
            Final Grade:<br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="214px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Assign" Width="147px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
