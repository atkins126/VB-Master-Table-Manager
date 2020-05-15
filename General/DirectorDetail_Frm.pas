unit DirectorDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCurrencyEdit;

type
  TDirectorDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtMobileNo: TcxTextEdit;
    edtLastName: TcxTextEdit;
    edtOtherName: TcxTextEdit;
    edtTaxNo: TcxTextEdit;
    edtEmailAddress: TcxTextEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpMobileNo: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litTaxNo: TdxLayoutItem;
    litMobileNo: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litOtherName: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    imgNav16: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure lucCompanyGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
    procedure Validate;
    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  DirectorDetailFrm: TDirectorDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TDirectorDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TDirectorDetailFrm.CmDrawBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TDirectorDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
//  Width := 555;
//  Height := 480;
  Self.Height := 280;
  Self.Width := 540;
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;

  if VBBaseDM.DBAction = acEdit then
  begin
    edtFirstName.Text := MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsDirector.FieldByName('LAST_NAME').AsString;
    lucSalutation.EditValue := MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger;
    edtOtherName.Text := MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString;
    edtTaxNo.Text := MTDM.cdsDirector.FieldByName('TAX_NO').AsString;
    edtMobileNo.Text := MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString;
    edtEmailAddress.Text := MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString;
  end;

  edtFirstName.Properties.OnChange := ValueChanged;
  edtLastName.Properties.OnChange := ValueChanged;
  lucSalutation.Properties.OnChange := ValueChanged;
  edtOtherName.Properties.OnChange := ValueChanged;
  edtTaxNo.Properties.OnChange := ValueChanged;
  edtMobileNo.Properties.OnChange := ValueChanged;
  edtEmailAddress.Properties.OnChange := ValueChanged;
end;

procedure TDirectorDetailFrm.lucCompanyGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  MTDM.CompanyName := AText;
end;

procedure TDirectorDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(lucSalutation.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  MTDM.FFieldValue.SalutationID := lucSalutation.EditValue;
  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;
  MTDM.FFieldValue.OtherName := edtOtherName.Text;
  MTDM.FFieldValue.TaxNo := edtTaxNo.Text;
  MTDM.FFieldValue.MobileNo := edtMobileNo.Text;
  MTDM.FFieldValue.EmailAddress := edtEmailAddress.Text;

  ModalResult := mrOK;
end;

end.

