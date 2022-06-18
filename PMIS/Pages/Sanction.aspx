<%@ Page Title="Sanction/Borne" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanction.aspx.cs" Inherits="PMIS.Pages.Sanction" %>
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
       <br />
       <section id="user" runat="server">
       <div class="row">
              
              <div class="col-md-6">
                  <label>Latest Cadre</label>
                  <asp:DropDownList ID="DDCadre" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="LDC" Value="LDC" />
                      <asp:ListItem Text="UDC" Value="UDC" />
                      <asp:ListItem Text="Head Clerk" Value="Head Clerk" />
                      <asp:ListItem Text="Junior Superident" Value="Junior Superident" />
                      <asp:ListItem Text="Senior Superident" Value="Senior Superident" />
                  </asp:DropDownList>
              </div>
              <div class="col-md-6">
                  <label>Working Sanction</label>
                  <asp:DropDownList ID="DDWorkingSanc" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Government Sanction" Value="Government Sanction" />
                      <asp:ListItem Text="Working Sanction" Value="Working Sanction" />
                      <asp:ListItem Text="CNS Sanction" Value="CNS Sanction" />
                  </asp:DropDownList>
              </div>
          </div>
       <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
       <br />
          <div class="col-12">
              <div class="form-group" >
                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success" OnClick="btnSubmit_Click" Width="110px" />
                  </div>
              </div>
           </section>

       <section id="admin" runat="server">
           <div class="row">
              
             <div class="col-md-6">
                  <label>Latest Cadre</label>
                  <asp:DropDownList ID="ddAdminCadre" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="LDC" Value="LDC" />
                      <asp:ListItem Text="UDC" Value="UDC" />
                      <asp:ListItem Text="Head Clerk" Value="Head Clerk" />
                      <asp:ListItem Text="Junior Superident" Value="Junior Superident" />
                      <asp:ListItem Text="Senior Superident" Value="Senior Superident" />
                  </asp:DropDownList>
              </div>
              <div class="col-md-6">
                  <label>Working Sanction</label>
                  <asp:DropDownList ID="ddAdminSanc" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="Government Sanction" Value="Government Sanction" />
                      <asp:ListItem Text="Working Sanction" Value="Working Sanction" />
                      <asp:ListItem Text="CNS Sanction" Value="CNS Sanction" />
                  </asp:DropDownList>
              </div>
               </div>
           <br />
           <div class="row">
               <div class="col-md-2">
                  <div class="form-group" >
                      <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-success" OnClick="btnSearch_Click" Width="110px" />
                  </div>
                   </div>
           </div>
           <br />
          
           <div id="panel" style="height: 500px; background-color: White; padding: 10px; overflow: auto"> 
                <h3>All Data</h3>
           <hr />
    <asp:updatepanel id="UpdatePanel5" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgv" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="false">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="600px" />
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Unit">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
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
           <br />
          
           <div id="panel1" style="height: 500px; background-color: White; padding: 10px; overflow: auto"> 
                <h3>PNS RAHBAR</h3>
           <hr />
    <asp:updatepanel id="UpdatePanelService" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgvRAHBAR" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="false">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="600px" />
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Unit">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
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
           <br />
           
            <div id="panel2" style="height: 500px; background-color: White; padding: 10px; overflow: auto"> 
                <h3>PNS JAUHAR</h3>
           <hr />
    <asp:updatepanel id="UpdatePanel1" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgvJauhar" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="false">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="600px" />
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Unit">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
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
            <br />
          
            <div id="panel3" style="height: 500px; background-color: White; padding: 10px; overflow: auto">  
                 <h3>PNS BAHADUR</h3>
           <hr />
    <asp:updatepanel id="UpdatePanel2" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgvBahadur" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="false">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="600px" />
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Unit">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
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
              <br />
           
            <div id="panel4" style="height: 500px; background-color: White; padding: 10px; overflow: auto">  
                <h3>PNCA</h3>
           <hr />
    <asp:updatepanel id="UpdatePanel3" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgvPNCA" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="false">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="600px" />
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Unit">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
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
            <br />
           
            <div id="panel5" style="height: 500px; background-color: White; padding: 10px; overflow: auto"> 
                <h3>PNSL</h3>
           <hr />
    <asp:updatepanel id="UpdatePanel4" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgvPNSL" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="false">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="600px" />
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPno" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Unit">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                            <ItemStyle Width="600px" />
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
       </section>
       </div>
</asp:Content>
