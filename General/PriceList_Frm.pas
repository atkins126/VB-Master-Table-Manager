unit PriceList_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Data.DB, Vcl.ImgList, cxImageList, Vcl.Controls,
  Vcl.Dialogs, System.IOUtils, System.ImageList, System.Actions, Vcl.ActnList,

  BaseGrid_Frm, CommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, cxDBNavigator,
  dxLayoutLookAndFeels, cxClasses, cxGridLevel, cxGridCustomView, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxCurrencyEdit,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxMemo, cxDBLookupComboBox,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg, cxContainer,
  dxLayoutcxEditAdapters, cxCheckBox, Vcl.Menus;

type
  TPriceListFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtRate: TcxGridDBBandedColumn;
    edtInvoiceDescription: TcxGridDBBandedColumn;
    edtDescription: TcxGridDBBandedColumn;
    grpPricelist: TdxLayoutGroup;
    litPriceHistory: TdxLayoutItem;
    grdPriceHistory: TcxGrid;
    viewPriceHistory: TcxGridDBBandedTableView;
    lvlPriceHistory: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure grpPricelistTabChanged(Sender: TObject);
    procedure grpPricelistTabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
  private
    { Private declarations }
    procedure CreateGridColumns;
    procedure PrintPriceList(ButtonIndex: integer);
    procedure PrintPriceHistory(ButtonIndex: integer);
  public
    { Public declarations }
  end;

var
  PriceListFrm: TPriceListFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Lookup_DM,
  Report_DM;

procedure TPriceListFrm.CreateGridColumns;
var
  AColumn: TcxGridDBBandedColumn;
//  AView: TcxGridDBBandedTableView;
  I: Integer;
begin
  viewPriceHistory.BeginUpdate;
  viewPriceHistory.ClearItems;
  try
    AColumn := viewPriceHistory.CreateColumn;
    AColumn.DataBinding.FieldName := 'ID';
    AColumn.Caption := 'ID';
    AColumn.Position.BandIndex := 0;
    AColumn.Width := 50;
    AColumn.Visible := False;
    AColumn.Options.Editing := False;
    AColumn.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(AColumn.Properties).Alignment.Vert := taTopJustify;
    TcxCurrencyEditProperties(AColumn.Properties).DecimalPlaces := 0;
    TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := '#,##0';
    TcxCurrencyEditProperties(AColumn.Properties).EditFormat := '#,##0';
    TcxCurrencyEditProperties(AColumn.Properties).UseThousandSeparator := False;
    TcxCurrencyEditProperties(AColumn.Properties).ReadOnly := True;

    AColumn := viewPriceHistory.CreateColumn;
    AColumn.DataBinding.FieldName := 'RATE_UNIT_ID';
    AColumn.Caption := 'RU ID';
    AColumn.Position.BandIndex := 0;
    AColumn.Width := 50;
    AColumn.Visible := False;
    AColumn.Options.Editing := False;
    AColumn.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(AColumn.Properties).Alignment.Vert := taTopJustify;
    TcxCurrencyEditProperties(AColumn.Properties).DecimalPlaces := 0;
    TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := '#,##0';
    TcxCurrencyEditProperties(AColumn.Properties).EditFormat := '#,##0';
    TcxCurrencyEditProperties(AColumn.Properties).UseThousandSeparator := False;
    TcxCurrencyEditProperties(AColumn.Properties).ReadOnly := True;

    AColumn := viewPriceHistory.CreateColumn;
    AColumn.DataBinding.FieldName := 'NAME';
    AColumn.Caption := 'Price Item';
    AColumn.Position.BandIndex := 0;
    AColumn.Width := 450;
    AColumn.Visible := True;
    AColumn.Options.Editing := False;
    AColumn.PropertiesClass := TcxTextEditProperties;
    TcxTextEditProperties(AColumn.Properties).Alignment.Vert := taTopJustify;
    TcxTextEditProperties(Acolumn.Properties).ReadOnly := True;

    AColumn := viewPriceHistory.CreateColumn;
    AColumn.DataBinding.FieldName := 'DESCRIPTION';
    AColumn.Caption := 'Description';
    AColumn.Position.BandIndex := 0;
    AColumn.Width := 450;
    AColumn.Visible := False;
    AColumn.Options.Editing := False;
    AColumn.PropertiesClass := TcxTextEditProperties;
    TcxTextEditProperties(AColumn.Properties).Alignment.Vert := taTopJustify;
    TcxTextEditProperties(Acolumn.Properties).ReadOnly := True;

    AColumn := viewPriceHistory.CreateColumn;
    AColumn.DataBinding.FieldName := 'RATE_UNIT';
    AColumn.Caption := 'Rate Unit';
    AColumn.Position.BandIndex := 0;
    AColumn.Width := 130;
    AColumn.Visible := True;
    AColumn.Options.Editing := False;
    AColumn.PropertiesClass := TcxTextEditProperties;
    TcxTextEditProperties(AColumn.Properties).Alignment.Vert := taTopJustify;
    TcxTextEditProperties(Acolumn.Properties).ReadOnly := True;

    for I := 0 to ReportDM.SLTheYear.Count - 1 do
    begin
      AColumn := viewPriceHistory.CreateColumn;
      AColumn.DataBinding.FieldName := ReportDM.SLTheYear[I];
      AColumn.Caption := ReportDM.SLTheYear[I];
      AColumn.Position.BandIndex := 1;
      AColumn.Width := 70;
      AColumn.Visible := True;
      AColumn.Options.Editing := False;
      AColumn.HeaderAlignmentHorz := taRightJustify;
      AColumn.PropertiesClass := TcxCurrencyEditProperties;
      TcxCurrencyEditProperties(AColumn.Properties).Alignment.Vert := taTopJustify;
      TcxCurrencyEditProperties(AColumn.Properties).Alignment.Horz := taRightJustify;
      TcxCurrencyEditProperties(AColumn.Properties).DecimalPlaces := 2;
      TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := '#,##0.00';
      TcxCurrencyEditProperties(AColumn.Properties).EditFormat := '#,##0.00';
      TcxCurrencyEditProperties(AColumn.Properties).UseThousandSeparator := True;
      TcxCurrencyEditProperties(AColumn.Properties).ReadOnly := True;

    end;
  finally
    viewPriceHistory.EndUpdate;
  end;
