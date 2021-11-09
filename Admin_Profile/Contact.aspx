<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SastoMarket.Admin_Profile.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="messages" HeaderText="messages" SortExpression="messages" />
                <asp:BoundField DataField="entry_date" HeaderText="entry_date" SortExpression="entry_date" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [contact] WHERE [cid] = @cid" InsertCommand="INSERT INTO [contact] ([fullname], [email], [messages], [entry_date]) VALUES (@fullname, @email, @messages, @entry_date)" SelectCommand="SELECT * FROM [contact]" UpdateCommand="UPDATE [contact] SET [fullname] = @fullname, [email] = @email, [messages] = @messages, [entry_date] = @entry_date WHERE [cid] = @cid">
            <DeleteParameters>
                <asp:Parameter Name="cid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="messages" Type="String" />
                <asp:Parameter Name="entry_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="messages" Type="String" />
                <asp:Parameter Name="entry_date" Type="DateTime" />
                <asp:Parameter Name="cid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        
</asp:Content>

