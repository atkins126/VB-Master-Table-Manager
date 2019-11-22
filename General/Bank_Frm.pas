unit Bank_Frm;

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
  TBankFrm = class(TBaseGridFrm)
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
  BankFrm: TBankFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  CommonFunction,
  VBCommonValues,
  VBBase_DM,
  RUtils;

procedure TBankFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Bank';
  viewMaster.DataController.DataSource := MTDM.dtsBank;
  navMaster.DataSource := MTDM.dtsBank;

  MTDM.cdsBank.Close;

  VBBaseDM.GetData(5, MTDM.cdsBank, MTDM.cdsBank.Name, '',
    'C:\Data\Xml\Bannk.xml', MTDM.cdsBank.UpdateOptions.Generatorname,
    MTDM.cdsBank.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 2);
end;

procedure TBankFrm.navMasterButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Bank?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.

