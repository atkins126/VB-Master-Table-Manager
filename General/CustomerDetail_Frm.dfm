inherited CustomerDetailFrm: TCustomerDetailFrm
  Caption = 'CustomerDetailFrm'
  ClientHeight = 531
  ClientWidth = 1004
  ExplicitWidth = 1020
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 795
    Height = 515
    LayoutLookAndFeel = lafCustomSkin
    ExplicitWidth = 795
    ExplicitHeight = 515
    object pagMain: TcxPageControl [0]
      Left = 11
      Top = 46
      Width = 773
      Height = 414
      Color = 16053234
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      Properties.ActivePage = tabContactDetail
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 408
      ClientRectLeft = 3
      ClientRectRight = 767
      ClientRectTop = 26
      object tabContactDetail: TcxTabSheet
        Caption = 'Contact Details'
        ImageIndex = 0
        object lucContactType: TcxDBLookupComboBox
          Left = 100
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'CONTACT_TYPE_ID'
          DataBinding.DataSource = MTDM.dtsContactDetailCo
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsContactType
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 250
        end
        object lbl1: TcxLabel
          Left = 15
          Top = 17
          Caption = 'Contact Type'
          Transparent = True
        end
        object lblContactDetailValue: TcxLabel
          Left = 20
          Top = 47
          Caption = 'Value'
          Transparent = True
        end
        object edtContactDetailValue: TcxDBTextEdit
          Left = 100
          Top = 45
          DataBinding.DataField = 'VALUE'
          DataBinding.DataSource = MTDM.dtsContactDetailCo
          TabOrder = 1
          Width = 250
        end
        object memContactDetailComment: TcxDBMemo
          Left = 100
          Top = 80
          DataBinding.DataField = 'COMMENT'
          DataBinding.DataSource = MTDM.dtsContactDetailCo
          Properties.ScrollBars = ssVertical
          TabOrder = 2
          Height = 100
          Width = 250
        end
        object lblComment1: TcxLabel
          Left = 20
          Top = 80
          Caption = 'Comment'
          Transparent = True
        end
      end
      object tabAddress: TcxTabSheet
        Caption = 'Address'
        ImageIndex = 1
        object grpPhysicalAddress: TcxGroupBox
          Left = 20
          Top = 15
          Caption = 'Physical Address'
          TabOrder = 0
          Height = 165
          Width = 300
          object lblPhysical1: TcxLabel
            Left = 15
            Top = 27
            Caption = 'Physical 1'
            Transparent = True
          end
          object lblPhysical2: TcxLabel
            Left = 15
            Top = 52
            Caption = 'Physical 2'
            Transparent = True
          end
          object lblPhysical3: TcxLabel
            Left = 15
            Top = 77
            Caption = 'Physical 3'
            Transparent = True
          end
          object lblPhysical4: TcxLabel
            Left = 15
            Top = 102
            Caption = 'Physical 4'
            Transparent = True
          end
          object lblPhysicalPostalCode: TcxLabel
            Left = 15
            Top = 127
            Caption = 'Postal Code'
            Transparent = True
          end
          object edtPhysical1: TcxDBTextEdit
            Left = 95
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'PHYSICAL1'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 5
            Width = 175
          end
          object edtPhysical2: TcxDBTextEdit
            Left = 95
            Top = 50
            BeepOnEnter = False
            DataBinding.DataField = 'PHYSICAL2'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 6
            Width = 175
          end
          object edtPhysical3: TcxDBTextEdit
            Left = 95
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'PHYSICAL3'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 7
            Width = 175
          end
          object edtPhysical4: TcxDBTextEdit
            Left = 95
            Top = 100
            BeepOnEnter = False
            DataBinding.DataField = 'PHYSICAL4'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 8
            Width = 175
          end
          object edtPhysicalPostalCode: TcxDBTextEdit
            Left = 95
            Top = 125
            BeepOnEnter = False
            DataBinding.DataField = 'PHYSICAL_CODE'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 9
            Width = 175
          end
        end
        object grpPostalAddress: TcxGroupBox
          Left = 420
          Top = 15
          Caption = 'Postal Address'
          TabOrder = 1
          Height = 165
          Width = 300
          object lblPostal1: TcxLabel
            Left = 10
            Top = 27
            Caption = 'Postal 1'
            Transparent = True
          end
          object lblPostal2: TcxLabel
            Left = 15
            Top = 52
            Caption = 'Postal 2'
            Transparent = True
          end
          object lblPostal3: TcxLabel
            Left = 15
            Top = 77
            Caption = 'Postal 3'
            Transparent = True
          end
          object lblPostal4: TcxLabel
            Left = 15
            Top = 102
            Caption = 'Postal 4'
            Transparent = True
          end
          object lblPostalCode: TcxLabel
            Left = 15
            Top = 127
            Caption = 'Postal Code'
            Transparent = True
          end
          object edtPostal1: TcxDBTextEdit
            Left = 95
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'POSTAL1'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 5
            Width = 175
          end
          object edtPostal2: TcxDBTextEdit
            Left = 95
            Top = 50
            BeepOnEnter = False
            DataBinding.DataField = 'POSTAL2'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 6
            Width = 175
          end
          object edtPostal3: TcxDBTextEdit
            Left = 95
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'POSTAL3'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 7
            Width = 175
          end
          object edtPostal4: TcxDBTextEdit
            Left = 95
            Top = 100
            BeepOnEnter = False
            DataBinding.DataField = 'POSTAL4'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 8
            Width = 175
          end
          object edtPostalCode: TcxDBTextEdit
            Left = 93
            Top = 127
            BeepOnEnter = False
            DataBinding.DataField = 'POSTAL_CODE'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 9
            Width = 175
          end
        end
        object grpBillingAddress: TcxGroupBox
          Left = 20
          Top = 195
          Caption = 'Billing Address'
          TabOrder = 2
          Height = 165
          Width = 300
          object lblBilling1: TcxLabel
            Left = 15
            Top = 27
            Caption = 'Billing 1'
            Transparent = True
          end
          object lblBilling2: TcxLabel
            Left = 15
            Top = 52
            Caption = 'Billing 2'
            Transparent = True
          end
          object lblBilling3: TcxLabel
            Left = 15
            Top = 77
            Caption = 'Billing 3'
            Transparent = True
          end
          object lblBilling4: TcxLabel
            Left = 15
            Top = 102
            Caption = 'Billing 4'
            Transparent = True
          end
          object lblBillingPostalCode: TcxLabel
            Left = 15
            Top = 127
            Caption = 'Postal Code'
            Transparent = True
          end
          object edtBilling1: TcxDBTextEdit
            Left = 95
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'BILLING1'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 5
            Width = 175
          end
          object edtBilling2: TcxDBTextEdit
            Left = 95
            Top = 50
            BeepOnEnter = False
            DataBinding.DataField = 'BILLING2'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 6
            Width = 175
          end
          object edtBilling3: TcxDBTextEdit
            Left = 95
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'BILLING3'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 7
            Width = 175
          end
          object edtBilling4: TcxDBTextEdit
            Left = 95
            Top = 100
            BeepOnEnter = False
            DataBinding.DataField = 'BILLING4'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 8
            Width = 175
          end
          object edtBillingPostalCode: TcxDBTextEdit
            Left = 95
            Top = 125
            BeepOnEnter = False
            DataBinding.DataField = 'BILLING_CODE'
            DataBinding.DataSource = MTDM.dtsAddress
            TabOrder = 9
            Width = 175
          end
        end
        object btnPhysicalToPostal: TcxButton
          Left = 330
          Top = 40
          Width = 75
          Height = 25
          Caption = 'uu'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 3'
          Font.Style = []
          ParentFont = False
        end
        object btnPostalToPhysical: TcxButton
          Left = 330
          Top = 70
          Width = 75
          Height = 25
          Caption = 'tt'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 3'
          Font.Style = []
          ParentFont = False
        end
        object btnPhysicalToBilling: TcxButton
          Left = 330
          Top = 115
          Width = 75
          Height = 25
          Caption = 'qq'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 3'
          Font.Style = []
          ParentFont = False
        end
        object btnBillingToPhysical: TcxButton
          Left = 330
          Top = 150
          Width = 75
          Height = 25
          Caption = 'pp'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 3'
          Font.Style = []
          ParentFont = False
        end
        object btnBillingToPostal: TcxButton
          Left = 330
          Top = 220
          Width = 75
          Height = 25
          Caption = 'uu'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 3'
          Font.Style = []
          ParentFont = False
        end
        object btnPostalToBilling: TcxButton
          Left = 330
          Top = 255
          Width = 75
          Height = 25
          Caption = 'tt'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 3'
          Font.Style = []
          ParentFont = False
        end
      end
      object tabContactPerson: TcxTabSheet
        Caption = 'Contact Persons'
        ImageIndex = 2
        object cbxPrimaryContact: TcxDBCheckBox
          Left = 240
          Top = 136
          Caption = 'Primary Contact'
          DataBinding.DataField = 'IS_PRIMARY_CONTACT'
          DataBinding.DataSource = MTDM.dtsContactPerson
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.UseAlignmentWhenInplace = True
          TabOrder = 9
          Transparent = True
        end
        object edtPFirstName: TcxDBTextEdit
          Left = 100
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'FIRST_NAME'
          DataBinding.DataSource = MTDM.dtsContactPerson
          TabOrder = 0
          Width = 121
        end
        object edtPLastName: TcxDBTextEdit
          Left = 100
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'LAST_NAME'
          DataBinding.DataSource = MTDM.dtsContactPerson
          TabOrder = 1
          Width = 121
        end
        object edtPInitials: TcxDBTextEdit
          Left = 320
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'INITIALS'
          DataBinding.DataSource = MTDM.dtsContactPerson
          TabOrder = 6
          Width = 121
        end
        object edtPOtherName: TcxDBTextEdit
          Left = 100
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'OTHER_NAME'
          DataBinding.DataSource = MTDM.dtsContactPerson
          TabOrder = 2
          Width = 121
        end
        object edtPIDNo: TcxDBTextEdit
          Left = 100
          Top = 105
          BeepOnEnter = False
          DataBinding.DataField = 'ID_NUMBER'
          DataBinding.DataSource = MTDM.dtsContactPerson
          TabOrder = 3
          Width = 121
        end
        object edtPPassportNo: TcxDBTextEdit
          Left = 100
          Top = 135
          BeepOnEnter = False
          DataBinding.DataField = 'PASSPORT_NUMBER'
          DataBinding.DataSource = MTDM.dtsContactPerson
          TabOrder = 4
          Width = 121
        end
        object lucPDOB: TcxDBDateEdit
          Left = 320
          Top = 75
          DataBinding.DataField = 'DOB'
          DataBinding.DataSource = MTDM.dtsContactPerson
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 7
          Width = 121
        end
        object lucPSalutation: TcxDBLookupComboBox
          Left = 320
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'SALUTATION_ID'
          DataBinding.DataSource = MTDM.dtsContactPerson
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsSalutation
          Properties.PostPopupValueOnTab = True
          TabOrder = 5
          Width = 145
        end
        object lucPJobFunction: TcxDBLookupComboBox
          Left = 320
          Top = 105
          BeepOnEnter = False
          DataBinding.DataField = 'JOB_FUNCTION_ID'
          DataBinding.DataSource = MTDM.dtsContactPerson
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.PostPopupValueOnTab = True
          TabOrder = 8
          Width = 145
        end
        object cxLabel1: TcxLabel
          Left = 15
          Top = 17
          Caption = 'First Name'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 15
          Top = 47
          Caption = 'Last Name'
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 240
          Top = 47
          Caption = 'Inititials'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Other Names'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 240
          Top = 77
          Caption = 'DOB'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 15
          Top = 107
          Caption = 'ID No'
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 15
          Top = 137
          Caption = 'Passport No'
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 240
          Top = 107
          Caption = 'Job Function'
          Transparent = True
        end
        object cxLabel9: TcxLabel
          Left = 240
          Top = 17
          Caption = 'Salutation'
          Transparent = True
        end
      end
      object tabContactDetailPerson: TcxTabSheet
        Caption = 'Contact Details'
        ImageIndex = 7
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lucPContactType: TcxDBLookupComboBox
          Left = 105
          Top = 20
          BeepOnEnter = False
          DataBinding.DataField = 'CONTACT_TYPE_ID'
          DataBinding.DataSource = MTDM.dtsContactDetailPerson
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsContactType
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 250
        end
        object cxLabel10: TcxLabel
          Left = 20
          Top = 22
          Caption = 'Contact Type'
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 25
          Top = 52
          Caption = 'Value'
          Transparent = True
        end
        object edtPContactDetailValue: TcxDBTextEdit
          Left = 105
          Top = 50
          DataBinding.DataField = 'VALUE'
          DataBinding.DataSource = MTDM.dtsContactDetailPerson
          TabOrder = 1
          Width = 250
        end
        object memPContactDetailComment: TcxDBMemo
          Left = 105
          Top = 85
          DataBinding.DataField = 'COMMENT'
          DataBinding.DataSource = MTDM.dtsContactDetailCo
          Properties.ScrollBars = ssVertical
          TabOrder = 2
          Height = 100
          Width = 250
        end
        object cxLabel12: TcxLabel
          Left = 25
          Top = 85
          Caption = 'Comment'
          Transparent = True
        end
      end
      object tabBankingDetail: TcxTabSheet
        Caption = 'Banking Details'
        ImageIndex = 3
        object edtBranchCode: TcxDBTextEdit
          Left = 100
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'BRANCH_CODE'
          DataBinding.DataSource = MTDM.dtsBankingDetail
          TabOrder = 1
          Width = 180
        end
        object edtAccNo: TcxDBTextEdit
          Left = 100
          Top = 105
          BeepOnEnter = False
          DataBinding.DataField = 'ACCOUNT_NO'
          DataBinding.DataSource = MTDM.dtsBankingDetail
          TabOrder = 3
          Width = 180
        end
        object edtBFirstName: TcxDBTextEdit
          Left = 370
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'FIRST_NAME'
          DataBinding.DataSource = MTDM.dtsBankingDetail
          TabOrder = 4
          Width = 180
        end
        object edtBLastName: TcxDBTextEdit
          Left = 370
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'LAST_NAME'
          DataBinding.DataSource = MTDM.dtsBankingDetail
          TabOrder = 5
          Width = 180
        end
        object lucBank: TcxDBLookupComboBox
          Left = 100
          Top = 18
          BeepOnEnter = False
          DataBinding.DataField = 'BANK_ID'
          DataBinding.DataSource = MTDM.dtsBankingDetail
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsBank
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 180
        end
        object lucAccType: TcxDBLookupComboBox
          Left = 100
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'ACCOUNT_TYPE_ID'
          DataBinding.DataSource = MTDM.dtsBankingDetail
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsBankAccountType
          Properties.PostPopupValueOnTab = True
          TabOrder = 2
          Width = 180
        end
        object cxLabel13: TcxLabel
          Left = 15
          Top = 17
          Caption = 'Bank'
          Transparent = True
        end
        object cxLabel14: TcxLabel
          Left = 15
          Top = 47
          Caption = 'Branch Code'
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Account Type'
          Transparent = True
        end
        object cxLabel16: TcxLabel
          Left = 15
          Top = 107
          Caption = 'Account no'
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 300
          Top = 17
          Caption = 'First Name'
          Transparent = True
        end
        object cxLabel18: TcxLabel
          Left = 300
          Top = 47
          Caption = 'Last Name'
          Transparent = True
        end
      end
      object tabDirector: TcxTabSheet
        Caption = 'Directors'
        ImageIndex = 4
        object edtDFirstName: TcxDBTextEdit
          Left = 100
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'FIRST_NAME'
          DataBinding.DataSource = MTDM.dtsDirector
          TabOrder = 0
          Width = 121
        end
        object edtDLastName: TcxDBTextEdit
          Left = 100
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'LAST_NAME'
          DataBinding.DataSource = MTDM.dtsDirector
          TabOrder = 1
          Width = 121
        end
        object edtDMiddleName: TcxDBTextEdit
          Left = 100
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'MIDDLE_NAME'
          DataBinding.DataSource = MTDM.dtsDirector
          TabOrder = 2
          Width = 121
        end
        object edtDTaxNo: TcxDBTextEdit
          Left = 320
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'TAX_NO'
          DataBinding.DataSource = MTDM.dtsDirector
          TabOrder = 4
          Width = 121
        end
        object edtDMobileNo: TcxDBTextEdit
          Left = 320
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'MOBILE_PHONE'
          DataBinding.DataSource = MTDM.dtsDirector
          TabOrder = 5
          Width = 121
        end
        object edtDEmailAddress: TcxDBTextEdit
          Left = 100
          Top = 105
          BeepOnEnter = False
          DataBinding.DataField = 'EMAIL_ADDRESS'
          DataBinding.DataSource = MTDM.dtsDirector
          TabOrder = 6
          Width = 341
        end
        object cxLabel19: TcxLabel
          Left = 240
          Top = 17
          Caption = 'Salutation'
          Transparent = True
        end
        object lucDSalutation: TcxDBLookupComboBox
          Left = 320
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'SALUTATION_ID'
          DataBinding.DataSource = MTDM.dtsDirector
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsSalutation
          Properties.PostPopupValueOnTab = True
          TabOrder = 3
          Width = 121
        end
        object cxLabel20: TcxLabel
          Left = 15
          Top = 17
          Caption = 'First Name'
          Transparent = True
        end
        object cxLabel21: TcxLabel
          Left = 15
          Top = 47
          Caption = 'Last Name'
          Transparent = True
        end
        object cxLabel22: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Other Name'
          Transparent = True
        end
        object cxLabel23: TcxLabel
          Left = 240
          Top = 47
          Caption = 'Tax No'
          Transparent = True
        end
        object cxLabel24: TcxLabel
          Left = 240
          Top = 77
          Caption = 'Mobile No'
          Transparent = True
        end
        object cxLabel25: TcxLabel
          Left = 15
          Top = 107
          Caption = 'Email'
          Transparent = True
        end
      end
      object tabBeneficiary: TcxTabSheet
        Caption = 'Beneficiaries'
        ImageIndex = 5
        object edtBFFirstname: TcxDBTextEdit
          Left = 100
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'FIRST_NAME'
          DataBinding.DataSource = MTDM.dtsBeneficiary
          TabOrder = 0
          Width = 121
        end
        object edtBFLastName: TcxDBTextEdit
          Left = 100
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'LAST_NAME'
          DataBinding.DataSource = MTDM.dtsBeneficiary
          TabOrder = 1
          Width = 121
        end
        object cxLabel26: TcxLabel
          Left = 25
          Top = 17
          Caption = 'First Name'
          Transparent = True
        end
        object cxLabel27: TcxLabel
          Left = 20
          Top = 47
          Caption = 'Last Name'
          Transparent = True
        end
        object cxLabel28: TcxLabel
          Left = 20
          Top = 77
          Caption = 'Email'
          Transparent = True
        end
        object edtBFEmailAddress: TcxDBTextEdit
          Left = 100
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'EMAIL_ADDRESS'
          DataBinding.DataSource = MTDM.dtsBeneficiary
          TabOrder = 4
          Width = 341
        end
        object cxLabel29: TcxLabel
          Left = 240
          Top = 47
          Caption = 'Mobile No'
          Transparent = True
        end
        object edtBFMobileNo: TcxDBTextEdit
          Left = 320
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'MOBILE_PHONE'
          DataBinding.DataSource = MTDM.dtsBeneficiary
          TabOrder = 3
          Width = 121
        end
        object cxLabel30: TcxLabel
          Left = 240
          Top = 17
          Caption = 'Salutation'
          Transparent = True
        end
        object lucBFSalutation: TcxDBLookupComboBox
          Left = 320
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'SALUTATION_ID'
          DataBinding.DataSource = MTDM.dtsBeneficiary
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsSalutation
          Properties.PostPopupValueOnTab = True
          TabOrder = 2
          Width = 121
        end
      end
      object tabVehicle: TcxTabSheet
        Caption = 'Vehicles'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object edtModel: TcxDBTextEdit
          Left = 80
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'VEHICLE_MODEL'
          DataBinding.DataSource = MTDM.dtsVehicle
          TabOrder = 2
          Width = 160
        end
        object edtRegNo: TcxDBTextEdit
          Left = 345
          Top = 15
          BeepOnEnter = False
          DataBinding.DataField = 'REG_NO'
          DataBinding.DataSource = MTDM.dtsVehicle
          TabOrder = 3
          Width = 121
        end
        object edtYear: TcxDBCurrencyEdit
          Left = 80
          Top = 15
          DataBinding.DataField = 'THE_YEAR'
          DataBinding.DataSource = MTDM.dtsVehicle
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '####'
          Properties.EditFormat = '####'
          Properties.UseDisplayFormatWhenEditing = True
          TabOrder = 0
          Width = 160
        end
        object lucRenewlDate: TcxDBDateEdit
          Left = 345
          Top = 45
          DataBinding.DataField = 'RENEWAL_DATE'
          DataBinding.DataSource = MTDM.dtsVehicle
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 4
          Width = 121
        end
        object memVComment: TcxDBMemo
          Left = 80
          Top = 102
          DataBinding.DataField = 'COMMENT'
          DataBinding.DataSource = MTDM.dtsVehicle
          Properties.ScrollBars = ssVertical
          TabOrder = 6
          Height = 100
          Width = 386
        end
        object lucVehicleMake: TcxDBLookupComboBox
          Left = 80
          Top = 45
          BeepOnEnter = False
          DataBinding.DataField = 'VEHICLE_MAKE_ID'
          DataBinding.DataSource = MTDM.dtsVehicle
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = LookupDM.dtsVehicleMake
          Properties.PostPopupValueOnTab = True
          TabOrder = 1
          Width = 160
        end
        object cbxMaintenancePlan: TcxDBCheckBox
          Left = 255
          Top = 76
          Caption = 'Maintenance Plan'
          DataBinding.DataField = 'MAINTENANCE_PLAN'
          DataBinding.DataSource = MTDM.dtsVehicle
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.UseAlignmentWhenInplace = True
          TabOrder = 5
          Transparent = True
        end
        object cxLabel31: TcxLabel
          Left = 15
          Top = 17
          Caption = 'Year'
          Transparent = True
        end
        object cxLabel32: TcxLabel
          Left = 15
          Top = 47
          Caption = 'Make'
          Transparent = True
        end
        object cxLabel33: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Model'
          Transparent = True
        end
        object cxLabel34: TcxLabel
          Left = 255
          Top = 17
          Caption = 'Reg No'
          Transparent = True
        end
        object cxLabel35: TcxLabel
          Left = 255
          Top = 47
          Caption = 'Renewal Date'
          Transparent = True
        end
        object cxLabel36: TcxLabel
          Left = 15
          Top = 102
          Caption = 'Comment'
          Transparent = True
        end
      end
    end
    object btnSave: TcxButton [1]
      Left = 628
      Top = 466
      Width = 75
      Height = 25
      Caption = 'Save'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnCancel: TcxButton [2]
      Left = 709
      Top = 466
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object lblHeaderTitle: TcxLabel [3]
      Left = 11
      Top = 11
      Caption = 'Banking Details'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styHeaderFont
      Transparent = True
    end
    object grpForm: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litPagControl: TdxLayoutItem
      Parent = grpForm
      Control = pagMain
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 414
      ControlOptions.OriginalWidth = 606
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litSave: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litHeaderTitle: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = lblHeaderTitle
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited styRepository: TcxStyleRepository
    Top = 150
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Top = 150
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Top = 205
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 13435085
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 13435155
  end
  object styHeaderFont: TcxEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Left = 450
    Top = 205
    PixelsPerInch = 96
  end
  object repScreenTip: TdxScreenTipRepository
    AssignedFonts = [stbHeader, stbDescription, stbFooter]
    DescriptionFont.Charset = ANSI_CHARSET
    DescriptionFont.Color = 5000268
    DescriptionFont.Height = -11
    DescriptionFont.Name = 'Verdana'
    DescriptionFont.Style = []
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = 5000268
    FooterFont.Height = -12
    FooterFont.Name = 'Verdana'
    FooterFont.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -12
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    Left = 485
    Top = 330
    PixelsPerInch = 96
    object tipSave: TdxScreenTip
      Header.Text = 'Save'
      Description.Text = 'Save changes'
    end
    object tipCancel: TdxScreenTip
      Header.Text = 'Cancel'
      Description.Text = 'Cnacle changes made'#13#10
    end
    object tipPhysicalToPostal: TdxScreenTip
      Header.Text = 'Physical to Postal'
      Description.Text = 'Make Postal same as Physical'
    end
    object tipPostalToPhysical: TdxScreenTip
      Header.Text = 'Postal To Physical'
      Description.Text = 'Make Physical same as Postal'
    end
    object tipPhysicalToBilling: TdxScreenTip
      Header.Text = 'Physical To Billing'
      Description.Text = 'Make Billing same as Physical'
    end
    object tipBillingToPhysical: TdxScreenTip
      Header.Text = 'Billing To Physical'
      Description.Text = 'Make Physical same as Billing'
    end
    object tipPostalToBilling: TdxScreenTip
      Header.Text = 'Postal To Billing'
      Description.Text = 'Make Billing same as Postal'
    end
    object tipBillingToPostal: TdxScreenTip
      Header.Text = 'Billing To Postal'
      Description.Text = 'Make Postal same as Billing'#13#10
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipPhysicalToPostal
        Control = btnPhysicalToPostal
      end
      item
        ScreenTip = tipPostalToPhysical
        Control = btnPostalToPhysical
      end
      item
        ScreenTip = tipPhysicalToBilling
        Control = btnPhysicalToBilling
      end
      item
        ScreenTip = tipBillingToPhysical
        Control = btnBillingToPhysical
      end
      item
        ScreenTip = tipPostalToBilling
        Control = btnPostalToBilling
      end
      item
        ScreenTip = tipBillingToPostal
        Control = btnBillingToPostal
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 3000
    Left = 575
    Top = 329
  end
end
