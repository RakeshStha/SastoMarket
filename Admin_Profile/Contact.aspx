<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SastoMarket.Admin_Profile.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="text-center"> Total contact messages</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="onwebsite" HeaderText="onwebsite" SortExpression="onwebsite" />
                <asp:BoundField DataField="onproduct" HeaderText="onproduct" SortExpression="onproduct" />
                <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
                <asp:BoundField DataField="entry_date" HeaderText="entry_date" SortExpression="entry_date" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [feedback] WHERE [fid] = @fid" InsertCommand="INSERT INTO [feedback] ([username], [email], [onwebsite], [onproduct], [comments], [entry_date]) VALUES (@username, @email, @onwebsite, @onproduct, @comments, @entry_date)" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [username] = @username, [email] = @email, [onwebsite] = @onwebsite, [onproduct] = @onproduct, [comments] = @comments, [entry_date] = @entry_date WHERE [fid] = @fid">
            <DeleteParameters>
                <asp:Parameter Name="fid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="onwebsite" Type="String" />
                <asp:Parameter Name="onproduct" Type="String" />
                <asp:Parameter Name="comments" Type="String" />
                <asp:Parameter Name="entry_date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="onwebsite" Type="String" />
                <asp:Parameter Name="onproduct" Type="String" />
                <asp:Parameter Name="comments" Type="String" />
                <asp:Parameter Name="entry_date" Type="String" />
                <asp:Parameter Name="fid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <br />
        <h1 class="text-center">Customer feedbacks</h1>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="onwebsite" HeaderText="onwebsite" SortExpression="onwebsite" />
                <asp:BoundField DataField="onproduct" HeaderText="onproduct" SortExpression="onproduct" />
                <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
                <asp:BoundField DataField="entry_date" HeaderText="entry_date" SortExpression="entry_date" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>


    </div>
        
</asp:Content>

