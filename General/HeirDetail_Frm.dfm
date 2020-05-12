inherited HeirDetailFrm: THeirDetailFrm
  Caption = 'HeirDetailFrm'
  ClientHeight = 641
  ClientWidth = 787
  ExplicitWidth = 793
  ExplicitHeight = 670
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 690
    Height = 565
    ExplicitWidth = 690
    ExplicitHeight = 565
    inherited lblHeaderTitle: TcxLabel
      Caption = 'Heir Details'
      ExplicitWidth = 668
    end
    inherited btnOK: TcxButton
      Left = 523
      Top = 529
      TabOrder = 24
      OnClick = btnOKClick
      ExplicitLeft = 523
      ExplicitTop = 529
    end
    inherited btnCancel: TcxButton
      Left = 604
      Top = 529
      TabOrder = 25
      ExplicitLeft = 604
      ExplicitTop = 529
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 658
      Width = 658
    end
    object edtFirstName: TcxTextEdit [4]
      Left = 108
      Top = 107
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 220
    end
    object lucSalutation: TcxLookupComboBox [5]
      Left = 108
      Top = 132
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = LookupDM.dtsSHSalutation
      Properties.PostPopupValueOnTab = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 220
    end
    object edtLastName: TcxTextEdit [6]
      Left = 424
      Top = 107
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 220
    end
    object edtIDNo: TcxTextEdit [7]
      Left = 424
      Top = 132
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 220
    end
    object edtPhysical1: TcxTextEdit [8]
      Left = 108
      Top = 373
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 220
    end
    object edtPhysical2: TcxTextEdit [9]
      Left = 108
      Top = 398
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Width = 220
    end
    object edtPhysical3: TcxTextEdit [10]
      Left = 108
      Top = 423
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Width = 220
    end
    object edtPhysical4: TcxTextEdit [11]
      Left = 108
      Top = 448
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Width = 220
    end
    object edtPhysicalCode: TcxTextEdit [12]
      Left = 108
      Top = 473
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Width = 220
    end
    object edtPostal1: TcxTextEdit [13]
      Left = 445
      Top = 373
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Width = 220
    end
    object edtPostal2: TcxTextEdit [14]
      Left = 445
      Top = 398
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Width = 220
    end
    object edtPostal3: TcxTextEdit [15]
      Left = 445
      Top = 423
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      Width = 220
    end
    object edtPostal4: TcxTextEdit [16]
      Left = 445
      Top = 448
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Width = 220
    end
    object edtPostalCode: TcxTextEdit [17]
      Left = 445
      Top = 473
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      Width = 220
    end
    object edtHAHFirstName: TcxTextEdit [18]
      Left = 108
      Top = 243
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 220
    end
    object lucHAHSalutation: TcxLookupComboBox [19]
      Left = 108
      Top = 215
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = LookupDM.dtsSHSalutation
      Properties.PostPopupValueOnTab = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 220
    end
    object edtHAHLastName: TcxTextEdit [20]
      Left = 424
      Top = 243
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 220
    end
    object lucBank: TcxLookupComboBox [21]
      Left = 108
      Top = 268
      BeepOnEnter = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 220
    end
    object lucAccType: TcxLookupComboBox [22]
      Left = 108
      Top = 293
      BeepOnEnter = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 220
    end
    object edtBranchCode: TcxTextEdit [23]
      Left = 424
      Top = 268
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 220
    end
    object edtAccNo: TcxTextEdit [24]
      Left = 424
      Top = 293
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 220
    end
    object btnAccHolderNameSameAsHeirName: TcxButton [25]
      Left = 416
      Top = 212
      Width = 235
      Height = 25
      Caption = 'Acc holder name same as heir name'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnAccHolderNameSameAsHeirNameClick
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 2
    end
    object grpName: TdxLayoutGroup
      Parent = grpHeirDetails
      CaptionOptions.Text = 'New group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpSalutation: TdxLayoutGroup
      Parent = grpHeirDetails
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpAddress: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object grpPhysicalAddress: TdxLayoutGroup
      Parent = grpAddress
      CaptionOptions.Text = 'Physical Address'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object grpPostalAddress: TdxLayoutGroup
      Parent = grpAddress
      CaptionOptions.Text = 'Postal Address'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      Index = 2
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
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
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
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
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
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litIDNumber: TdxLayoutItem
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
      CaptionOptions.Text = 'ID Number'
      Control = edtIDNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPhysical1: TdxLayoutItem
      Parent = grpPhysicalAddress
      CaptionOptions.Text = 'Line 1'
      Control = edtPhysical1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPhysical2: TdxLayoutItem
      Parent = grpPhysicalAddress
      CaptionOptions.Text = 'Line 2'
      Control = edtPhysical2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPhysical3: TdxLayoutItem
      Parent = grpPhysicalAddress
      CaptionOptions.Text = 'Line 3'
      Control = edtPhysical3
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPhysical4: TdxLayoutItem
      Parent = grpPhysicalAddress
      CaptionOptions.Text = 'Line 4'
      Control = edtPhysical4
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litPhysicalCode: TdxLayoutItem
      Parent = grpPhysicalAddress
      CaptionOptions.Text = 'Post Code'
      Control = edtPhysicalCode
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litPostal1: TdxLayoutItem
      Parent = grpPostalAddress
      CaptionOptions.Text = 'Line 1'
      Control = edtPostal1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPostal2: TdxLayoutItem
      Parent = grpPostalAddress
      CaptionOptions.Text = 'Line 2'
      Control = edtPostal2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPostal3: TdxLayoutItem
      Parent = grpPostalAddress
      CaptionOptions.Text = 'Line 3'
      Control = edtPostal3
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPostal4: TdxLayoutItem
      Parent = grpPostalAddress
      CaptionOptions.Text = 'Line 4'
      Control = edtPostal4
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litPostalCode: TdxLayoutItem
      Parent = grpPostalAddress
      CaptionOptions.Text = 'Post Code'
      Control = edtPostalCode
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object sep3: TdxLayoutSeparatorItem
      Parent = grpData
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object grpAccountHolder: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'Account Holder Banking Details'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object grpAHName: TdxLayoutGroup
      Parent = grpAccountHolder
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpAHSalutation: TdxLayoutGroup
      Parent = grpAccountHolder
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpAHBank: TdxLayoutGroup
      Parent = grpAccountHolder
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpAHAccount: TdxLayoutGroup
      Parent = grpAccountHolder
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litAHFirstName: TdxLayoutItem
      Parent = grpAHName
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
      CaptionOptions.Text = 'First Name'
      Control = edtHAHFirstName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAHLastName: TdxLayoutItem
      Parent = grpAHName
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
      Control = edtHAHLastName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litAHSalutation: TdxLayoutItem
      Parent = grpAHSalutation
      AlignVert = avCenter
      CaptionOptions.Text = 'Salutation'
      Control = lucHAHSalutation
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAHBank: TdxLayoutItem
      Parent = grpAHBank
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
      CaptionOptions.Text = 'Bank'
      Control = lucBank
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAHBranchCode: TdxLayoutItem
      Parent = grpAHBank
      CaptionOptions.Text = 'Branch Code'
      Control = edtBranchCode
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litAHAccountType: TdxLayoutItem
      Parent = grpAHAccount
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
      CaptionOptions.Text = 'Acc Type'
      Control = lucAccType
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAHAccountNo: TdxLayoutItem
      Parent = grpAHAccount
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
      CaptionOptions.Text = 'Acc No'
      Control = edtAccNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litAHNameSameAsHeirName: TdxLayoutItem
      Parent = grpAHSalutation
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnAccHolderNameSameAsHeirName
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 235
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object sep4: TdxLayoutSeparatorItem
      Parent = grpData
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpAddress
      SizeOptions.Height = 10
      SizeOptions.Width = 23
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object grpHeirDetails: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'Heir Details'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object spc2: TdxLayoutEmptySpaceItem
      Parent = grpAHSalutation
      SizeOptions.Height = 10
      SizeOptions.Width = 76
      CaptionOptions.Text = 'Empty Space Item'
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
