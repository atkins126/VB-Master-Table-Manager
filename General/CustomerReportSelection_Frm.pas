unit CustomerReportSelection_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList,

  BaseLayout_Frm,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBar, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxCurrencyEdit, cxDBLookupComboBox, cxTextEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxContainer, cxMaskEdit,
  cxDropDownEdit;

type
  TCustomerReportSelectionFrm = class(TBaseLayoutFrm)
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    litToolbar: TdxLayoutItem;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    actClose: TAction;
    actGetData: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actPDF: TAction;
    grdCustomer: TcxGrid;
    viewCustomer: TcxGridDBBandedTableView;
    edtCustomerID: TcxGridDBBandedColumn;
    lucCustomerType: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtlastName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    lucStatus: TcxGridDBBandedColumn;
    cbxIsActive: TcxGridDBBandedColumn;
    lvlCustomer: TcxGridLevel;
    grpOptions: TdxLayoutGroup;
    litCustomerGrid: TdxLayoutItem;
    litReportType: TdxLayoutItem;
    lucReportType: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetData(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerReportSelectionFrm: TCustomerReportSelectionFrm;

implementation

{$R *.dfm}

uses
  Base_DM,
  VBBase_DM,
  Lookup_DM,
  MT_DM,
  Report_DM;
//  MsgDialog_Frm,
//  Progress_Frm,
//  RUtils,
//  CommonFunctions;

procedure TCustomerReportSelectionFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer Report Seledtion Options';
  LookupDM.cdsCustomer.Close;
  LookupDM.cdsCustomerStatusRpt.Close;
  LookupDM.cdsCustomer.Data := MTDM.cdsCustomer.Data;
  LookupDM.cdsCustomerStatusRpt.Data := LookupDM.cdsCustomerStatus.Data;
  viewCustomer.DataController.DataSource := MTDM.dtsCustomer;
end;

procedure TCustomerReportSelectionFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

procedure TCustomerReportSelectionFrm.DoExcel(Sender: TObject);
begin
  inherited;
//
end;

procedure TCustomerReportSelectionFrm.DoGetData(Sender: TObject);
begin
  inherited;
//
end;

procedure TCustomerReportSelectionFrm.DoPDF(Sender: TObject);
begin
  inherited;
//
end;

procedure TCustomerReportSelectionFrm.DoPrint(Sender: TObject);
begin
  inherited;
//
end;

end.

