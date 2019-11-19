unit Salutation_Frm;

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
  TSalutationFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalutationFrm: TSalutationFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Lookup_DM;

procedure TSalutationFrm.FormCreate(Sender: TObject);
//var
//  ReadOnly: Boolean;
begin
  inherited;
  Caption := 'Salutation';
  viewMaster.DataController.DataSource := MTDM.dtsSalutation;
  navMaster.DataSource := MTDM.dtsSalutation;

  VBBaseDM.GetData(23, MTDM.cdsSalutation, MTDM.cdsSalutation.Name, '',
    'C:\Data\Xml\Salutation.xml', MTDM.cdsSalutation.UpdateOptions.Generatorname,
    MTDM.cdsSalutation.UpdateOptions.UpdateTableName);

  LookupDM.cdsSalutation.Data := MTDM.cdsSalutation.Data;

//  if not MTDM.cdsMasterList.Locate('ID', 11, []) then
//    ReadOnly := True;

  SetButtonVisibility(RUtils.IntegerToBoolean(MTDM.cdsMasterList.FieldByName('READ_ONLY').AsInteger));
end;

procedure TSalutationFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Salutation?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.

