inherited CustomerEditFrm: TCustomerEditFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CustomerEditFrm'
  ClientHeight = 744
  ClientWidth = 911
  ExplicitWidth = 917
  ExplicitHeight = 773
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 806
    Height = 656
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 806
    ExplicitHeight = 656
    object btnOK: TcxButton [0]
      Left = 639
      Top = 620
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 35
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [1]
      Left = 720
      Top = 620
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 36
    end
    object lblCustomerHeader: TcxLabel [2]
      Left = 11
      Top = 11
      Caption = 'Modifying Existing Customer'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtCustomerName: TcxTextEdit [3]
      Left = 110
      Top = 103
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 369
    end
    object edtCoNo: TcxTextEdit [4]
      Left = 110
      Top = 153
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      OnKeyPress = edtCoNoKeyPress
      Width = 369
    end
    object edtTradingAs: TcxTextEdit [5]
      Left = 110
      Top = 203
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 369
    end
    object edtBillTo: TcxTextEdit [6]
      Left = 110
      Top = 228
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 369
    end
    object lucCustomerType: TcxLookupComboBox [7]
      Left = 110
      Top = 78
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.OnEditValueChanged = lucCustomerTypePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 369
    end
    object lucStatus: TcxLookupComboBox [8]
      Left = 110
      Top = 178
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 369
    end
    object cbxIsActive: TcxCheckBox [9]
      Left = 20
      Top = 253
      Caption = 'Is Active'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Transparent = True
    end
    object lucYearEnd: TcxLookupComboBox [10]
      Left = 110
      Top = 321
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 369
    end
    object lucTaxOffice: TcxLookupComboBox [11]
      Left = 110
      Top = 371
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 369
    end
    object lucARMonth: TcxLookupComboBox [12]
      Left = 110
      Top = 396
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 369
    end
    object edtTaxNo: TcxTextEdit [13]
      Left = 110
      Top = 346
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      OnKeyPress = edtCoNoKeyPress
      Width = 369
    end
    object lucVATOffice: TcxLookupComboBox [14]
      Left = 110
      Top = 514
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Width = 369
    end
    object lucVATMonth: TcxLookupComboBox [15]
      Left = 110
      Top = 489
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Width = 369
    end
    object lucVATCountry: TcxLookupComboBox [16]
      Left = 110
      Top = 539
      BeepOnEnter = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Width = 369
    end
    object edtVATNo: TcxTextEdit [17]
      Left = 110
      Top = 464
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      OnKeyPress = edtCoNoKeyPress
      Width = 369
    end
    object edtVATCustomsCode: TcxTextEdit [18]
      Left = 110
      Top = 564
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      OnKeyPress = edtCoNoKeyPress
      Width = 369
    end
    object edtPAYENo: TcxTextEdit [19]
      Left = 608
      Top = 78
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtSDLNo: TcxTextEdit [20]
      Left = 608
      Top = 128
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtWCNo: TcxTextEdit [21]
      Left = 608
      Top = 153
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtEFiling: TcxTextEdit [22]
      Left = 608
      Top = 203
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 25
      Width = 150
    end
    object edtEFUserName: TcxTextEdit [23]
      Left = 608
      Top = 228
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 26
      Width = 150
    end
    object edtEFPassword: TcxTextEdit [24]
      Left = 608
      Top = 253
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      Width = 150
    end
    object dteARCompletionDate: TcxDateEdit [25]
      Left = 608
      Top = 178
      Properties.ClearKey = 46
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      Width = 150
    end
    object edtPastelAccCode: TcxTextEdit [26]
      Left = 608
      Top = 321
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 28
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtVBTaxAccCode: TcxTextEdit [27]
      Left = 608
      Top = 346
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 29
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object cbxProvTaxPayer: TcxCheckBox [28]
      Left = 503
      Top = 371
      Caption = 'Prov Tax Payer'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 30
      Transparent = True
    end
    object cbxLivingWill: TcxCheckBox [29]
      Left = 503
      Top = 396
      Caption = 'Living Will'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 31
      Transparent = True
    end
    object cbxOrganDonor: TcxCheckBox [30]
      Left = 503
      Top = 421
      Caption = 'Organ Donor'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 32
      Transparent = True
    end
    object dteCreated: TcxDateEdit [31]
      Left = 608
      Top = 446
      TabStop = False
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Width = 150
    end
    object dteModified: TcxDateEdit [32]
      Left = 608
      Top = 471
      TabStop = False
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 34
      Width = 150
    end
    object edtFirstName: TcxTextEdit [33]
      Left = 110
      Top = 128
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 130
    end
    object edtLastName: TcxTextEdit [34]
      Left = 275
      Top = 128
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 130
    end
    object edtInitials: TcxTextEdit [35]
      Left = 434
      Top = 128
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 45
    end
    object edtUIFNo: TcxTextEdit [36]
      Left = 608
      Top = 103
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    object grpCustomer: TdxLayoutGroup
      Parent = grpRoot
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grpOther: TdxLayoutGroup
      Parent = grpRoot
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grpRoot: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litCustomerName: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'Name'
      Control = edtCustomerName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litCoNo: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Co No'
      Control = edtCoNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litStatus: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'Status'
      Control = lucStatus
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litTradingAs: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Trading As'
      Control = edtTradingAs
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litBillTo: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Bill To'
      Control = edtBillTo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object litActive: TdxLayoutItem
      Parent = grpGeneralInfo
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Is Active'
      CaptionOptions.Visible = False
      Control = cbxIsActive
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object grpGeneralInfo: TdxLayoutGroup
      Parent = grpCustomer
      CaptionOptions.Text = 'Generral Information'
      ButtonOptions.Buttons = <>
      ItemIndex = 6
      Index = 0
    end
    object litCustomerType: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'Cust Type'
      Control = lucCustomerType
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpTaxInfo: TdxLayoutGroup
      Parent = grpCustomer
      CaptionOptions.Text = 'Tax Infomration'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object litYearEndMonth: TdxLayoutItem
      Parent = grpTaxInfo
      CaptionOptions.Text = 'Year End'
      Control = lucYearEnd
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litTaxNo: TdxLayoutItem
      Parent = grpTaxInfo
      CaptionOptions.Text = 'Tax No'
      Control = edtTaxNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litTaxOffice: TdxLayoutItem
      Parent = grpTaxInfo
      CaptionOptions.Text = 'Tax Office'
      Control = lucTaxOffice
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litARMonth: TdxLayoutItem
      Parent = grpTaxInfo
      CaptionOptions.Text = 'AR Month'
      Control = lucARMonth
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grpVATInfo: TdxLayoutGroup
      Parent = grpCustomer
      CaptionOptions.Text = 'VAT Information'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object litVATNo: TdxLayoutItem
      Parent = grpVATInfo
      CaptionOptions.Text = 'VAT No'
      Control = edtVATNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litVATOffice: TdxLayoutItem
      Parent = grpVATInfo
      CaptionOptions.Text = 'VAT Office'
      Control = lucVATOffice
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litVATCountry: TdxLayoutItem
      Parent = grpVATInfo
      CaptionOptions.Text = 'VAT Country'
      Control = lucVATCountry
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litCustomsCode: TdxLayoutItem
      Parent = grpVATInfo
      CaptionOptions.Text = 'Customs Code'
      Control = edtVATCustomsCode
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litVATMonth: TdxLayoutItem
      Parent = grpVATInfo
      CaptionOptions.Text = 'VAT Month'
      Control = lucVATMonth
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpSARS: TdxLayoutGroup
      Parent = grpOther
      CaptionOptions.Text = 'SARS Information'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object litPAYENo: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'PAYE No'
      Control = edtPAYENo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litSDLNo: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'SDL No'
      Control = edtSDLNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litWCNo: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'WC No'
      Control = edtWCNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litARCmpletionDate: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'AR Comp Date'
      Control = dteARCompletionDate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litEFiling: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'EFiling'
      Control = edtEFiling
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litEFUserName: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'EF User Name'
      Control = edtEFUserName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object litEFPassword: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'EF Password'
      Control = edtEFPassword
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object grpMiscellaneous: TdxLayoutGroup
      Parent = grpOther
      CaptionOptions.Text = 'Miscellaneous Info'
      ButtonOptions.Buttons = <>
      ItemIndex = 6
      Index = 1
    end
    object litPastelAccCode: TdxLayoutItem
      Parent = grpMiscellaneous
      CaptionOptions.Text = 'Pastel Acc Code'
      Control = edtPastelAccCode
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litVBTaxAccCode: TdxLayoutItem
      Parent = grpMiscellaneous
      CaptionOptions.Text = 'VB Tax Acc Code'
      Control = edtVBTaxAccCode
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLivingWill: TdxLayoutItem
      Parent = grpMiscellaneous
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Living Will'
      CaptionOptions.Visible = False
      Control = cbxLivingWill
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litOrganDonor: TdxLayoutItem
      Parent = grpMiscellaneous
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Organ Donor'
      CaptionOptions.Visible = False
      Control = cbxOrganDonor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litCreated: TdxLayoutItem
      Parent = grpMiscellaneous
      CaptionOptions.Text = 'Created'
      Control = dteCreated
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litModified: TdxLayoutItem
      Parent = grpMiscellaneous
      CaptionOptions.Text = 'Modified'
      Control = dteModified
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object litProvTaxPayer: TdxLayoutItem
      Parent = grpMiscellaneous
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Prov Tax Payer'
      CaptionOptions.Visible = False
      Control = cbxProvTaxPayer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 108
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpCustomerHeader: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object litOK: TdxLayoutItem
      Parent = grpButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object sep1: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object litCustomerHeader: TdxLayoutItem
      Parent = grpCustomerHeader
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblCustomerHeader
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object sep2: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object grpIndividual: TdxLayoutGroup
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litFirstName: TdxLayoutItem
      Parent = grpIndividual
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpIndividual
      CaptionOptions.Text = 'Last'
      Control = edtLastName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litInitials: TdxLayoutItem
      Parent = grpIndividual
      CaptionOptions.Text = 'init'
      Control = edtInitials
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litLegend: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'Indicates a mandatory field'
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litUIFNo: TdxLayoutItem
      Parent = grpSARS
      CaptionOptions.Text = 'UIF No'
      Control = edtUIFNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
  end
  inherited img32: TcxImageList
    FormatVersion = 1
  end
  object styMandatory: TcxEditStyleController
    Style.Color = clRed
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Left = 344
    Top = 124
    PixelsPerInch = 96
  end
end
