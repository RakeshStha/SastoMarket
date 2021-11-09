<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="SastoMarket.Admin_Profile.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="text-center">Total Order requests</h1>
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="oid" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="oid" InsertVisible="False" ReadOnly="True" SortExpression="oid" />
                    <asp:BoundField DataField="order_date" HeaderText="order_date" SortExpression="order_date" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_type" HeaderText="product_type" SortExpression="product_type" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="user_names" HeaderText="user_names" SortExpression="user_names" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="total_price" HeaderText="total_price" SortExpression="total_price" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [orders] WHERE [oid] = @oid" InsertCommand="INSERT INTO [orders] ([order_date], [product_name], [product_type], [price], [user_names], [quantity], [total_price], [status]) VALUES (@order_date, @product_name, @product_type, @price, @user_names, @quantity, @total_price, @status)" SelectCommand="SELECT * FROM [orders]" UpdateCommand="UPDATE [orders] SET [order_date] = @order_date, [product_name] = @product_name, [product_type] = @product_type, [price] = @price, [user_names] = @user_names, [quantity] = @quantity, [total_price] = @total_price, [status] = @status WHERE [oid] = @oid">
                <DeleteParameters>
                    <asp:Parameter Name="oid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="order_date" Type="String" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_type" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="user_names" Type="String" />
                    <asp:Parameter Name="quantity" Type="String" />
                    <asp:Parameter Name="total_price" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="order_date" Type="String" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_type" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="user_names" Type="String" />
                    <asp:Parameter Name="quantity" Type="String" />
                    <asp:Parameter Name="total_price" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="oid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </div>
</div>
</asp:Content>
