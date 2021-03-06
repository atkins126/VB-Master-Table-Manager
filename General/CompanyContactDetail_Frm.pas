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
    litConatctType: TdxLayoutItem;
    lucContactType: TcxLookupComboBox;
    litValue: TdxLayoutItem;
    litComment: TdxLayoutItem;
    grpContactType: TdxLayoutGroup;
    grpValue: TdxLayoutGroup;
    litCharCount: TdxLayoutItem;
    lblCharCount: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure memCommentPropertiesChange(Sender: TObject);
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

  MTDM.ClearFieldValues;
  lucContactType.Properties.ListSource := LookupDM.dtsContactType;
  lblCharCount.Caption := 'Characters Left: ' + memComment.Properties.MaxLength.ToString;

  if VBBaseDM.DBAction = acEdit then
  begin
    lucContactType.EditValue := MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger;
    edtValue.Text := MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString;
    memComment.Text := MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString;
  end;

  lucContactType.Properties.OnChange := ValueChanged;
  edtValue.Properties.OnChange := ValueChanged;
  memComment.Properties.OnChange := ValueChanged;
end;

procedure TCompanyContactDetailFrm.memCommentPropertiesChange(Sender: TObject);
begin
  inherited;
  lblCharCount.Caption := 'Characters left: ' + IntToStr(memComment.Properties.MaxLength - Length(memComment.Text));
end;

procedure TCompanyContactDetailFrm.Validate;
begin
  if SameText(lucContactType.Text, '') then
    raise EValidateException.Create('Contact type must have a value');

  if SameText(TrimAll(edtValue.Text), '') then
    raise EValidateException.Create(lucContactType.Text + ' must have a value');

  MTDM.FieldValue.ContactTypeID := VarAsType(lucContactType.EditValue, varInteger);
  MTDM.FieldValue.ContactType := lucContactType.Text;
  MTDM.FieldValue.TextValue := TrimAll(edtValue.Text);
  MTDM.FieldValue.Comment := TrimAll(memComment.Text);

  ModalResult := mrOK;
end;

end.

