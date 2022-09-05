<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="InsertRoomBooking.aspx.cs" Inherits="Work01.InsertRoomBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row offset-3 mb-4">
       
        <div class="col">
            <h2 class=" fa-address-card ">Insert Booking Information Here!!!</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
           
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" CssClass="table table-bordered badge-light" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="841px" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />

                    <asp:TemplateField HeaderText="Check In Date" SortExpression="CheckInDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCdate" runat="server" Text='<%# Bind("CheckInDate") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date isw Reuired!!!" ControlToValidate="txtCdate" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtCD" runat="server" Text='<%# Bind("CheckInDate") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date is requied!!" ControlToValidate="txtCD" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                          <%--  //compare validation--%>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid Date of Birth!!!" ControlToValidate="txtCD" ForeColor="#CC0000" Type="Date"></asp:CompareValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CheckInDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Duration" SortExpression="Duration">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Duration") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="Txtduration" runat="server" Text='<%# Bind("Duration") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Duration At least 2 days!!" ControlToValidate="Txtduration" ForeColor="Red" MaximumValue="2" MinimumValue="100" Type="Integer"></asp:RangeValidator>

                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Duration") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RoomId" SortExpression="RoomId">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RoomId") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource2" DataTextField="RoomName" DataValueField="RoomId" selectedValue='<%# Bind("RoomId") %>' runat="server"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" SelectCommand="SELECT * FROM [rooms]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("RoomId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                   
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                   
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelMAspCon %>" DeleteCommand="DELETE FROM [RBooking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RBooking] ([CustName], [CheckInDate], [Duration], [RoomId], [UnitPrice]) VALUES (@CustName, @CheckInDate, @Duration, @RoomId, @UnitPrice)" SelectCommand="SELECT * FROM [RBooking]" UpdateCommand="UPDATE [RBooking] SET [CustName] = @CustName, [CheckInDate] = @CheckInDate, [Duration] = @Duration, [RoomId] = @RoomId, [UnitPrice] = @UnitPrice WHERE [Id] = @Id">
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
            <a class="btn btn-outline-info" href="BookingRooms.aspx">Back To the List</a>
        </div>
    
   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(() => {
            $("input[name$='txtCD']").datepicker({ format: "yyyy-mm-dd" });
        });
    </script>
</asp:Content>
