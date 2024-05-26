<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="konfiguracja.aspx.cs" Inherits="projekt.konfiguacja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="description" content="Strona główna">
<meta name="author" content="Jakub Kasperczak">
<link rel="stylesheet" href="style.css">
    <title>Konfiguracja</title>
</head>
<body>
    <h1>
        Konfiguracja
    </h1>

    <div class = "button_bar">
        <div class="button">
            <a href="default.aspx">Home</a>
        </div>
   </div>
    <div class ="content">
        <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Grupy] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Grupy] ([NazwaGrupy]) VALUES (@NazwaGrupy)" SelectCommand="SELECT * FROM [Grupy]" UpdateCommand="UPDATE [Grupy] SET [NazwaGrupy] = @NazwaGrupy WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NazwaGrupy" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NazwaGrupy" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="NazwaGrupy" HeaderText="NazwaGrupy" SortExpression="NazwaGrupy" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Grupy] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Grupy] ([NazwaGrupy]) VALUES (@NazwaGrupy)" SelectCommand="SELECT * FROM [Grupy] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Grupy] SET [NazwaGrupy] = @NazwaGrupy WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NazwaGrupy" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NazwaGrupy" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="NazwaGrupy" HeaderText="NazwaGrupy" SortExpression="NazwaGrupy" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Produkty]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" datasourceid="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="NazwaProduktu" HeaderText="NazwaProduktu" SortExpression="NazwaProduktu" />
                    <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
                    <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
                    <asp:BoundField DataField="AdresWWW" HeaderText="AdresWWW" SortExpression="AdresWWW" />
                    <asp:BoundField DataField="Ilosc" HeaderText="Ilosc" SortExpression="Ilosc" />
                    <asp:BoundField DataField="IdGrupy" HeaderText="IdGrupy" SortExpression="IdGrupy" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produkty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produkty] ([NazwaProduktu], [Cena], [Opis], [AdresWWW], [Ilosc], [IdGrupy]) VALUES (@NazwaProduktu, @Cena, @Opis, @AdresWWW, @Ilosc, @IdGrupy)" SelectCommand="SELECT * FROM [Produkty] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Produkty] SET [NazwaProduktu] = @NazwaProduktu, [Cena] = @Cena, [Opis] = @Opis, [AdresWWW] = @AdresWWW, [Ilosc] = @Ilosc, [IdGrupy] = @IdGrupy WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NazwaProduktu" Type="String" />
                    <asp:Parameter Name="Cena" Type="Double" />
                    <asp:Parameter Name="Opis" Type="String" />
                    <asp:Parameter Name="AdresWWW" Type="String" />
                    <asp:Parameter Name="Ilosc" Type="Int32" />
                    <asp:Parameter Name="IdGrupy" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NazwaProduktu" Type="String" />
                    <asp:Parameter Name="Cena" Type="Double" />
                    <asp:Parameter Name="Opis" Type="String" />
                    <asp:Parameter Name="AdresWWW" Type="String" />
                    <asp:Parameter Name="Ilosc" Type="Int32" />
                    <asp:Parameter Name="IdGrupy" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" datasourceid="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="NazwaProduktu" HeaderText="NazwaProduktu" SortExpression="NazwaProduktu" />
                    <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
                    <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
                    <asp:BoundField DataField="AdresWWW" HeaderText="AdresWWW" SortExpression="AdresWWW" />
                    <asp:BoundField DataField="Ilosc" HeaderText="Ilosc" SortExpression="Ilosc" />
                    <asp:BoundField DataField="IdGrupy" HeaderText="IdGrupy" SortExpression="IdGrupy" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <br />
        </form>
    </div>
</body>
</html>
