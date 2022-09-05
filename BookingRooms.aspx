<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="BookingRooms.aspx.cs" Inherits="Work01.BookingRooms" %>

<%@ Register Src="~/LogBtnUserControl.ascx" TagPrefix="uc1" TagName="LogBtnUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   <div  class="row">

       <div class="col">

           <h2 class="text-center mb-lg-4 " >Room Booking information</h2>
           <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
               <AlternatingRowStyle BackColor="#F7F7F7" />
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                   <asp:TemplateField HeaderText="Check In Date" SortExpression="CheckInDate">
                       <EditItemTemplate>
                           <asp:TextBox ID="txtCdate" runat="server" Text='<%# Bind("CheckInDate") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label1" runat="server" Text='<%# Bind("CheckInDate") %>'></asp:Label>

                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                   <asp:TemplateField HeaderText="RoomName" SortExpression="RoomId">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RoomId") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("RoomName") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               </Columns>
               <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
               <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
               <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
               <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
               <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
               <SortedAscendingCellStyle BackColor="#F4F4FD" />
               <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
               <SortedDescendingCellStyle BackColor="#D8D8F0" />
               <SortedDescendingHeaderStyle BackColor="#3E3277" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" DeleteCommand="DELETE FROM [RBooking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RBooking] ([CustName], [CheckInDate], [Duration], [RoomId], [UnitPrice]) VALUES (@CustName, @CheckInDate, @Duration, @RoomId, @UnitPrice)" SelectCommand="SELECT b.*,r.RoomName FROM RBooking b inner join rooms r on b.RoomId =r.RoomId" UpdateCommand="UPDATE [RBooking] SET [CustName] = @CustName, [CheckInDate] = @CheckInDate, [Duration] = @Duration, [RoomId] = @RoomId, [UnitPrice] = @UnitPrice WHERE [Id] = @Id">
               <DeleteParameters>
                   <asp:Parameter Name="Id" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="CustName" Type="String" />
                   <asp:Parameter DbType="Date" Name="CheckInDate" />
                   <asp:Parameter Name="Duration" Type="Int32" />
                   <asp:Parameter Name="RoomId" Type="Int32" />
                   <asp:Parameter Name="UnitPrice" Type="Decimal" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="CustName" Type="String" />
                   <asp:Parameter DbType="Date" Name="CheckInDate" />
                   <asp:Parameter Name="Duration" Type="Int32" />
                   <asp:Parameter Name="RoomId" Type="Int32" />
                   <asp:Parameter Name="UnitPrice" Type="Decimal" />
                   <asp:Parameter Name="Id" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
       </div>
   </div>
     <div class="d-flex  justify-content-center">
            <a class="btn btn-outline-info" href="InsertRoomBooking.aspx">New Booking</a>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <uc1:LogBtnUserControl runat="server" ID="LogBtnUserControl" />
</asp:Content>
