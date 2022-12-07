<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-1.6.2.min.js"></script>
    <script type="text/javascript">
        var isColumnProductNameExpanded = false;
        var isColumnUnitPriceExpanded = true;

        function gridView_Init(s, e) {
            SetColumnVisibility('ColumnProductName', isColumnProductNameExpanded);
            SetColumnVisibility('ColumnUnitPrice', isColumnUnitPriceExpanded);
        }
        function gridView_EndCallback(s, e) {
            SetColumnVisibility('ColumnProductName', isColumnProductNameExpanded);
            SetColumnVisibility('ColumnUnitPrice', isColumnUnitPriceExpanded);
        }


        function SetColumnVisibility(columnName, isExpanded) {
            if (isExpanded) {
                $('td.' + columnName + '_Band').css('display', 'table-cell');
                $('td.' + columnName).css('display', 'none');
            }
            else {
                $('td.' + columnName + '_Band').css('display', 'none');
                $('td.' + columnName).css('display', 'table-cell');
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
            KeyFieldName="ProductID" ClientInstanceName="gridView">
            <ClientSideEvents Init="gridView_Init" EndCallback="gridView_EndCallback" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewBandColumn Name="ProdNameBand">
                    <HeaderStyle CssClass="ColumnProductName_Band" />
                    <HeaderCaptionTemplate>
                        Some Information
                        <dx:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/Images/collapse.png">
                            <ClientSideEvents Click="function(s, e){
                                SetColumnVisibility('ColumnProductName', false);
                                isColumnProductNameExpanded = false;
                                 }" />
                        </dx:ASPxImage>
                    </HeaderCaptionTemplate>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                            <HeaderStyle CssClass="ColumnProductName_Band" />
                            <EditCellStyle CssClass="ColumnProductName_Band" />
                            <CellStyle CssClass="ColumnProductName_Band" />
                            <FilterCellStyle CssClass="ColumnProductName_Band" />
                            <FooterCellStyle CssClass="ColumnProductName_Band" />
                            <GroupFooterCellStyle CssClass="ColumnProductName_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
                            <HeaderStyle CssClass="ColumnProductName_Band" />
                            <EditCellStyle CssClass="ColumnProductName_Band" />
                            <CellStyle CssClass="ColumnProductName_Band" />
                            <FilterCellStyle CssClass="ColumnProductName_Band" />
                            <FooterCellStyle CssClass="ColumnProductName_Band" />
                            <GroupFooterCellStyle CssClass="ColumnProductName_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                            <HeaderStyle CssClass="ColumnProductName_Band" />
                            <EditCellStyle CssClass="ColumnProductName_Band" />
                            <CellStyle CssClass="ColumnProductName_Band" />
                            <FilterCellStyle CssClass="ColumnProductName_Band" />
                            <FooterCellStyle CssClass="ColumnProductName_Band" />
                            <GroupFooterCellStyle CssClass="ColumnProductName_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                            <HeaderStyle CssClass="ColumnProductName_Band" />
                            <EditCellStyle CssClass="ColumnProductName_Band" />
                            <CellStyle CssClass="ColumnProductName_Band" />
                            <FilterCellStyle CssClass="ColumnProductName_Band" />
                            <FooterCellStyle CssClass="ColumnProductName_Band" />
                            <GroupFooterCellStyle CssClass="ColumnProductName_Band" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:GridViewBandColumn>

                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1" Visible="true" Name="ProdName">
                    <HeaderStyle CssClass="ColumnProductName" />
                    <EditCellStyle CssClass="ColumnProductName" />
                    <CellStyle CssClass="ColumnProductName" />
                    <FilterCellStyle CssClass="ColumnProductName" />
                    <FooterCellStyle CssClass="ColumnProductName" />
                    <GroupFooterCellStyle CssClass="ColumnProductName" />
                    <Settings AllowSort="False" />
                    <HeaderCaptionTemplate>
                        Product Name
                        <dx:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/Images/expand.png">
                            <ClientSideEvents Click="function(s, e){ 
                                  SetColumnVisibility('ColumnProductName', true);
                                  isColumnProductNameExpanded = true;
                                }" />
                        </dx:ASPxImage>
                    </HeaderCaptionTemplate>
                </dx:GridViewDataTextColumn>

                <dx:GridViewBandColumn Name="ProdPriceBand" VisibleIndex="5">
                    <HeaderStyle CssClass="ColumnUnitPrice_Band" />
                    <HeaderCaptionTemplate>
                        Additional Information
                        <dx:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/Images/collapse.png">
                            <ClientSideEvents Click="function(s, e){                                 
                                 SetColumnVisibility('ColumnUnitPrice', false);
                                 isColumnUnitPriceExpanded = false;
                                 }" />
                        </dx:ASPxImage>
                    </HeaderCaptionTemplate>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                            <HeaderStyle CssClass="ColumnUnitPrice_Band" />
                            <EditCellStyle CssClass="ColumnUnitPrice_Band" />
                            <CellStyle CssClass="ColumnUnitPrice_Band" />
                            <FilterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <FooterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <GroupFooterCellStyle CssClass="ColumnUnitPrice_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                            <HeaderStyle CssClass="ColumnUnitPrice_Band" />
                            <EditCellStyle CssClass="ColumnUnitPrice_Band" />
                            <CellStyle CssClass="ColumnUnitPrice_Band" />
                            <FilterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <FooterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <GroupFooterCellStyle CssClass="ColumnUnitPrice_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                            <HeaderStyle CssClass="ColumnUnitPrice_Band" />
                            <EditCellStyle CssClass="ColumnUnitPrice_Band" />
                            <CellStyle CssClass="ColumnUnitPrice_Band" />
                            <FilterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <FooterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <GroupFooterCellStyle CssClass="ColumnUnitPrice_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
                            <HeaderStyle CssClass="ColumnUnitPrice_Band" />
                            <EditCellStyle CssClass="ColumnUnitPrice_Band" />
                            <CellStyle CssClass="ColumnUnitPrice_Band" />
                            <FilterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <FooterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <GroupFooterCellStyle CssClass="ColumnUnitPrice_Band" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                            <HeaderStyle CssClass="ColumnUnitPrice_Band" />
                            <EditCellStyle CssClass="ColumnUnitPrice_Band" />
                            <CellStyle CssClass="ColumnUnitPrice_Band" />
                            <FilterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <FooterCellStyle CssClass="ColumnUnitPrice_Band" />
                            <GroupFooterCellStyle CssClass="ColumnUnitPrice_Band" />
                        </dx:GridViewDataCheckColumn>
                    </Columns>
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5" Visible="true" Name="ProdPrice">
                    <HeaderStyle CssClass="ColumnUnitPrice" />
                    <EditCellStyle CssClass="ColumnUnitPrice" />
                    <CellStyle CssClass="ColumnUnitPrice" />
                    <FilterCellStyle CssClass="ColumnUnitPrice" />
                    <FooterCellStyle CssClass="ColumnUnitPrice" />
                    <GroupFooterCellStyle CssClass="ColumnUnitPrice" />
                    <Settings AllowSort="False" />
                    <HeaderCaptionTemplate>
                        Unit Price
                        <dx:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/Images/expand.png">
                            <ClientSideEvents Click="function(s, e){ 
                                 SetColumnVisibility('ColumnUnitPrice', true);
                                 isColumnUnitPriceExpanded = true;
                                }" />
                        </dx:ASPxImage>
                    </HeaderCaptionTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
    </form>
</body>
</html>