end;

procedure TPriceListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Price list';
  layMain.Align :=  alClient;
  layMain.LayoutLookAndFeel :=  lafCustomSkin;
  viewMaster.DataController.DataSource := MTDM.dtsPriceList;
//  viewPriceHistory.DataController.DataSource := ReportDM.dtsPriceHistory;
  navMaster.DataSource := MTDM.dtsPriceList;
  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := LookupDM.dtsRateUnit;

  VBBaseDM.GetData(22, MTDM.cdsPricelist, MTDM.cdsPricelist.Name, ONE_SPACE,
    'C:\Data\Xml\Price List.xml', MTDM.cdsPricelist.UpdateOptions.Generatorname,
    MTDM.cdsPricelist.UpdateOptions.UpdateTableName);

  VBBaseDM.GetData(38, LookupDM.cdsRateUnit, LookupDM.cdsRateUnit.Name, ONE_SPACE,
    'C:\Data\Xml\Rate Unit.xml', LookupDM.cdsRateUnit.UpdateOptions.Generatorname,
    LookupDM.cdsRateUnit.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 10);
  grpPricelist.ItemIndex := 0;
end;

procedure TPriceListFrm.grpPricelistTabChanged(Sender: TObject);
var
  TheYear: Integer;
  YearClause, TheYearStr: string;
begin
  inherited;
  navMaster.Buttons[6].Enabled := grpPricelist.ItemIndex = 0; // Insert
  navMaster.Buttons[8].Enabled := grpPricelist.ItemIndex = 0; // Delete
  navMaster.Buttons[10].Enabled := grpPricelist.ItemIndex = 0; // Post
  navMaster.Buttons[11].Enabled := grpPricelist.ItemIndex = 0; // Cancel

  case grpPricelist.ItemIndex of
    0: // Price List
      begin
        navMaster.DataSource := MTDM.dtsPriceList;
      end;

    1: // Price History
      begin
        navMaster.DataSource := ReportDM.dtsPriceHistory;

        if not ReportDM.cdsPriceHistoryYear.Active then
          VBBaseDM.GetData(64, ReportDM.cdsPriceHistoryYear, ReportDM.cdsPriceHistoryYear.Name, ONE_SPACE,
            'C:\Data\Xml\Price History Year.xml', ReportDM.cdsPriceHistoryYear.UpdateOptions.Generatorname,
            ReportDM.cdsPriceHistoryYear.UpdateOptions.UpdateTableName);

        if not ReportDM.cdsPriceHistory.Active then
        begin
          ReportDM.SLtheYear.Clear;
          YearClause := '';

          while not ReportDM.cdsPriceHistoryYear.EOF do
          begin
            TheYear := ReportDM.cdsPriceHistoryYear.FieldByName('THE_YEAR').Asinteger;
            TheYearStr := AnsiQuotedStr(AnsiUpperCase(TheYear.ToString), '"');
            ReportDM.SLTheYear.Add(TheYear.ToString);
            YearClause := YearClause + Format(PRICE_HISTORY_CLAUSE, [TheYearStr, TheYear.ToString, TheYearStr]) + ONE_SPACE;
            ReportDM.cdsPriceHistoryYear.Next;

            if not ReportDM.cdsPriceHistoryYear.EOF then
              YearClause := YearClause + ',';
          end;

          ReportDM.cdsPriceHistoryYear.First;
          ReportDM.CreatePricehistory;
          CreateGridColumns;

          VBBaseDM.GetData(65, ReportDM.cdsPriceHistory, ReportDM.cdsPriceHistory.Name, YearClause,
            'C:\Data\Xml\Price History.xml', ReportDM.cdsPriceHistory.UpdateOptions.Generatorname,
            ReportDM.cdsPriceHistory.UpdateOptions.UpdateTableName);
        end;
      end;
  end;
