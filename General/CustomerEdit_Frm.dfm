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
    Width = 831
    Height = 676
    ExplicitWidth = 831
    ExplicitHeight = 676
    object btnOK: TcxButton [0]
      Left = 664
      Top = 640
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 37
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [1]
      Left = 745
      Top = 640
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 38
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
      Width = 406
    end
    object edtCoNo: TcxTextEdit [4]
      Left = 110
      Top = 153
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      OnKeyPress = edtCoNoKeyPress
      Width = 406
    end
    object edtTradingAs: TcxTextEdit [5]
      Left = 110
      Top = 206
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 350
    end
    object edtBillTo: TcxTextEdit [6]
      Left = 110
      Top = 237
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 350
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
      Properties.ListSource = LookupDM.dtsCustomerType
      Properties.OnEditValueChanged = lucCustomerTypePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 406
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
      Properties.ListSource = LookupDM.dtsCustomerStatus
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 406
    end
    object cbxIsActive: TcxCheckBox [9]
      Left = 20
      Top = 265
      Caption = 'Is Active (For transactions and reports)'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Transparent = True
    end
    object lucYearEnd: TcxLookupComboBox [10]
      Left = 110
      Top = 333
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
      Properties.ListSource = LookupDM.dtsMonthOfyear
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 406
    end
    object lucTaxOffice: TcxLookupComboBox [11]
      Left = 110
      Top = 383
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
      Properties.ListSource = LookupDM.dtsTaxOffice
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Width = 406
    end
    object lucARMonth: TcxLookupComboBox [12]
      Left = 110
      Top = 408
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
      Properties.ListSource = LookupDM.dtsARMonthOfyear
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Width = 406
    end
    object edtTaxNo: TcxTextEdit [13]
      Left = 110
      Top = 358
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      OnKeyPress = edtCoNoKeyPress
      Width = 406
    end
    object lucVATOffice: TcxLookupComboBox [14]
      Left = 110
      Top = 526
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
      Properties.ListSource = LookupDM.dtsVATOffice
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Width = 406
    end
    object lucVATMonth: TcxLookupComboBox [15]
      Left = 110
      Top = 501
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
      Properties.ListSource = LookupDM.dtsVATMonth
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Width = 406
    end
    object lucVATCountry: TcxLookupComboBox [16]
      Left = 110
      Top = 551
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
      Properties.ListSource = LookupDM.dtsCountry
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Width = 406
    end
    object edtVATNo: TcxTextEdit [17]
      Left = 110
      Top = 476
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      OnKeyPress = edtCoNoKeyPress
      Width = 406
    end
    object edtVATCustomsCode: TcxTextEdit [18]
      Left = 110
      Top = 576
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      OnKeyPress = edtCoNoKeyPress
      Width = 406
    end
    object edtPAYENo: TcxTextEdit [19]
      Left = 645
      Top = 78
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtSDLNo: TcxTextEdit [20]
      Left = 645
      Top = 128
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtWCNo: TcxTextEdit [21]
      Left = 645
      Top = 153
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 25
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtEFiling: TcxTextEdit [22]
      Left = 645
      Top = 203
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      Width = 150
    end
    object edtEFUserName: TcxTextEdit [23]
      Left = 645
      Top = 228
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 28
      Width = 150
    end
    object edtEFPassword: TcxTextEdit [24]
      Left = 645
      Top = 253
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 29
      Width = 150
    end
    object dteARCompletionDate: TcxDateEdit [25]
      Left = 645
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
      TabOrder = 26
      Width = 150
    end
    object edtPastelAccCode: TcxTextEdit [26]
      Left = 645
      Top = 321
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 30
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object edtVBTaxAccCode: TcxTextEdit [27]
      Left = 645
      Top = 346
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 31
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object cbxProvTaxPayer: TcxCheckBox [28]
      Left = 540
      Top = 371
      Caption = 'Prov Tax Payer'
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
    object cbxLivingWill: TcxCheckBox [29]
      Left = 540
      Top = 396
      Caption = 'Living Will'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Transparent = True
    end
    object cbxOrganDonor: TcxCheckBox [30]
      Left = 540
      Top = 421
      Caption = 'Organ Donor'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 34
      Transparent = True
    end
    object edtCreated: TcxDateEdit [31]
      Left = 645
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
      TabOrder = 35
      Width = 150
    end
    object edtModified: TcxDateEdit [32]
      Left = 645
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
      TabOrder = 36
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
      Left = 645
      Top = 103
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      OnKeyPress = edtCoNoKeyPress
      Width = 150
    end
    object btnTradingAsSameAsName: TcxButton [37]
      Left = 466
      Top = 203
      Width = 50
      Height = 25
      Action = actTradingAsSameAsName
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object btnBillToSameAsName: TcxButton [38]
      Left = 466
      Top = 234
      Width = 50
      Height = 25
      Action = actBillToSameAsName
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litCustomerName: TdxLayoutItem
      Parent = grpGeneralInfo
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
      CaptionOptions.Text = 'Status'
      Control = lucStatus
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litTradingAs: TdxLayoutItem
      Parent = grpTradingAs
      AlignVert = avCenter
      CaptionOptions.Text = 'Trading As'
      Control = edtTradingAs
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillTo: TdxLayoutItem
      Parent = grpBillTo
      AlignVert = avCenter
      CaptionOptions.Text = 'Bill To'
      Control = edtBillTo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litActive: TdxLayoutItem
      Parent = grpGeneralInfo
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Is Active'
      CaptionOptions.Visible = False
      Control = cbxIsActive
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 246
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object grpGeneralInfo: TdxLayoutGroup
      Parent = grpCustomer
      CaptionOptions.Text = 'Generral Information'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object litCustomerType: TdxLayoutItem
      Parent = grpGeneralInfo
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
      Control = edtCreated
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litModified: TdxLayoutItem
      Parent = grpMiscellaneous
      CaptionOptions.Text = 'Modified'
      Control = edtModified
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
    object grpTradingAs: TdxLayoutGroup
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object litTradingAsSameAsName: TdxLayoutItem
      Parent = grpTradingAs
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnTradingAsSameAsName
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpBillTo: TdxLayoutGroup
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object litBillToSameAsName: TdxLayoutItem
      Parent = grpBillTo
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnBillToSameAsName
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    object actTradingAsSameAsName: TAction
      Caption = 'Same'
      Hint = 'Make Trading As same as company name'
      OnExecute = DoTradingAsSameAsCompanyName
    end
    object actBillToSameAsName: TAction
      Caption = 'Same'
      Hint = 'Make Bill To same as company name'
      OnExecute = DoBillToSameAsCompanyName
    end
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
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipTradingAsSameAsName
        Control = btnTradingAsSameAsName
      end
      item
        ScreenTip = tipBillToSameAsName
        Control = btnBillToSameAsName
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 3000
    Left = 460
    Top = 264
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
    Left = 380
    Top = 265
    PixelsPerInch = 96
    object tipTradingAsSameAsName: TdxScreenTip
      Header.Text = 'Same as Name'
      Description.Text = 'Make Trading As the same as company name'
      Width = 300
    end
    object tipBillToSameAsName: TdxScreenTip
      Header.Text = 'Same as Name'
      Description.Text = 'Make Bill To the same as company name'
      Width = 300
    end
  end
end
