inherited ContactPersonFrm: TContactPersonFrm
  Caption = 'ContactPersonFrm'
  ClientHeight = 281
  ClientWidth = 544
  ExplicitWidth = 550
  ExplicitHeight = 310
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = -2
    Top = -2
    Width = 540
    Height = 275
    ExplicitLeft = -2
    ExplicitTop = -2
    ExplicitWidth = 540
    ExplicitHeight = 275
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 518
    end
    inherited btnOK: TcxButton
      Left = 373
      Top = 239
      TabOrder = 15
      OnClick = btnOKClick
      ExplicitLeft = 373
      ExplicitTop = 239
    end
    inherited btnCancel: TcxButton
      Left = 454
      Top = 239
      TabOrder = 16
      ExplicitLeft = 454
      ExplicitTop = 239
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 508
      Width = 508
    end
    object edtFirstName: TcxTextEdit [4]
      Left = 98
      Top = 76
      BeepOnEnter = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Width = 160
    end
    object lucSalutation: TcxLookupComboBox [5]
      Left = 98
      Top = 103
      BeepOnEnter = False
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
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Width = 160
    end
    object edtOtherName: TcxTextEdit [6]
      Left = 98
      Top = 130
      BeepOnEnter = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 6
      Width = 160
    end
    object edtIDNo: TcxTextEdit [7]
      Left = 98
      Top = 157
      BeepOnEnter = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 9
      Width = 160
    end
    object lucJobFunction: TcxLookupComboBox [8]
      Left = 98
      Top = 184
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
      Properties.ListSource = LookupDM.dtsJobFunction
      Properties.PostPopupValueOnTab = True
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 12
      Width = 160
    end
    object edtLastName: TcxTextEdit [9]
      Left = 351
      Top = 76
      BeepOnEnter = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Width = 160
    end
    object edtInitials: TcxTextEdit [10]
      Left = 351
      Top = 103
      BeepOnEnter = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Width = 160
    end
    object dteDOB: TcxDateEdit [11]
      Left = 351
      Top = 130
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 8
      Width = 160
    end
    object edtPassportNo: TcxTextEdit [12]
      Left = 351
      Top = 157
      BeepOnEnter = False
      Properties.OnChange = edtFirstNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 11
      Width = 160
    end
    object cbxPrimaryContact: TcxCheckBox [13]
      Left = 277
      Top = 184
      Caption = 'Primary Contact'
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
    end
    object lbl1: TcxLabel [14]
      Left = 264
      Top = 130
      Caption = ' '
      ParentFont = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 139
    end
    object lbl2: TcxLabel [15]
      Left = 264
      Top = 157
      Caption = ' '
      ParentFont = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 166
    end
    object lbl3: TcxLabel [16]
      Left = 264
      Top = 184
      Caption = ' '
      ParentFont = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 193
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 1
    end
    object grpName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpSalutation: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpOtherName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpIDNo: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'First name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litSalutation: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Salutation'
      Control = lucSalutation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litOtherName: TdxLayoutItem
      Parent = grpOtherName
      CaptionOptions.Text = 'Other Name'
      Control = edtOtherName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litInitials: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Initials'
      Control = edtInitials
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litDOB: TdxLayoutItem
      Parent = grpOtherName
      CaptionOptions.Text = 'DOB        '
      Control = dteDOB
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litIDNo: TdxLayoutItem
      Parent = grpIDNo
      CaptionOptions.Text = 'ID No'
      Control = edtIDNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPassportNo: TdxLayoutItem
      Parent = grpIDNo
      CaptionOptions.Text = 'Passport No'
      Control = edtPassportNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPrimaryContact: TdxLayoutItem
      Parent = grpJobFunction
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxPrimaryContact
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litJobFunction: TdxLayoutItem
      Parent = grpJobFunction
      CaptionOptions.Text = 'Job Function'
      Control = lucJobFunction
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpJobFunction: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object litLabel1: TdxLayoutItem
      Parent = grpOtherName
      CaptionOptions.Visible = False
      Control = lbl1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLabel2: TdxLayoutItem
      Parent = grpIDNo
      CaptionOptions.Visible = False
      Control = lbl2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLabel3: TdxLayoutItem
      Parent = grpJobFunction
      CaptionOptions.Visible = False
      Control = lbl3
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
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
  inherited repScreenTip: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited stySubTitle: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styHeaderFont: TcxEditStyleController
    PixelsPerInch = 96
  end
end
