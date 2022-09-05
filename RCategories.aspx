<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="RCategories.aspx.cs" Inherits="Work01.RCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                 <div class="row mb-5">
                <div class="col-4">
                 <h2 class=" bg-transparent shadow-sm offset-2 ">Insert Rooms Categories</h2>
             <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered offset-2" runat="server" Height="50px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="DsCat" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                    
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="DsCat" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" DeleteCommand="DELETE FROM [Rcategories] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Rcategories] ([CatName], [Cost]) VALUES (@CatName, @Cost)" SelectCommand="SELECT * FROM [Rcategories]" UpdateCommand="UPDATE [Rcategories] SET [CatName] = @CatName, [Cost] = @Cost WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CatName" Type="String" />
                    <asp:Parameter Name="Cost" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CatName" Type="String" />
                    <asp:Parameter Name="Cost" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-6">
          <h2 class=" bg-transparent shadow-sm offset-2">List of Rooms Categories</h2>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered offset-2" AllowPaging="True" CellPadding="4" DataSourceID="DsCat" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
