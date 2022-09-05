<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Work01.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-md-4">
            <h2 class="  bg-light">Insert Rooms</h2>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" CssClass="table table-active" AutoGenerateRows="False" DataKeyNames="RoomId" DataSourceID="DsRoomsInfo" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemInserting="DetailsView1_ItemInserting" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="RoomId" HeaderText="RoomId" InsertVisible="False" ReadOnly="True" SortExpression="RoomId" />
                    <asp:TemplateField HeaderText="RoomName" SortExpression="RoomName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RoomName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RoomName") %>'></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name is Requird!!1" ControlToValidate="TextBox1" ForeColor="Red"></asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("RoomName") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle CssClass="form-control" />
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="RoomType" SortExpression="RoomType">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RoomType") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource1" CssClass="form-control" DataTextField="CatName" DataValueField="Id" SelectedValue='<%#Bind("RoomType") %>' runat="server"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" SelectCommand="SELECT * FROM [Rcategories]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server"  Text='<%# Bind("RoomType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Bind("Picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="fuPicture" CssClass="form-control" runat="server" />
                            <asp:HiddenField ID="HiddenField1" Value='<%#Bind("Picture") %>' runat="server" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Picture") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField DataField="IsAvialable" ControlStyle-CssClass=" form-control" HeaderText="IsAvialable" SortExpression="IsAvialable" >
<ControlStyle CssClass=" form-control"></ControlStyle>
                    </asp:CheckBoxField>
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="DsRoomsInfo" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" DeleteCommand="DELETE FROM [rooms] WHERE [RoomId] = @RoomId" InsertCommand="INSERT INTO [rooms] ([RoomName], [RoomType], [Picture], [IsAvialable]) VALUES (@RoomName, @RoomType, @Picture, @IsAvialable)" SelectCommand="select r.*,c.CatName from rooms r inner join [dbo].[Rcategories] c on r.RoomType =c.Id" UpdateCommand="UPDATE [rooms] SET [RoomName] = @RoomName, [RoomType] = @RoomType, [Picture] = @Picture, [IsAvialable] = @IsAvialable WHERE [RoomId] = @RoomId">
                <DeleteParameters>
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RoomName" Type="String" />
                    <asp:Parameter Name="RoomType" Type="Int32" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="IsAvialable" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RoomName" Type="String" />
                    <asp:Parameter Name="RoomType" Type="Int32" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="IsAvialable" Type="Boolean" />
                    <asp:Parameter Name="RoomId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-6">
            <h2>Rooms Are Shown Here</h2>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="RoomId" DataSourceID="DsRoomsInfo" GridLines="Horizontal" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="RoomId" HeaderText="RoomId" InsertVisible="False" ReadOnly="True" SortExpression="RoomId" />
                    <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                    <asp:TemplateField HeaderText="RoomType" SortExpression="RoomType">
                        <EditItemTemplate>
                             <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource1" CssClass="form-control" DataTextField="CatName" DataValueField="Id" SelectedValue='<%#Bind("RoomType") %>' runat="server"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" SelectCommand="SELECT * FROM [Rcategories]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CatName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                        <EditItemTemplate>
                            <asp:FileUpload ID="fuPicture"  runat="server" />
                            <asp:HiddenField ID="HiddenField1" Value='<%#Bind("Picture") %>' runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" ImageUrl='<%#Eval("picture","~/Images/{0}") %>'  runat="server" Width="70px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField DataField="IsAvialable" HeaderText="IsAvialable" SortExpression="IsAvialable" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </div>
    </div>
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
