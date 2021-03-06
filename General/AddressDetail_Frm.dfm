inherited AddressDetailFrm: TAddressDetailFrm
  Caption = 'AddressDetailFrm'
  ClientHeight = 497
  ClientWidth = 609
  ExplicitWidth = 615
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 605
    Height = 486
    ExplicitWidth = 605
    ExplicitHeight = 486
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 583
    end
    inherited btnOK: TcxButton
      Left = 438
      Top = 450
      TabOrder = 23
      OnClick = btnOKClick
      ExplicitLeft = 438
      ExplicitTop = 450
    end
    inherited btnCancel: TcxButton
      Left = 519
      Top = 450
      TabOrder = 24
      ExplicitLeft = 519
      ExplicitTop = 450
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 573
      Width = 573
    end
    object edtPhysical1: TcxTextEdit [4]
      Left = 84
      Top = 107
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 175
    end
    object edtPhysical2: TcxTextEdit [5]
      Left = 84
      Top = 134
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 3
      Width = 175
    end
    object edtPhysical3: TcxTextEdit [6]
      Left = 84
      Top = 161
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 4
      Width = 175
    end
    object edtPhysical4: TcxTextEdit [7]
      Left = 84
      Top = 188
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 5
      Width = 175
    end
    object edtPhysicalCode: TcxTextEdit [8]
      Left = 84
      Top = 215
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 6
      Width = 175
    end
    object edtPostal1: TcxTextEdit [9]
      Left = 393
      Top = 107
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 11
      Width = 175
    end
    object edtPostal2: TcxTextEdit [10]
      Left = 393
      Top = 134
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 12
      Width = 175
    end
    object edtPostal3: TcxTextEdit [11]
      Left = 393
      Top = 161
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 13
      Width = 175
    end
    object edtPostal4: TcxTextEdit [12]
      Left = 393
      Top = 188
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 14
      Width = 175
    end
    object edtPostalCode: TcxTextEdit [13]
      Left = 393
      Top = 215
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 15
      Width = 175
    end
    object edtBilling1: TcxTextEdit [14]
      Left = 84
      Top = 285
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 16
      Width = 175
    end
    object edtBilling2: TcxTextEdit [15]
      Left = 84
      Top = 312
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 17
      Width = 175
    end
    object edtBilling3: TcxTextEdit [16]
      Left = 84
      Top = 339
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 18
      Width = 175
    end
    object edtBilling4: TcxTextEdit [17]
      Left = 84
      Top = 366
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 19
      Width = 175
    end
    object edtBillingCode: TcxTextEdit [18]
      Left = 84
      Top = 393
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 20
      Width = 175
    end
    object btnPhysicalToPostal: TcxButton [19]
      Left = 274
      Top = 92
      Width = 40
      Height = 25
      Caption = 'u'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      OnClick = btnPhysicalToPostalClick
    end
    object btnPostalToPhysical: TcxButton [20]
      Left = 274
      Top = 123
      Width = 40
      Height = 25
      Caption = 't'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      TabStop = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      OnClick = btnPostalToPhysicalClick
    end
    object btnPhysicalToBilling: TcxButton [21]
      Left = 274
      Top = 170
      Width = 40
      Height = 25
      Caption = 'q'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TabStop = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      OnClick = btnPhysicalToBillingClick
    end
    object btnBillingToPhysical: TcxButton [22]
      Left = 274
      Top = 201
      Width = 40
      Height = 25
      Caption = 'p'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      TabStop = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      OnClick = btnBillingToPhysicalClick
    end
    object btnBillingToPostal: TcxButton [23]
      Left = 274
      Top = 270
      Width = 40
      Height = 25
      Caption = 'u'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      TabStop = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      OnClick = btnBillingToPostalClick
    end
    object btnPostalToBilling: TcxButton [24]
      Left = 274
      Top = 301
      Width = 40
      Height = 25
      Caption = 't'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
      TabStop = False
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Wingdings 3'
      Font.Style = []
      ParentFont = False
      OnClick = btnPostalToBillingClick
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited grpData: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    inherited grpButtons: TdxLayoutGroup
      Index = 4
    end
    inherited sep01: TdxLayoutSeparatorItem
      Index = 3
    end
    inherited litLegend: TdxLayoutItem
      Visible = False
    end
    object litPhysical1: TdxLayoutItem
      Parent = grpPhysical
      CaptionOptions.Text = 'Line 1'
      Control = edtPhysical1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPhysiclToPostal: TdxLayoutItem
      Parent = grpPhysPostalControl
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnPhysicalToPostal
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPostalToPhysical: TdxLayoutItem
      Parent = grpPhysPostalControl
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnPostalToPhysical
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPhysicalToBilling: TdxLayoutItem
      Parent = grpPhysPostalControl
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnPhysicalToBilling
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpPhysPostalControl
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object litBillingToPhysical: TdxLayoutItem
      Parent = grpPhysPostalControl
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnBillingToPhysical
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litPostal1: TdxLayoutItem
      Parent = grpPostal
      CaptionOptions.Text = 'Line 1'
      Control = edtPostal1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBilling1: TdxLayoutItem
      Parent = grpBillingDetails
      CaptionOptions.Text = 'Line 1'
      Control = edtBilling1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillingToPostal: TdxLayoutItem
      Parent = grpBillingControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnBillingToPostal
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPostalToBilling: TdxLayoutItem
      Parent = grpBillingControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnPostalToBilling
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpPhysical: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'Physical Address'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object grpPostal: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'Postal Address'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      Index = 2
    end
    object grpBilling: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpPhysPostalControl: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grpBillingControls: TdxLayoutGroup
      Parent = grpBilling
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object litPhysical2: TdxLayoutItem
      Parent = grpPhysical
      CaptionOptions.Text = 'Line 2'
      Control = edtPhysical2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPhysical3: TdxLayoutItem
      Parent = grpPhysical
      CaptionOptions.Text = 'Line 3'
      Control = edtPhysical3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPhysical4: TdxLayoutItem
      Parent = grpPhysical
      CaptionOptions.Text = 'Line 4'
      Control = edtPhysical4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litPhysicalCode: TdxLayoutItem
      Parent = grpPhysical
      CaptionOptions.Text = 'Post Code'
      Control = edtPhysicalCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litPostal2: TdxLayoutItem
      Parent = grpPostal
      CaptionOptions.Text = 'Line 2'
      Control = edtPostal2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPostal3: TdxLayoutItem
      Parent = grpPostal
      CaptionOptions.Text = 'Line 3'
      Control = edtPostal3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPostal4: TdxLayoutItem
      Parent = grpPostal
      CaptionOptions.Text = 'Line 4'
      Control = edtPostal4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litPostalCode: TdxLayoutItem
      Parent = grpPostal
      CaptionOptions.Text = 'Post Code'
      Control = edtPostalCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litBilling2: TdxLayoutItem
      Parent = grpBillingDetails
      CaptionOptions.Text = 'Line 2'
      Control = edtBilling2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litBilling3: TdxLayoutItem
      Parent = grpBillingDetails
      CaptionOptions.Text = 'Line 3'
      Control = edtBilling3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litBilling4: TdxLayoutItem
      Parent = grpBillingDetails
      CaptionOptions.Text = 'Line 4'
      Control = edtBilling4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litBillingCode: TdxLayoutItem
      Parent = grpBillingDetails
      CaptionOptions.Text = 'Post Cose'
      Control = edtBillingCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grpBillingDetails: TdxLayoutGroup
      Parent = grpBilling
      CaptionOptions.Text = 'Billing Address'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      Index = 0
    end
    object spc2: TdxLayoutEmptySpaceItem
      Parent = grpPhysPostalControl
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object spc3: TdxLayoutEmptySpaceItem
      Parent = grpBillingControls
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
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
  inherited styHintController: TcxHintStyleController
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipPhysicalTopostal
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
  end
  inherited repScreenTip: TdxScreenTipRepository
    PixelsPerInch = 96
    object tipPhysicalTopostal: TdxScreenTip
      Header.Text = 'Physica lT opostal'
      Description.Text = 'Make postal address same as physical address'
      Width = 310
    end
    object tipPostalToPhysical: TdxScreenTip
      Header.Text = 'Postal To Physical'
      Description.Text = 'make physical address same as postal address'
      Width = 310
    end
    object tipPhysicalToBilling: TdxScreenTip
      Header.Text = 'Physical To Billing'
      Description.Text = 'Make billing address same as physical address'
      Width = 310
    end
    object tipBillingToPhysical: TdxScreenTip
      Header.Text = 'Billing To Physical'
      Description.Text = 'Make physical address same as billing address'
      Width = 310
    end
    object tipBillingToPostal: TdxScreenTip
      Header.Text = 'Billing To Postal'
      Description.Text = 'Make postal address same as billing address'
      Width = 310
    end
    object tipPostalToBilling: TdxScreenTip
      Header.Text = 'Postal To Billing'
      Description.Text = 'Make billing address same as postal address'
      Width = 310
    end
  end
  inherited stySubTitle: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styHeaderFont: TcxEditStyleController
    PixelsPerInch = 96
  end
end
