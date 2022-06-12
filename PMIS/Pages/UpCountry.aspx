<%@ Page Title="UPCOUNTRY ROSTER" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpCountry.aspx.cs" Inherits="PMIS.Pages.Independent" %>
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
    padding-left: 75px;
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
        <section id="User" runat="server">
          <div class="row">
              <div class="col-md-4">
                  <label>P.NO</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPno" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtName" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
        <div class="row">
              <div class="col-md-4">
                  <label>Current Station</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCurrentSta" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Duration served</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDuration" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Date of Willingness</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" TextMode="Date" ID="txtDate" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
          </div>
        <div class="row">
            <div class="col-md-4">
                  <label>Upcountry Station</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtUpcountry" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
        </div>

        <br />

          <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
        <br />
          <div class="col-12">
              <div class="form-group" >
                      <asp:Button ID="btnApply" runat="server" Text="Apply" class="btn btn-success" OnClick="btnApply_Click" Width="110px" />
                      <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" Width="110px" />
                      <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-info" Width="110px" />
                  </div>
              </div>
            </section>
        <section id="Admin" runat="server">
            <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgv" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UpCountryID" OnRowUpdating="dgv_RowUpdating"  OnRowCommand="dgv_RowCommand" HorizontalAlign="Center">
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
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("UpCountryID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("UpCountryID") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="pno" runat="server" Text='<%#Eval("Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="pno" runat="server" Text='<%#Eval("Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("Cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("Cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Current Station">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCSta" runat="server" Text='<%#Eval("CurrentStation")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCaSta" runat="server" Text='<%#Eval("CurrentStation")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="UpCountry Station">  
                            <ItemTemplate>  
                                <asp:Label ID="lblSta" runat="server" Text='<%#Eval("Station")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSta" runat="server" Text='<%#Eval("Station")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Duration Served">  
                            <ItemTemplate>  
                                <asp:Label ID="lblDu" runat="server" Text='<%#Eval("DurationServed")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtDu" runat="server" Text='<%#Eval("DurationServed")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Date of Willingness">  
                            <ItemTemplate>  
                                <asp:Label ID="lbldate" runat="server" Text='<%#Eval("DateWill")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtDate" runat="server" Text='<%#Eval("DateWill")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Status">  
                            <ItemTemplate>  
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtStatus" runat="server" Text='<%#Eval("Status")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 

                                    <asp:TemplateField HeaderText="Request">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            
        </section>
    </div>
</asp:Content>
