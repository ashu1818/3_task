<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="img.aspx.cs" Inherits="Akshay_06_task3.img" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="name" runat="server" placeholder="name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload runat="server" ID="imgUpload" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
