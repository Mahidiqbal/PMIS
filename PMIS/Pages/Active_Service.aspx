<%@ Page Title="Active Service" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Active_Service.aspx.cs" Inherits="PMIS.Pages.Application_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }

        /* Wrapping element */
        /* Set some basic padding to keep content from hitting the edges */
        .body-content {
            padding-left: 15px;
            padding-right: 15px;
        }
        .container-fluid {
    padding-right: 15px;
    padding-left: -75px;
    margin-right: auto;
    margin-left: auto;
}
        /* Set widths on the form inputs since otherwise they're 100% wide */
        input,
        select,
        textarea {
            max-width: 280px;
        }


        /* Responsive: Portrait tablets and up */
        @media screen and (min-width: 768px) {
            .jumbotron {
                margin-top: 0px;

            }

            .body-content {
                padding: 0;
            }
        }
    </style>
    <div class="container-fluid">
    <h2><%: Title %>.</h2>
        <hr />
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4"></div>
              <div class="col-md-4">
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSearch" runat="server" placeholder="Search Present Station"  OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                  </div>
              </div>
            </div>
        <div id="panel4" style="height: 500px; background-color: White; padding: 10px; overflow: auto">  
    <asp:updatepanel id="UpdatePanel3" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgv" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">  
                           <Columns>
                                     <asp:TemplateField HeaderText="P.No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmail" Text='<%# Eval("Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Phone No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Phone") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPhone" Text='<%# Eval("User_Phone") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDOB" Text='<%# Eval("Cadre") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sanction">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Working_Sanction") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtGender" Text='<%# Eval("Working_Sanction") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Unit">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMariStatus" Text='<%# Eval("Unit") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                    </Columns>  
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>  
            </ContentTemplate>  
            <Triggers>  
            </Triggers>  
       </asp:updatepanel>  
</div> 
<%--<div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgv1" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User_Pno" OnRowCancelingEdit="dgv_RowCancelingEdit" OnRowDeleting="dgv_RowDeleting" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                     <asp:TemplateField HeaderText="P.No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmail" Text='<%# Eval("Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Phone No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Phone") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPhone" Text='<%# Eval("User_Phone") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDOB" Text='<%# Eval("Cadre") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sanction">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Working_Sanction") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtGender" Text='<%# Eval("Working_Sanction") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Unit">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMariStatus" Text='<%# Eval("Unit") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                          <%--          <asp:TemplateField HeaderText="Request">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("User_Pno") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("User_Pno") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("User_Pno") %>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Button runat="server" CommandName="Cancel" Visible="false" ToolTip="Cancel" CommandArgument='<%# Eval("User_Pno") %>' ForeColor="White" CssClass="btn btn-danger" Text="Cancel" />
                                        </EditItemTemplate>
                                        <ItemStyle HorizontalAlign="Justify" />
                                    </asp:TemplateField>--%>


<%--                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div> --%>
        </div>
</asp:Content>
