unit CustomerType_Frm;

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
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit;

type
  TCustomerTypeFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    viewMasterNAME: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerTypeFrm: TCustomerTypeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils;

procedure TCustomerTypeFrm.FormCreate(Sender: TObject);
//var
//  ReadOnly: Boolean;
begin
  inherited;
  Caption := 'Customer Type';
  viewMaster.DataController.DataSource := MTDM.dtsCustomerType;
  navMaster.DataSource := MTDM.dtsCustomerType;

  VBBaseDM.GetData(15, MTDM.cdsCustomerType, MTDM.cdsCustomerType.Name, '',
    'C:\Data\Xml\Customer Type.xml', MTDM.cdsCustomerType.UpdateOptions.Generatorname,
    MTDM.cdsCustomerType.UpdateOptions.UpdateTableName);

//  if not MTDM.cdsMasterList.Locate('ID', 7, []) then
//    ReadOnly := True;

  SetButtonVisibility(RUtils.IntegerToBoolean(MTDM.cdsMasterList.FieldByName('READ_ONLY').AsInteger));
end;

procedure TCustomerTypeFrm.navMasterButtonsButtonClick(Sender: TObject;  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Cusotmer Type?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.
