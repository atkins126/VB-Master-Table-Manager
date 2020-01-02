unit CompanyContactDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.ActnList, Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, cxClasses, dxCustomHint, cxHint, cxMemo,
  cxImageList, dxLayoutLookAndFeels, cxStyles, dxLayoutContainer, cxButtons,
  cxLabel, dxLayoutControl, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel;

type
  TCompanyContactDetailFrm = class(TBaseCustomerEditFrm)
    edtValue: TcxTextEdit;
    memComment: TcxMemo;
    lblReq1: TcxLabel;
    lblReq2: TcxLabel;
    litConatctType: TdxLayoutItem;
    lucContactType: TcxLookupComboBox;
    litValue: TdxLayoutItem;
    litComment: TdxLayoutItem;
    litReq1: TdxLayoutItem;
    litReq2: TdxLayoutItem;
    grpContactType: TdxLayoutGroup;
    grpValue: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  CompanyContactDetailFrm: TCompanyContactDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TCompanyContactDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TCompanyContactDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
//  Caption := 'Copany Contact Detail';
  // Runtime Width = 390; Height = 335
//  VBBaseDM.Customer :=  TCustomerDetail.Create;
//  VBBaseDM.Customer.ClearValues;
//  Self.Width := 390; //layMain.Width; // 390;
//  Self.Height := 310; //layMain.Height + EDIT_FORM_HEIGHT_OFFSET;
//  layMain.Align := alClient;
//  lucContactType.Properties.ListSource := LookupDM.dtsContactType;
//  layMain.Align := alClient;

  lucContactType.Properties.ListSource := LookupDM.dtsContactType;

  if VBBaseDM.DBAction = acModify then
  begin
    lucContactType.EditValue := MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger;
    edtValue.Text := MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString;
    memComment.Text := MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString;
  end;
end;

procedure TCompanyContactDetailFrm.Validate;
begin
  if SameText(lucContactType.Text, '') then
    raise EValidateException.Create('Contact type must have a value');

  if SameText(TrimAll(edtValue.Text), '') then
    raise EValidateException.Create(lucContactType.Text + ' must have a value');

  MTDM.FFieldValue.ContactTypeID := VarAsType(lucContactType.EditValue, varInteger);
  MTDM.FFieldValue.ContactType := lucContactType.Text;
  MTDM.FFieldValue.TextValue := TrimAll(edtValue.Text);
  MTDM.FFieldValue.Comment := TrimAll(memComment.Text);

  ModalResult := mrOK;
end;

end.

