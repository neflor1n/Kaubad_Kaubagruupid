<%@ Page Title="Kaubad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Kaubad_Kaubagruupid.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Tabelite kaubad ja kaubagrupid sisu</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                <asp:BoundField DataField="grupinimi" HeaderText="grupinimi" SortExpression="grupinimi" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kaubadConnectionString1 %>" DeleteCommand="DELETE FROM [kaubad] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubad] ([nimetus], [kaubagrupi_id], [hind]) VALUES (@nimetus, @kaubagrupi_id, @hind)" SelectCommand="SELECT kaubad.nimetus, kaubad.hind, kaubagrupid.grupinimi FROM kaubad INNER JOIN kaubagrupid ON kaubad.kaubagrupi_id = kaubagrupid.id" UpdateCommand="UPDATE [kaubad] SET [nimetus] = @nimetus, [kaubagrupi_id] = @kaubagrupi_id, [hind] = @hind WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nimetus" Type="String" />
                <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                <asp:Parameter Name="hind" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nimetus" Type="String" />
                <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                <asp:Parameter Name="hind" Type="Decimal" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
