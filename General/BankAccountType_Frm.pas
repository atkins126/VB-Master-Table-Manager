unit BankAccountType_Frm;

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
  TBankAccountTypeFrm = class(TBaseGridFrm)
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
  BankAccountTypeFrm: TBankAccountTypeFrm;

implementation

{$R *.dfm}

uses MT_DM, VBBase_DM, CommonFunction, VBCommonValues, RUtils;

procedure TBankAccountTypeFrm.FormCreate(Sender: TObject);
//var
//  ReadOnly: Boolean;
begin
  inherited;
  Caption := 'Bank Account Type';
  viewMaster.DataController.DataSource := MTDM.dtsBankAccountType;
  navMaster.DataSource := MTDM.dtsBankAccountType;

  MTDM.cdsBankAccountType.Close;

  VBBaseDM.GetData(6, MTDM.cdsBankAccountType, MTDM.cdsBankAccountType.Name, '',
    'C:\Data\Xml\Bannk Account Type.xml', MTDM.cdsBankAccountType.UpdateOptions.Generatorname,
    MTDM.cdsBankAccountType.UpdateOptions.UpdateTableName);

//  if not MTDM.cdsMasterList.Locate('ID', 3, []) then
//    ReadOnly := True;

  SetButtonVisibility(RUtils.IntegerToBoolean(MTDM.cdsMasterList.FieldByName('READ_ONLY').AsInteger));
end;

procedure TBankAccountTypeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Bank Account Type?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.
