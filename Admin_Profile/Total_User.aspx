<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeFile="Total_User.aspx.cs" Inherits="SastoMarket.Admin_Profile.Total_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="text-center">Total Users</h1>
        <p class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="uid" HeaderText="uid" InsertVisible="False" ReadOnly="True" SortExpression="uid" />
                    <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="entry_Date" HeaderText="entry_Date" SortExpression="entry_Date" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [user_account] WHERE [uid] = @uid" InsertCommand="INSERT INTO [user_account] ([fullname], [username], [phone], [email], [country], [address], [dob], [role], [password], [entry_Date]) VALUES (@fullname, @username, @phone, @email, @country, @address, @dob, @role, @password, @entry_Date)" SelectCommand="SELECT * FROM [user_account]" UpdateCommand="UPDATE [user_account] SET [fullname] = @fullname, [username] = @username, [phone] = @phone, [email] = @email, [country] = @country, [address] = @address, [dob] = @dob, [role] = @role, [password] = @password, [entry_Date] = @entry_Date WHERE [uid] = @uid">
                <DeleteParameters>
                    <asp:Parameter Name="uid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="entry_Date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="entry_Date" Type="DateTime" />
                    <asp:Parameter Name="uid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>
</asp:Content>