end;

procedure TPriceListFrm.grpPricelistTabChanging(Sender: TObject;
  ANewTabIndex: Integer; var Allow: Boolean);
begin
  inherited;
  Allow := not (MTDM.cdsPricelist.State in [dsEdit, dsInsert]);
  if not Allow then
    raise EExecutionException.Create('Please post or cancel current transaction in orer to access price history.');
end;

procedure TPriceListFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  ID: Integer;
begin
  ReportDM.MasterFormType := ftPricelist;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM TIMESHEET WHERE PRICE_LIST_ITEM_ID = ' +
          IntToStr(MTDM.cdsPricelist.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Price List Item';
        inherited;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        Screen.Cursor := crHourglass;

        if grpPricelist.ItemIndex = 0 then
          ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'PriceList.fr3'
        else
          ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'PriceHistory.fr3';

        try
          case ReportDM.ReportAction of
            raPreview, raPrint:
              begin

                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                viewPriceHistory.DataController.BeginUpdate;
                ID := ReportDM.cdsPriceHistory.FieldByName('ID').AsInteger;

                try
                  ReportDM.PrintReport;
                finally
                  if not ReportDM.cdsPriceHistory.Locate('ID', ID, []) then
                    ReportDM.cdsPriceHistory.First;
                  viewPriceHistory.DataController.EndUpdate;
                end;
              end;

            raExcel:
              begin
                if grpPricelist.ItemIndex = 0 then
                  ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Price Item Listintg', cbxOpenAfterExport.Checked)
                else
                  ReportDM.ExportToExcel(grdPriceHistory, EXCEL_DOCS + 'Price History Listintg', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                begin
                  if not TFile.Exists(ReportDM.ReportFileName) then
                    raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                  viewPriceHistory.DataController.BeginUpdate;
                  try
                    ID := ReportDM.cdsPriceHistory.FieldByName('ID').AsInteger;
                    if grpPricelist.ItemIndex = 0 then
                      ReportDM.ExportToPDF(PDF_DOCS + 'Price Item Listing', cbxOpenAfterExport.Checked)
                    else
                      ReportDM.ExportToPDF(PDF_DOCS + 'Price History Listing', cbxOpenAfterExport.Checked);
                  finally
                    if not ReportDM.cdsPriceHistory.Locate('ID', ID, []) then
                      ReportDM.cdsPriceHistory.First;
                    viewPriceHistory.DataController.EndUpdate;
                  end;
                end;
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;

//        case grpPricelist.ItemIndex of
//          0: PrintPriceList(AButtonIndex);
//          1: PrintPriceHistory(AButtonIndex);
//        end;
      end;
  end;
end;

procedure TPriceListFrm.PrintPriceList(ButtonIndex: integer);
var
  RepFileName, ReportTypeName: string;
  Report: TfrxReport;
begin
  Screen.Cursor := crHourglass;
  try
    RepFileName := MTDM.ShellResource.ReportFolder + 'Pricelist.fr3';

    if not TFile.Exists(RepFileName) then
      raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

    Report := ReportDM.rptMaster;
//          ReportDataSet := ReportDM.fdsPriceList;
    ReportTypeName := 'Price List (Current)';

    VBBaseDM.GetData(42, ReportDM.cdsPricelist, ReportDM.cdsPricelist.Name, ONE_SPACE,
      'C:\Data\Xml\Price List View.xml', ReportDM.cdsPricelist.UpdateOptions.Generatorname,
      ReportDM.cdsPricelist.UpdateOptions.UpdateTableName);

    ReportDM.fdsMaster.DataSet := ReportDM.cdsPricelist;
    Report.DataSets.Clear;
    Report.DataSets.Add(ReportDM.fdsMaster);
    Report.LoadFromFile(RepFileName, False);
    TfrxMemoView(Report.FindObject('lblReportTypeName')).Text := ReportTypeName;
//    TfrxMemoView(Report.FindObject('lblReportTypeName')).Text := ReportTypeName;

//          ReportDM.PrepareReport(MTDM.cdsActivityType, ReportDM.cdsActivityType, RepFileName, Report, ReportDataSet, ReportTypeName);
//    PrintReport(ButtonIndex);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPriceListFrm.PrintPriceHistory(ButtonIndex: integer);
begin
//
end;

end.


