unit PriceList_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseGrid_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, dxLayoutContainer, System.ImageList,
  Vcl.ImgList, cxImageList, dxLayoutLookAndFeels, System.Actions, Vcl.ActnList,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  cxMemo, cxDBLookupComboBox;

type
  TPriceListFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtRate: TcxGridDBBandedColumn;
    edtInvoiceDescription: TcxGridDBBandedColumn;
    edtDescription: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
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
  CommonFunction,
  VBCommonValues,
  RUtils,
  Lookup_DM;

procedure TPriceListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Price list';
  viewMaster.DataController.DataSource := MTDM.dtsPriceList;
  navMaster.DataSource := MTDM.dtsPriceList;
  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := LookupDM.dtsRateUnit;

  VBBaseDM.GetData(22, MTDM.cdsPricelist, MTDM.cdsPricelist.Name, '',
    'C:\Data\Xml\Price List.xml', MTDM.cdsPricelist.UpdateOptions.Generatorname,
    MTDM.cdsPricelist.UpdateOptions.UpdateTableName);

  VBBaseDM.GetData(38, LookupDM.cdsRateUnit, LookupDM.cdsRateUnit.Name, '',
    'C:\Data\Xml\Rate Unit.xml', LookupDM.cdsRateUnit.UpdateOptions.Generatorname,
    LookupDM.cdsRateUnit.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 10);
end;

procedure TPriceListFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Price List Item?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.

