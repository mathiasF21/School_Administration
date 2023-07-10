<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="School_project.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome student.<br />
            <asp:Button ID="Button1" runat="server" Text="Enroll in a course" Width="227px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
