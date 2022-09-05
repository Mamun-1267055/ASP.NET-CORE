<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="CategoryInObjectSource.aspx.cs" Inherits="Work01.RoomsBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row ">
        <div class="col-5 shadow-sm offset-1 border-primary ">
            <h2 class=" bg-ligt">This is for Object Source For Category</h2>
            <asp:FormView ID="FormView1" runat="server" CssClass="" DataKeyNames="id" DataSourceID="ObjectDataSource1" Width="528px">
                 <HeaderTemplate>
                    <table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th>Id</th>
                        <td><%# Eval("Id") %></td>

                    </tr>
                    <tr>
                        <th> Name</th>
                        <td><%# Eval("CatName") %></td>
                    </tr>
                     <tr>
                        <th>Price</th>
                        <td><%# Eval("Cost") %></td>
                        
                    </tr>


                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary mt-4" CommandName="New" runat="server">Add New</asp:LinkButton>
                        </td>
                    </tr>

                </ItemTemplate>
                 <InsertItemTemplate>
                     <tr>
                        
                     </tr>
                     <tr>
                        
                        <td>
                            
                            Type of Rooms</td>
                         
                     </tr>
                     <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text='<%# Bind("CatName") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Invalid Name!!!!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     </td>
                    <tr> 
                         <th>Price</th>
                        <td>
                            <asp:TextBox ID="TxrPrice" runat="server" CssClass="form-control"  Text='<%# Bind("Cost") %>'></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cost is greater Than 1000!!" ControlToValidate="TxrPrice" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate2"></asp:CustomValidator>
                          

                        </td>
                    </tr>
                    <tr>                       
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Insert" CssClass="btn btn-primary">Save</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel" CssClass="btn btn-warning">Cancel</asp:LinkButton>
                        </td>
                    </tr>
                
                     </td>
                    <tr>
                    </tr>
                </InsertItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>

            </asp:FormView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Work01.Models.RoomsCategories" DeleteMethod="Delete" InsertMethod="insert" SelectMethod="Get" TypeName="Work01.DAL.RCategoryGetWay" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
            </asp:ObjectDataSource>
            

           
        </div>
       <div class="col-5">
         <h2>Categories Are</h2>
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ObjectDataSource1" GridLines="Horizontal" Width="555px">
               <Columns>
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
