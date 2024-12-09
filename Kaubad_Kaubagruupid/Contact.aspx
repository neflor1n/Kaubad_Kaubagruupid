<%@ Page Title="Lisa uus kaup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Kaubad_Kaubagruupid.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1_kaubad" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:TemplateField HeaderText="kaubagrupi_id" SortExpression="kaubagrupi_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("kaubagrupi_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_kaubagrupid" DataTextField="grupinimi" DataValueField="id" SelectedValue='<%# Bind("kaubagrupi_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_kaubagrupid" runat="server" ConnectionString="<%$ ConnectionStrings:kaubadConnectionString1 %>" DeleteCommand="DELETE FROM [kaubagrupid] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubagrupid] ([grupinimi]) VALUES (@grupinimi)" SelectCommand="SELECT * FROM [kaubagrupid]" UpdateCommand="UPDATE [kaubagrupid] SET [grupinimi] = @grupinimi WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="grupinimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="grupinimi" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("kaubagrupi_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1_kaubad" runat="server" ConnectionString="<%$ ConnectionStrings:kaubadConnectionString1 %>" DeleteCommand="DELETE FROM [kaubad] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubad] ([nimetus], [kaubagrupi_id], [hind]) VALUES (@nimetus, @kaubagrupi_id, @hind)" SelectCommand="SELECT * FROM [kaubad]" UpdateCommand="UPDATE [kaubad] SET [nimetus] = @nimetus, [kaubagrupi_id] = @kaubagrupi_id, [hind] = @hind WHERE [id] = @id">
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

    
</asp:Content>
