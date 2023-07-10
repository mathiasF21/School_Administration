<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instructor.aspx.cs" Inherits="School_project.Instructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome Instructor<br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add a course" Width="222px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Modify course" Width="221px" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Delete course" Width="219px" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Assign final grade" Width="216px" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
