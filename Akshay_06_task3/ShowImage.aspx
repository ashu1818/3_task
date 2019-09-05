<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowImage.aspx.cs" Inherits="Akshay_06_task3.ShowImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ImgId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                ImgId:
                <asp:Label ID="ImgIdLabel" runat="server" Text='<%# Eval("ImgId") %>' />
                <br />
                ImgName:
                <asp:Label ID="ImgNameLabel" runat="server" Text='<%# Eval("ImgName") %>' />
                <br />
                ImgUrl:
                <img height="100px" width="100px" src='<%#"Data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ImgUrl")) %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cartConnectionString %>" SelectCommand="SELECT * FROM [task_3]"></asp:SqlDataSource>
      
    </form>
</body>
</html>
