<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SastoMarket.Admin_Profile.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="messages" HeaderText="messages" SortExpression="messages" />
                <asp:BoundField DataField="entry_date" HeaderText="entry_date" SortExpression="entry_date" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

