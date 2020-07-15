unit NewDirectorOfCompany_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.Controls, Vcl.Dialogs,

  BaseLayout_Frm,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutcxEditAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutControlAdapters;

type
  TNewDirectorOfCompanyFrm = class(TBaseLayoutFrm)
    cbxSelectFromCustomer: TcxCheckBox;
    lucCustomer: TcxLookupComboBox;
    edtFirstName: TcxTextEdit;
    edtLastName: TcxTextEdit;
    grpDirector: TdxLayoutGroup;
    edtIDNumber: TcxTextEdit;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litIDNumber: TdxLayoutItem;
    grpDirectorSource: TdxLayoutGroup;
    litDirectorSelection: TdxLayoutItem;
    litDirectorList: TdxLayoutItem;
    grpDirectorList: TdxLayoutGroup;
    grpControls: TdxLayoutGroup;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    sep1: TdxLayoutSeparatorItem;
    grpDirectorName: TdxLayoutGroup;
    litSalutation: TdxLayoutItem;
    lucSalutation: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbxSelectFromCustomerPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewDirectorOfCompanyFrm: TNewDirectorOfCompanyFrm;

implementation

{$R *.dfm}

uses TS_DM;

procedure TNewDirectorOfCompanyFrm.cbxSelectFromCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  grpDirectorList.Visible := cbxSelectFromCustomer.Checked;
  grpDirectorName.Visible := not grpDirectorList.Visible;
end;

procedure TNewDirectorOfCompanyFrm.FormCreate(Sender: TObject);
begin
  Caption := 'New Director';
  cbxSelectFromCustomer.Checked := True;
  lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookup;
end;

end.



